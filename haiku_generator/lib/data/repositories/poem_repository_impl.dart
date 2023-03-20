import '../../domain/models/poem.dart';
import '../../domain/repositories/abstract/poem_repository.dart';

class PoemRepositoryImpl implements PoemRepository {
  PoemRepositoryImpl();

  @override
  Future<String> getOnePoem(String productName) async {
    var dummyData = [
      {
        'productName': 'Google Search',
        'poemText':
            "Here is a long haiku about Google Search: \n\nGoogle Search is great \nFor finding what you need \nAnswer at your fingertips \n\nGoogle Search is vast \nWith information overload \nGoogle Search to the rescue \n\nGoogle Search is fast \nIt can find what you're looking for \nIn just a few seconds \n\nGoogle Search if free \nSo you can use it for anything \nLarge or small \n\nGoogle Search is awesome \nIt's the best search engine \nOn the internet"
      },
      {
        'productName': 'YouTube',
        'poemText': 'Here is a long haiku about YouTube:'
      },
      {
        'productName': 'Android',
        'poemText': 'Here is a long haiku about Android:'
      },
      {
        'productName': 'Google Maps',
        'poemText': 'Here is a long haiku about Google Maps:'
      },
      {'productName': 'GMail', 'poemText': 'Here is a long haiku about GMail:'}
    ];
    var itemsMatch =
        dummyData.where((item) => item['productName'] == productName).toList();
    return itemsMatch.map((item) => Poem.fromMap(item)).toList().first.poemText;
  }
}
