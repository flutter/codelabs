// Copyright 2023 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'dart:convert';
import 'dart:io';

import 'package:claat_export_images/claat_export_images.dart';
import 'package:googleapis/docs/v1.dart' as gdoc;
import 'package:test/test.dart';

void main() async {
  final items = (jsonDecode(await File('test/data/data.json').readAsString())
          as List<dynamic>)
      .map((e) => e.toString());

  test('load data.json', () async {
    expect(items.length, 8);
    for (final item in items) {
      var jsonContent = await File(item).readAsString();
      expect(jsonContent, isNotNull);
      expect(jsonDecode(jsonContent), isNotNull);
      final document = gdoc.Document.fromJson(jsonDecode(jsonContent));
      final uris = claatImageUris(document);
      expect(uris, isNotNull);
      expect(uris.length, greaterThan(0));
    }
  });
}
