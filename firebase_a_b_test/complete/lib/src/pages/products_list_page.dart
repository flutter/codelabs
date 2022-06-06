import 'package:flutter/material.dart';
import 'package:flutter_abtest/src/data/inventory_provider.dart';

import '../model/product.dart';
import '../widgets/whitespace.dart';
import 'product_details_page.dart';

class ProductsListPage extends StatelessWidget {
  ProductsListPage({Key? key}) : super(key: key);

  final ShopInventoryProvider inventoryProvider = ShopInventoryProvider();

  void _openProductPage(BuildContext context, Product product) {
    Navigator.of(context).push(
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
              return const CircularProgressIndicator();
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
                itemBuilder: (BuildContext context, int idx) {
                  final p = products[idx];
                  return GestureDetector(
                    onTap: () => _openProductPage(context, p),
                    child: ProductTile(
                      image: p.images.first,
                      productName: p.name,
                      price: p.price,
                    ),
                  );
                },
              ),
            );
          }),
    );
  }
}

class ProductTile extends StatelessWidget {
  const ProductTile(
      {required this.image,
      required this.productName,
      required this.price,
      Key? key})
      : super(key: key);

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
              child: Image(
                image: AssetImage(image),
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
              "\$${price.toString()}",
              textAlign: TextAlign.left,
              style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: Theme.of(context).colorScheme.secondary),
            ),
          ),
        ],
      ),
    );
  }
}
