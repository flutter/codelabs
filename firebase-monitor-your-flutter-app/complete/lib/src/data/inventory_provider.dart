// Copyright 2022 The Flutter Authors. All rights reserved.
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

  final FirebaseStorage storage = FirebaseStorage.instance;
  final FirebaseFirestore firestore = FirebaseFirestore.instance;
  late Stream<List<Product>> shopInventory;

  final StreamController<List<Product>> _inventoryStreamController =
      StreamController();

  void _initInventoryListener() {
    final productsCollection = firestore.collection('products');
    final storageRef = storage.ref();

    // Listen to Firestore collection for changes
    productsCollection.snapshots().listen((querySnapshot) async {
      // Stream is necessary in order to use "asyncMap"
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

  // this is used solely to seed the database
  Future<void> writeProductsToFirestore(List<Product> products) async {
    final productsCollection = firestore.collection('products');

    try {
      for (var p in products) {
        // if this is a brand new object, generate the ID with
        // firestore, before updating the document.
        if (p.id == null) {
          final newDocument = productsCollection.doc();
          p.id = newDocument.id;
        }

        await productsCollection.doc(p.id).set(p.toJson());
      }
    } on FirebaseException catch (e) {
      print('Firebase Exception: $e');
    }
  }
}
