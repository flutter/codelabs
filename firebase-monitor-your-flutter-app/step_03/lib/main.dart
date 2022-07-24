// Copyright 2022 The Flutter Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';

import 'firebase_options.dart';
import 'src/data/inventory_provider.dart';
import 'src/pages/products_list_page.dart';

void main() async {
  // initialize Firebase
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  // initialize Emulator Suite - this codelab uses emulators where possible
  // Workaround for bug using Firestore emulator on the Web
  // see: https://github.com/firebase/flutterfire/issues/6216
  try {
    FirebaseFirestore.instance.useFirestoreEmulator('localhost', 8080);
    await FirebaseStorage.instance.useStorageEmulator('localhost', 9199);
    await FirebaseAuth.instance.useAuthEmulator('localhost', 9099);
  } catch (e) {
    // swallow error, as this is only necessary the first time
  }

  runApp(
    CoolShopApp(
      shopInventoryProvider: ShopInventoryProvider(),
    ),
  );
}

class CoolShopApp extends StatelessWidget {
  const CoolShopApp({super.key, required this.shopInventoryProvider});

  final ShopInventoryProvider shopInventoryProvider;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/': (context) => ProductsListPage(
              inventoryProvider: shopInventoryProvider,
            ),
      },
    );
  }
}
