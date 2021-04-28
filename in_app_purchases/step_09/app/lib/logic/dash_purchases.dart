import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:dashclicker/logic/dash_counter.dart';
import 'package:dashclicker/model/purchasable_product.dart';
import 'package:dashclicker/model/store_state.dart';
import 'package:in_app_purchase/in_app_purchase.dart';

import 'firebase_notifier.dart';

const storeKeyConsumable = 'dash_consumable_2k';
const storeKeyUpgrade = 'dash_upgrade_3d';
const storeKeySubscription = 'dash_subscription_doubler';

class DashPurchases extends ChangeNotifier {
  DashCounter counter;
  FirebaseNotifier firebaseNotifier;
  StoreState storeState = StoreState.loading;
  late StreamSubscription<List<PurchaseDetails>> _subscription;
  List<PurchasableProduct> products = [];

  bool get beautifiedDash => _beautifiedDashUpgrade;
  bool _beautifiedDashUpgrade = false;

  DashPurchases(this.counter, this.firebaseNotifier) {
    final purchaseUpdated =
        InAppPurchaseConnection.instance.purchaseUpdatedStream;
    _subscription = purchaseUpdated.listen(
      _onPurchaseUpdate,
      onDone: _updateStreamOnDone,
      onError: _updateStreamOnError,
    );
    loadPurchases();
  }

  Future<void> loadPurchases() async {
    final available = await InAppPurchaseConnection.instance.isAvailable();
    if (!available) {
      storeState = StoreState.notAvailable;
      notifyListeners();
      return;
    }
    try{
      await firebaseNotifier.functions;
    }catch(e){
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
    _subscription.cancel();
    super.dispose();
  }

  Future<void> buy(PurchasableProduct product) async {
    final purchaseParam = PurchaseParam(productDetails: product.productDetails);
    switch (product.id) {
      case storeKeyConsumable:
        await InAppPurchaseConnection.instance
            .buyConsumable(purchaseParam: purchaseParam);
        break;
      case storeKeySubscription:
      case storeKeyUpgrade:
        await InAppPurchaseConnection.instance
            .buyNonConsumable(purchaseParam: purchaseParam);
        break;
      default:
        throw ArgumentError.value(
            product.productDetails, '${product.id} is not a known product');
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
        switch (purchaseDetails.productID) {
          case storeKeySubscription:
            counter.applyPaidMultiplier();
            break;
          case storeKeyConsumable:
            counter.addBoughtDashes(1000);
            break;
          case storeKeyUpgrade:
            _beautifiedDashUpgrade = true;
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
    //Handle error here
  }
}
