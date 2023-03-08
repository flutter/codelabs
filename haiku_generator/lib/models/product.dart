class Product {
  final String productName;

  Product(this.productName);

  Product.fromMap(Map<String, dynamic> json) : productName = json['product_name'];

  Map<String, dynamic> toMap() {
    return {
      'product_name': productName,
    };
  }
}
