// Copyright 2022 The Flutter Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// ignore_for_file: avoid_print, unnecessary_cast

import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';

import '../model/product.dart';

class ShopInventoryProvider {
  ShopInventoryProvider() {
    shopInventory = _inventoryStreamController.stream;
    _initInventoryListener();
  }

  final FirebaseFirestore firestore = FirebaseFirestore.instance;
  late Stream<List<Product>> shopInventory;

  // ignore: close_sinks
  final StreamController<List<Product>> _inventoryStreamController =
      StreamController();

  void _initInventoryListener() {}
}
