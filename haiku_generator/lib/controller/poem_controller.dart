import '../models/poem.dart';
import '../repositories/abstract/poem_repository.dart';
import '../repositories/impl/poem_repository_impl.dart';

class PoemController {
  final PoemRepository poemRepository = PoemRepositoryImpl();

  Future<List<Poem>> getPoem(String productName) {
    return poemRepository.getOnePoem(productName);
  }
}
