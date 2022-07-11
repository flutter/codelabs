// Copyright 2020 The Flutter Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';

import '../data/inventory_provider.dart';
import '../model/product.dart';
import '../widgets/whitespace.dart';
import 'product_details_page.dart';

class ProductsListPage extends StatelessWidget {
  const ProductsListPage({
    super.key,
    required this.inventoryProvider,
  });

  final ShopInventoryProvider inventoryProvider;

  void _openProductPage(BuildContext context, Product product) {
    // TODO: log view item with correct A/B test variant string
    Navigator.of(context).push<MaterialPageRoute<ProductDetailsPage>>(
      MaterialPageRoute(
        builder: (context) => ProductDetailsPage(
          product: product,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dash Store'),
      ),
      body: StreamBuilder<List<Product>>(
        initialData: const <Product>[],
        stream: inventoryProvider.shopInventory,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          }
          final products = snapshot.data!;
          return Center(
            child: GridView.builder(
              itemCount: products.length,
              padding: const EdgeInsets.all(10.0),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                mainAxisSpacing: 20.0,
                crossAxisSpacing: 10.0,
                crossAxisCount: 2,
              ),
              itemBuilder: (context, idx) {
                final p = products[idx];
                return GestureDetector(
                  onTap: () => _openProductPage(context, p),
                  child: ProductTile(
                    image: p.defaultImageUrl,
                    productName: p.name,
                    price: p.price,
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}

class ProductTile extends StatelessWidget {
  const ProductTile(
      {required this.image,
      required this.productName,
      required this.price,
      super.key});

  final String image;
  final String productName;
  final int price;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          SizedBox(
            width: 500,
            height: 175,
            child: Hero(
              tag: image,
              child: Image.network(
                image,
                fit: BoxFit.cover,
              ),
            ),
          ),
          const Whitespace(
            height: 10,
          ),
          Text(
            productName,
            style: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
            ),
          ),
          const Whitespace(
            height: 10,
          ),
          Expanded(
            child: Text(
              '\$${price.toString()}',
              textAlign: TextAlign.left,
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
                color: Theme.of(context).colorScheme.secondary,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
