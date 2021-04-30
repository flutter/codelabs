import 'dart:async';

import 'package:dashclicker/constants.dart';
import 'package:dashclicker/main.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:dashclicker/logic/dash_counter.dart';
import 'package:dashclicker/model/purchasable_product.dart';
import 'package:dashclicker/model/store_state.dart';
import 'package:in_app_purchase/in_app_purchase.dart';

class DashPurchases extends ChangeNotifier {
  DashCounter counter;
  StoreState storeState = StoreState.loading;
  late StreamSubscription<List<PurchaseDetails>> _subscription;
  List<PurchasableProduct> products = [];

  bool get beautifiedDash => _beautifiedDashUpgrade;
  bool _beautifiedDashUpgrade = false;
  final iapConnection = IAPConnection.instance;

  DashPurchases(this.counter) {
    final purchaseUpdated = iapConnection.purchaseUpdatedStream;
    _subscription = purchaseUpdated.listen(
      _onPurchaseUpdate,
      onDone: _updateStreamOnDone,
      onError: _updateStreamOnError,
    );
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

  void _onPurchaseUpdate(List<PurchaseDetails> purchaseDetailsList) {
    purchaseDetailsList.forEach(_handlePurchase);
    notifyListeners();
  }

  void _handlePurchase(PurchaseDetails purchaseDetails) {
    if (purchaseDetails.status == PurchaseStatus.purchased) {
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

    if (purchaseDetails.pendingCompletePurchase) {
      iapConnection.completePurchase(purchaseDetails);
    }
  }

  void _updateStreamOnDone() {
    _subscription.cancel();
  }

  void _updateStreamOnError(dynamic error) {
    //Handle error here
  }
}
