import '../data/repositories/product_repository_impl.dart';
import '../domain/models/product.dart';
import '../domain/repositories/abstract/product_repository.dart';

class ProductController {
  final ProductRepository productRepository = ProductRepositoryImpl();

  Future<List<Product>> getProducts() {
    return productRepository.getAllProducts();
  }
}
