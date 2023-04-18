import '../data/repositories/poem_repository_impl.dart';
import '../domain/repositories/abstract/poem_repository.dart';

class PoemController {
  final PoemRepository poemRepository = PoemRepositoryImpl();

  Future<String> getPoem(String productName) {
    return poemRepository.getPoems(productName);
  }
}
