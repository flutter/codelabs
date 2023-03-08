import 'package:haiku_generator/repositories/abstract/poem_repository.dart';

import '../../models/poem.dart';

class PoemRepositoryImpl implements PoemRepository {
  PoemRepositoryImpl();

  @override
  Future<List<Poem>> getOnePoem(String productName) async {
    var dummyData = [
      {
        'product_name': 'Google Search',
        'poem_text':
            "Here is a long haiku about Google Search: \n\nGoogle Search is great \nFor finding what you need \nAnswer at your fingertips \n\nGoogle Search is vast \nWith information overload \nGoogle Search to the rescue \n\nGoogle Search is fast \nIt can find what you're looking for \nIn just a few seconds \n\nGoogle Search if free \nSo you can use it for anything \nLarge or small \n\nGoogle Search is awesome \nIt's the best search engine \nOn the internet"
      },
      {
        'product_name': 'YouTube',
        'poem_text': 'Here is a long haiku about YouTube:'
      },
      {
        'product_name': 'Android',
        'poem_text': 'Here is a long haiku about Android:'
      },
      {
        'product_name': 'Google Maps',
        'poem_text': 'Here is a long haiku about Google Maps:'
      },
      {
        'product_name': 'GMail',
        'poem_text': 'Here is a long haiku about GMail:'
      }
    ];
    var itemsMatch =
        dummyData.where((item) => item['product_name'] == productName).toList();
    return itemsMatch.map((item) => Poem.fromMap(item!)).toList();
  }
}
