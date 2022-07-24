// Copyright 2020 The Flutter Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import '../model/product.dart';

// This data should be imported via running the Firebase emulator suite with the --import flag
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
