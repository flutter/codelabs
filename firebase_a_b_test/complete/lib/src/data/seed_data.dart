import '../model/product.dart';

// this is seed data, but hopefully it won't be necessary if the emulator import/exoirt wirjs
final List<Product> inventorySeed = [
  Product(
    name: 'Dash Holiday Sweater',
    price: 50,
    images: ["dash_sweatshirt_front.png", "dash_sweatshirt_back.png"],
    brand: 'Dash Goods',
  ),
  Product(
    name: 'Dash T Shirt',
    price: 20,
    images: ["dash_tshirt_front.png", "dash_tshirt_back.png"],
    brand: 'Dash Goods',
  ),
  Product(
    name: 'Flutter Sweater',
    price: 50,
    images: ["sweater-front.png", "sweater-back.png"],
    brand: 'Dash Goods',
  ),
  Product(
    name: 'Flutter T Shirt',
    price: 50,
    images: ["t-shirt-front.png", "t-shirt-back.png"],
    brand: 'Dash Goods',
  ),
];
