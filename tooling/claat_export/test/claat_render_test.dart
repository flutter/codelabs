import 'dart:convert';
import 'dart:io';

import 'package:claat_export/claat_render.dart';
import 'package:googleapis/docs/v1.dart' as gdoc;
import 'package:json_annotation/json_annotation.dart';
import 'package:path/path.dart' as path;
import 'package:test/test.dart';

part 'claat_render_test.g.dart';

@JsonSerializable()
class DataItem {
  final String json;
  final String md;

  const DataItem(this.json, this.md);

  factory DataItem.fromJson(Map<String, dynamic> json) =>
      _$DataItemFromJson(json);

  Map<String, dynamic> toJson() => _$DataItemToJson(this);
}

void main() async {
  final items = (jsonDecode(await File('test/data/data.json').readAsString())
          as List<dynamic>)
      .map((e) => DataItem.fromJson(e));

  test('load data.json', () async {
    expect(items.length, 8);
    for (final item in items) {
      var jsonContent = await File(item.json).readAsString();
      expect(jsonContent, isNotNull);
      expect(jsonDecode(jsonContent), isNotNull);
      expect(await File(item.md).readAsString(), isNotNull);

      final codelab =
          await File(path.join(File(item.md).parent.path, 'codelab.json'))
              .readAsString();
      expect(codelab, isNotNull);
      expect(jsonDecode(codelab), isNotNull);
    }
  });

  for (final item in items) {
    test('Convert ${item.json}', () async {
      final document = gdoc.Document.fromJson(
          jsonDecode(await File(item.json).readAsString()));
      expect(document, isNotNull);

      final renderedCodelab = renderCodelabAsMarkdown(document);

      final markdown = await File(item.md).readAsString();
      expect(renderedCodelab, markdown);
    });
  }
}
