class Product {
  final String productName;

  Product(this.productName);

  Product.fromMap(Map<String, dynamic> json)
    : productName = json['productName'];

  Map<String, dynamic> toMap() {
    return {'productName': productName};
  }
}
