import '../../models/product.dart';
import '../abstract/product_repository.dart';

class ProductRepositoryImpl implements ProductRepository {
  ProductRepositoryImpl();

  @override
  Future<List<Product>> getAllProduct() async {
    var dummyData = [
      {'product_name': 'Google Search'},
      {'product_name': 'YouTube'},
      {'product_name': 'Android'},
      {'product_name': 'Google Maps'},
      {'product_name': 'GMail'}
    ];
    return dummyData.map((item) => Product.fromMap(item)).toList();
  }
}
