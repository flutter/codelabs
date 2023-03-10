import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:in_app_purchase/in_app_purchase.dart';

import '../constants.dart';
import '../main.dart';
import '../model/purchasable_product.dart';
import '../model/store_state.dart';
import 'dash_counter.dart';

class DashPurchases extends ChangeNotifier {
  DashCounter counter;
  StoreState storeState = StoreState.loading;
  late StreamSubscription<List<PurchaseDetails>> _subscription;
  List<PurchasableProduct> products = [];

  bool get beautifiedDash => _beautifiedDashUpgrade;
  // ignore: prefer_final_fields
  bool _beautifiedDashUpgrade = false;
  final iapConnection = IAPConnection.instance;

  DashPurchases(this.counter) {
    final purchaseUpdated = iapConnection.purchaseStream;
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
    product.status = ProductStatus.pending;
    notifyListeners();
    await Future<void>.delayed(const Duration(seconds: 5));
    product.status = ProductStatus.purchased;
    notifyListeners();
    await Future<void>.delayed(const Duration(seconds: 5));
    product.status = ProductStatus.purchasable;
    notifyListeners();
  }

  void _onPurchaseUpdate(List<PurchaseDetails> purchaseDetailsList) {
    // Handle purchases here
  }

  void _updateStreamOnDone() {
    _subscription.cancel();
  }

  void _updateStreamOnError(dynamic error) {
    //Handle error here
  }
}
