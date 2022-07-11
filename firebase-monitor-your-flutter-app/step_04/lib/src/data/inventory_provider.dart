// Copyright 2020 The Flutter Authors. All rights reserved.
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

  void _initInventoryListener() {
    final productsCollection = firestore.collection('products');
    productsCollection.snapshots().listen((querySnapshot) async {
      // Creating a new Stream.fromIterable is necessary
      // in order to use "asyncMap"
      final List<Product> products =
          await Stream.fromIterable(querySnapshot.docs)
              .asyncMap((documentSnapshot) async {
        final product =
            (documentSnapshot as DocumentSnapshot<Map<String, dynamic>>).data();
        final imageNames = (product?['images'] as List).cast<String>();

        return Product(
          name: product!['name'] as String,
          price: product['price'] as int,
          images: imageNames,
          brand: product['brand'] as String,
        );
      }).toList();

      _inventoryStreamController.add(products);
    });
  }
}
