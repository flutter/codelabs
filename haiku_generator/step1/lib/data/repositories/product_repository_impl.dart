import '../../domain/models/product.dart';
import '../../domain/repositories/abstract/product_repository.dart';

class ProductRepositoryImpl implements ProductRepository {
  ProductRepositoryImpl();

  @override
  Future<List<Product>> getAllProducts() async {
    var dummyData = [
      {'productName': 'Google Search'},
    ];
    return dummyData.map((item) => Product.fromMap(item)).toList();
  }
}
