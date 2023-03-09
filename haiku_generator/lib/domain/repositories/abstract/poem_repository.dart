import '../../models/poem.dart';

abstract class PoemRepository {
  Future<List<Poem>> getOnePoem(String productName);
}
