import 'dart:async';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:dashclicker/logic/dash_counter.dart';
import 'package:dashclicker/logic/firebase_notifier.dart';
import 'package:dashclicker/model/purchasable_product.dart';
import 'package:dashclicker/model/store_state.dart';
import 'package:dashclicker/repo/iap_repo.dart';
import 'package:in_app_purchase/in_app_purchase.dart';

const storeKeyConsumable = 'consumable';
const storeKeySubscription = 'subscription_silver1';

class DashPurchases extends ChangeNotifier {
  DashCounter counter;
  FirebaseNotifier firebaseNotifier;
  IAPRepo iapRepo;
  StoreState storeState = StoreState.notAvailable;
  late StreamSubscription<List<PurchaseDetails>> _subscription;
  List<PurchasableProduct> products = [];

  DashPurchases(this.counter, this.firebaseNotifier, this.iapRepo) {
    final purchaseUpdated =
        InAppPurchaseConnection.instance.purchaseUpdatedStream;
    _subscription = purchaseUpdated.listen(
      _onPurchaseUpdate,
      onDone: _updateStreamOnDone,
      onError: _updateStreamOnError,
    );
    iapRepo.addListener(purchasesUpdate);
    loadPurchases();
  }

  Future<void> loadPurchases() async {
    final available = await InAppPurchaseConnection.instance.isAvailable();
    if (!available) {
      storeState = StoreState.notAvailable;
      notifyListeners();
      return;
    }

    try {
      await Firebase.initializeApp();
    } catch (e) {
      storeState = StoreState.notAvailable;
      notifyListeners();
      return;
    }

    const ids = <String>{storeKeyConsumable, storeKeySubscription};
    final response =
        await InAppPurchaseConnection.instance.queryProductDetails(ids);
    response.notFoundIDs.forEach((element) {
      print('Purchase $element not found');
    });
    products =
        response.productDetails.map((e) => PurchasableProduct(e)).toList();
    storeState = StoreState.available;
    notifyListeners();
  }

  @override
  void dispose() {
    iapRepo.removeListener(purchasesUpdate);
    _subscription.cancel();
    super.dispose();
  }

  Future<void> buy(PurchasableProduct product) async {
    var productDetails = product.productDetails;
    final purchaseParam = PurchaseParam(productDetails: productDetails);
    switch (productDetails.id) {
      case storeKeyConsumable:
        await InAppPurchaseConnection.instance
            .buyConsumable(purchaseParam: purchaseParam);
        break;
      case storeKeySubscription:
        await InAppPurchaseConnection.instance
            .buyNonConsumable(purchaseParam: purchaseParam);
        break;
      default:
        throw ArgumentError.value(
            productDetails, '${productDetails.id} is not a known product');
    }
  }

  Future<void> _onPurchaseUpdate(
      List<PurchaseDetails> purchaseDetailsList) async {
    for (var purchaseDetails in purchaseDetailsList) {
      await _handlePurchase(purchaseDetails);
    }
    notifyListeners();
  }

  Future<void> _handlePurchase(PurchaseDetails purchaseDetails) async {
    if (purchaseDetails.status == PurchaseStatus.purchased) {
      // Send to server
      var validPurchase = await _verifyPurchase(purchaseDetails);

      if (validPurchase) {
        // Apply changes locally
        switch (purchaseDetails.productID) {
          case storeKeySubscription:
            counter.applyPaidMultiplier();
            break;
          case storeKeyConsumable:
            counter.addBoughtDashes(1000);
            break;
        }
      }
    }

    if (purchaseDetails.pendingCompletePurchase) {
      await InAppPurchaseConnection.instance.completePurchase(purchaseDetails);
    }
  }

  Future<bool> _verifyPurchase(PurchaseDetails purchaseDetails) async {
    var functions = await firebaseNotifier.functions;
    final callable = functions.httpsCallable('verifyPurchase');
    final results = await callable({
      'source':
          purchaseDetails.verificationData.source.toString().split('.')[1],
      'verificationData':
          purchaseDetails.verificationData.serverVerificationData,
      'productId': purchaseDetails.productID,
    });
    return results.data as bool;
  }

  void _updateStreamOnDone() {
    _subscription.cancel();
  }

  void _updateStreamOnError(dynamic error) {
    print(error);
  }

  void purchasesUpdate() {
    var subscriptions = <PurchasableProduct>[];
    if (products.isNotEmpty) {
      subscriptions = products
          .where((element) => element.productDetails.id == storeKeySubscription)
          .toList();
    }
    if (iapRepo.hasActiveSubscription) {
      counter.applyPaidMultiplier();
      subscriptions.forEach(
          (element) => _updateStatus(element, ProductStatus.purchased));
    } else {
      counter.removePaidMultiplier();
      subscriptions.forEach(
          (element) => _updateStatus(element, ProductStatus.purchasable));
    }
  }

  void _updateStatus(PurchasableProduct product, ProductStatus status) {
    if (product.status != ProductStatus.purchased) {
      product.status = ProductStatus.purchased;
      notifyListeners();
    }
  }
}
