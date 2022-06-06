import 'package:flutter/material.dart';

import '../model/product.dart';
import '../widgets/whitespace.dart';

class ProductDetailsPage extends StatelessWidget {
  const ProductDetailsPage({
    Key? key,
    required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    final remainingImages =
        product.images.getRange(1, product.images.length - 1).toList();

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
                    child: Image(
                        image: AssetImage(product.images.first),
                        fit: BoxFit.fitWidth),
                  ),
                  Row(
                    children: [
                      for (var i in remainingImages)
                        Image(
                          image: AssetImage(i),
                        )
                    ],
                  ),
                  Center(
                    child: Text(product.name),
                  ),
                  const Whitespace(height: 5),
                  Center(
                    child: Text(
                      "\$${product.price.toString()}",
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
                        onPressed: () {},
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
