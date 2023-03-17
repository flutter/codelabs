import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../model/purchasable_product.dart';
import '../model/store_state.dart';
import 'dash_counter.dart';

class DashPurchases extends ChangeNotifier {
  DashCounter counter;
  StoreState storeState = StoreState.available;
  List<PurchasableProduct> products = [
    PurchasableProduct(
      'Spring is in the air',
      'Many dashes flying out from their nests',
      '\$0.99',
    ),
    PurchasableProduct(
      'Jet engine',
      'Doubles you clicks per second for a day',
      '\$1.99',
    ),
  ];

  bool get beautifiedDash => _beautifiedDashUpgrade;
  // ignore: prefer_final_fields
  bool _beautifiedDashUpgrade = false;

  DashPurchases(this.counter);

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
}
