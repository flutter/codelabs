// Copyright 2020 The Flutter Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// ignore_for_file: avoid_print

import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';

import '../model/product.dart';

class ShopInventoryProvider {
  final CollectionReference _productsCollection =
      FirebaseFirestore.instance.collection('products');

  final storageRef = FirebaseStorage.instance.ref();

  late Stream<List<Product>> shopInventory;

  final StreamController<List<Product>> _inventoryStreamController =
      StreamController();

  ShopInventoryProvider() {
    shopInventory = _inventoryStreamController.stream;
    _initInventoryListener();
  }

  // a truly wild thing is happening here. please scrutinize
  void _initInventoryListener() {
    // Listen to Firestore collection for changes
    _productsCollection.snapshots().listen((querySnapshot) async {
      // Stream is necessary in order to use "asyncMap"
      final List<Product> products =
          await Stream.fromIterable(querySnapshot.docs)
              .asyncMap((documentSnapshot) async {
        final product =
            (documentSnapshot as DocumentSnapshot<Map<String, dynamic>>).data();
        final imageNames = (product?['images'] as List).cast<String>();

        final urls = await Future.wait(imageNames.map((i) {
          print(i);
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
    try {
      for (var p in products) {
        // if this is a brand new object, generate the ID with
        // firestore, before updating the document.
        if (p.id == null) {
          final newDocument = _productsCollection.doc();
          p.id = newDocument.id;
        }

        await _productsCollection.doc(p.id).set(p.toJson());
      }
    } on FirebaseException catch (e) {
      print('Firebase Exception: $e');
    }
  }
}
