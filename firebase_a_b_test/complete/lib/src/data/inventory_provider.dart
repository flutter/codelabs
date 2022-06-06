// ignore_for_file: avoid_print

import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';

import '../model/product.dart';

class ShopInventoryProvider {
  final CollectionReference _productsCollection =
      FirebaseFirestore.instance.collection("products");

  late Stream<List<Product>> shopInventory;

  final StreamController<List<Product>> _inventoryStreamController =
      StreamController();

  ShopInventoryProvider() {
    shopInventory = _inventoryStreamController.stream;

    _productsCollection.snapshots().listen((QuerySnapshot event) {
      final products = event.docs.map((DocumentSnapshot<Object?> snapshot) {
        return Product.fromFirestore(
            snapshot as DocumentSnapshot<Map<String, dynamic>>);
      }).toList();

      _inventoryStreamController.add(products);
    });
  }

  void writeProductsToFirestore(List<Product> products) async {
    try {
      for (var p in products) {
        // if this is a brand new object, generate the ID with
        // firestore, before updating the document.
        if (p.id == null) {
          final newDocument = _productsCollection.doc();
          p.id = newDocument.id;
        }

        _productsCollection.doc(p.id).set(p.toJson());
      }
    } on FirebaseException catch (e) {
      print('Firebase Exception: $e');
    }
  }
}
