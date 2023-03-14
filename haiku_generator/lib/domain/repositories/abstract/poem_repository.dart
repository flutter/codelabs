import '../../models/poem.dart';

abstract class PoemRepository {
  Future<String> getOnePoem(String productName);
}
