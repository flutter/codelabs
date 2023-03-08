import 'package:haiku_generator/repositories/abstract/product_repository.dart';
import '../models/product.dart';
import '../repositories/impl/product_repository_impl.dart';

class ProductController {
  final ProductRepository productRepository = ProductRepositoryImpl();

  Future<List<Product>> getProduct() {
    return productRepository.getAllProduct();
  }
}
