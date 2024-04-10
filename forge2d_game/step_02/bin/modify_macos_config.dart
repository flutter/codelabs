// Copyright 2024 The Flutter Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'dart:io';
import 'package:xml/xml.dart';
import 'package:xml/xpath.dart';

void main() {
  final file = File('macos/Runner/Base.lproj/MainMenu.xib');
  var document = XmlDocument.parse(file.readAsStringSync());
  document.xpath('//document/objects/window').first
    ..setAttribute('titlebarAppearsTransparent', 'YES')
    ..setAttribute('titleVisibility', 'hidden');
  document
      .xpath('//document/objects/window/windowStyleMask')
      .first
      .setAttribute('fullSizeContentView', 'YES');
  file.writeAsStringSync(document.toString());
}
