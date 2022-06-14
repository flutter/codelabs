// ignore_for_file: avoid_print

import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';

import '../model/product.dart';

class ShopInventoryProvider {
  final CollectionReference _productsCollection =
      FirebaseFirestore.instance.collection("products");

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
    _productsCollection.snapshots().listen((QuerySnapshot event) async {
      // Stream is necessary in order to use "asyncMap"
      final List<Product> products = await Stream.fromIterable(event.docs)
          .asyncMap((DocumentSnapshot snapshot) async {
        final product =
            (snapshot as DocumentSnapshot<Map<String, dynamic>>).data();
        final imageNames = (product?['images'] as List).cast<String>();

        final urls = await Future.wait(imageNames.map((String i) {
          print(i);
          return storageRef.child(i).getDownloadURL();
        }));
        return Product(
          name: product?['name'],
          price: product?['price'],
          images: urls,
          brand: product?['brand'],
        );
      }).toList();

      _inventoryStreamController.add(products);
    });
  }

  // this is used solely to seed the database
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
