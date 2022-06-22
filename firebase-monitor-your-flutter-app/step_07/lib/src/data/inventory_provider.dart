// Copyright 2020 The Flutter Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// ignore_for_file: avoid_print, unnecessary_cast

import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';

import '../model/product.dart';

class ShopInventoryProvider {
  ShopInventoryProvider() {
    shopInventory = _inventoryStreamController.stream;
    _initInventoryListener();
  }

  final FirebaseFirestore firestore = FirebaseFirestore.instance;

  late Stream<List<Product>> shopInventory;

  final StreamController<List<Product>> _inventoryStreamController =
      StreamController();

  void _initInventoryListener() {
    final storageRef = FirebaseStorage.instance.ref();
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

        final urls = await Future.wait(imageNames.map((i) {
          return storageRef.child(i).getDownloadURL();
        }));

        return Product(
          name: product!['name'] as String,
          price: product['price'] as int,
          images: urls,
          brand: product['brand'] as String,
        );
      }).toList();

      _inventoryStreamController.add(products);
    });
  }
}
