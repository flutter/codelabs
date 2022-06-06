import 'package:flutter/material.dart';
import 'package:flutter_abtest/src/pages/products_list_page.dart';

class CoolShopApp extends StatelessWidget {
  const CoolShopApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        "/": (BuildContext context) => ProductsListPage(),
      },
    );
  }
}
