// ignore_for_file: avoid_print

import 'dart:async';
import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:in_app_purchase/in_app_purchase.dart';

import '../constants.dart';
import '../main.dart';
import '../model/purchasable_product.dart';
import '../model/store_state.dart';
import '../repo/iap_repo.dart';
import 'dash_counter.dart';
import 'firebase_notifier.dart';

class DashPurchases extends ChangeNotifier {
  DashCounter counter;
  FirebaseNotifier firebaseNotifier;
  IAPRepo iapRepo;
  StoreState storeState = StoreState.loading;
  late StreamSubscription<List<PurchaseDetails>> _subscription;
  List<PurchasableProduct> products = [];

  bool get beautifiedDash => _beautifiedDashUpgrade;
  bool _beautifiedDashUpgrade = false;
  final iapConnection = IAPConnection.instance;

  DashPurchases(this.counter, this.firebaseNotifier, this.iapRepo) {
    final purchaseUpdated = iapConnection.purchaseStream;
    _subscription = purchaseUpdated.listen(
      _onPurchaseUpdate,
      onDone: _updateStreamOnDone,
      onError: _updateStreamOnError,
    );
    iapRepo.addListener(purchasesUpdate);
    loadPurchases();
  }

  Future<void> loadPurchases() async {
    final available = await iapConnection.isAvailable();
    if (!available) {
      storeState = StoreState.notAvailable;
      notifyListeners();
      return;
    }

    const ids = <String>{
      storeKeyConsumable,
      storeKeySubscription,
      storeKeyUpgrade,
    };
    final response = await iapConnection.queryProductDetails(ids);
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
    final purchaseParam = PurchaseParam(productDetails: product.productDetails);
    switch (product.id) {
      case storeKeyConsumable:
        await iapConnection.buyConsumable(purchaseParam: purchaseParam);
        break;
      case storeKeySubscription:
      case storeKeyUpgrade:
        await iapConnection.buyNonConsumable(purchaseParam: purchaseParam);
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
        // Apply changes locally
        switch (purchaseDetails.productID) {
          case storeKeySubscription:
            counter.applyPaidMultiplier();
            break;
          case storeKeyConsumable:
            counter.addBoughtDashes(2000);
            break;
          case storeKeyUpgrade:
            _beautifiedDashUpgrade = true;
            break;
        }
      }
    }

    if (purchaseDetails.pendingCompletePurchase) {
      await iapConnection.completePurchase(purchaseDetails);
    }
  }

  Future<bool> _verifyPurchase(PurchaseDetails purchaseDetails) async {
    final url = Uri.parse('http://$serverIp:8080/verifypurchase');
    const headers = {
      'Content-type': 'application/json',
      'Accept': 'application/json',
    };
    final response = await http.post(
      url,
      body: jsonEncode({
        'source': purchaseDetails.verificationData.source,
        'productId': purchaseDetails.productID,
        'verificationData':
            purchaseDetails.verificationData.serverVerificationData,
        'userId': firebaseNotifier.user?.uid,
      }),
      headers: headers,
    );
    if (response.statusCode == 200) {
      print('Successfully verified purchase');
      return true;
    } else {
      print('failed request: $response');
      return false;
    }
  }

  void _updateStreamOnDone() {
    _subscription.cancel();
  }

  void _updateStreamOnError(dynamic error) {
    print(error);
  }

  void purchasesUpdate() {
    var subscriptions = <PurchasableProduct>[];
    var upgrades = <PurchasableProduct>[];
    // Get a list of purchasable products for the subscription and upgrade.
    // This should be 1 per type.
    if (products.isNotEmpty) {
      subscriptions = products
          .where((element) => element.productDetails.id == storeKeySubscription)
          .toList();
      upgrades = products
          .where((element) => element.productDetails.id == storeKeyUpgrade)
          .toList();
    }

    // Set the subscription in the counter logic and show/hide purchased on the
    // purchases page.
    if (iapRepo.hasActiveSubscription) {
      counter.applyPaidMultiplier();
      for (final element in subscriptions) {
        _updateStatus(element, ProductStatus.purchased);
      }
    } else {
      counter.removePaidMultiplier();
      for (final element in subscriptions) {
        _updateStatus(element, ProductStatus.purchasable);
      }
    }

    // Set the dash beautifier and show/hide purchased on
    // the purchases page.
    if (iapRepo.hasUpgrade != _beautifiedDashUpgrade) {
      _beautifiedDashUpgrade = iapRepo.hasUpgrade;
      for (final element in upgrades) {
        _updateStatus(
            element,
            _beautifiedDashUpgrade
                ? ProductStatus.purchased
                : ProductStatus.purchasable);
      }
      notifyListeners();
    }
  }

  void _updateStatus(PurchasableProduct product, ProductStatus status) {
    if (product.status != status) {
      product.status = status;
      notifyListeners();
    }
  }
}
