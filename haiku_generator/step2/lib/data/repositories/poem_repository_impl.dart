// ignore: unused_import
import 'dart:convert';

// ignore: unused_import
import 'package:http/http.dart' as http;

import '../../domain/repositories/abstract/poem_repository.dart';

class PoemRepositoryImpl implements PoemRepository {
  PoemRepositoryImpl();

  @override
  Future<String> getPoems(String productName) async {
    return '';
  }
}
