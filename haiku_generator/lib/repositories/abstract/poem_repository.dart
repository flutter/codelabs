import 'package:haiku_generator/models/poem.dart';

abstract class PoemRepository {
  Future<List<Poem>> getOnePoem(String productName);
}
