// Copyright 2022 The Flutter Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'dart:math';

import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:firebase_remote_config/firebase_remote_config.dart';

import '../model/product.dart';

// This data is seeded in the Firebase emulator for you ahead of the start of
// the codelab. But, often during development, data may get "messed up" while
// we tinker with the project. This seed data has been left here in case you'd
// like to clear all data in Firestore and reseed the database.
// Otherwise, you should use the emulator suite seeds by running the following:
//   $ firebase emulators:start --import ../emulator_seeds/
final List<Product> inventorySeed = [
  Product(
    name: 'Dash Holiday Sweater',
    price: 50,
    images: ['dash_sweatshirt_front.png', 'dash_sweatshirt_back.png'],
    brand: 'Dash Goods',
  ),
  Product(
    name: 'Dash T Shirt',
    price: 20,
    images: ['dash_tshirt_front.png', 'dash_tshirt_back.png'],
    brand: 'Dash Goods',
  ),
  Product(
    name: 'Flutter Sweater',
    price: 50,
    images: ['sweater-front.png', 'sweater-back.png'],
    brand: 'Dash Goods',
  ),
  Product(
    name: 'Flutter T Shirt',
    price: 50,
    images: ['t-shirt-front.png', 't-shirt-back.png'],
    brand: 'Dash Goods',
  ),
];

final rand = Random();

void seedAnalytics() {
  print("SEEDING:");
  try {
    for (var i = 0; i < 10; i++) {
      final variant =
          FirebaseRemoteConfig.instance.getString('defaultShirtView');
      final product = inventorySeed[rand.nextInt(inventorySeed.length)];

      FirebaseAnalytics.instance.logAddToCart(
        items: [
          AnalyticsEventItem(
            itemBrand: product.brand,
            itemName: product.name,
            price: product.price,
            itemId: product.id,
            itemVariant: variant,
          )
        ],
      );

      final product2 = inventorySeed[rand.nextInt(inventorySeed.length)];
      FirebaseAnalytics.instance.logViewItem(currency: 'USD', items: [
        AnalyticsEventItem(
          itemId: product2.id,
          price: product2.price,
          itemName: product2.name,
          itemBrand: product2.brand,
          itemVariant: variant,
        )
      ]);
    }
  } catch (e, s) {
    print(e);
  }
}
