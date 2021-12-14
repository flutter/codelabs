enum ProductStatus {
  purchasable,
  purchased,
  pending,
}

class PurchasableProduct {
  final String title;
  final String description;
  final String price;
  ProductStatus status;

  PurchasableProduct(this.title, this.description, this.price)
      : status = ProductStatus.purchasable;
}
