// Copyright 2022 The Flutter Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:firebase_remote_config/firebase_remote_config.dart';
import 'package:flutter/material.dart';

import '../model/product.dart';
import '../widgets/whitespace.dart';

class ProductDetailsPage extends StatelessWidget {
  const ProductDetailsPage({
    super.key,
    required this.product,
  });

  final Product product;

  void _addToBag() {
    final variant = FirebaseRemoteConfig.instance.getString('defaultShirtView');

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

    // add item to cart
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          child: Stack(
            children: [
              Column(
                children: [
                  Hero(
                    tag: product.images.first,
                    child: Container(
                      constraints: const BoxConstraints(
                        maxWidth: 300.0,
                      ),
                      child: Image(
                        image: NetworkImage(product.defaultImageUrl),
                        fit: BoxFit.fitWidth,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        for (var i in product.images)
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: SizedBox(
                              width: 100.0,
                              child: Image(
                                image: NetworkImage(i),
                                fit: BoxFit.contain,
                              ),
                            ),
                          )
                      ],
                    ),
                  ),
                  Center(
                    child: Text(product.name),
                  ),
                  const Whitespace(height: 5),
                  Center(
                    child: Text(
                      '\$${product.price.toString()}',
                      style: TextStyle(
                        color: Theme.of(context).colorScheme.secondary,
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SizedBox(
                      width: 200,
                      child: ElevatedButton(
                        onPressed: _addToBag,
                        child: Center(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: const [
                                Text(
                                  'Add to Bag',
                                  style: TextStyle(fontSize: 20.0),
                                ),
                                Icon(Icons.shopping_cart),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Baseline(
                  baseline: MediaQuery.of(context).viewPadding.top + 15,
                  baselineType: TextBaseline.alphabetic,
                  child: IconButton(
                    onPressed: () => {Navigator.of(context).pop()},
                    icon: const Icon(Icons.arrow_back),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      onWillPop: () async => false,
    );
  }
}
