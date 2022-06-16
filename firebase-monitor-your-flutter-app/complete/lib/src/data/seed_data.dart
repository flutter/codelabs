// Copyright 2022 The Flutter Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

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
