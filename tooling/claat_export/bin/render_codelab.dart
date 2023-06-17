import 'dart:convert';
import 'dart:io';
import 'package:claat_export/claat_render.dart';
import 'package:googleapis/docs/v1.dart' as gdoc;

void main(List<String> arguments) async {
  if (arguments.length != 1) {
    print('Expected path to Document json file');
    exit(-1);
  }
  final document = gdoc.Document.fromJson(
      jsonDecode(await File(arguments[0]).readAsString()));

  print(renderCodelabAsMarkdown(document));
}
