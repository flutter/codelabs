// Copyright 2023 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:googleapis/docs/v1.dart' as gdoc;

List<Uri> claatImageUris(gdoc.Document document) {
  List<Uri> uris = [];
  for (final MapEntry(:value) in document.inlineObjects!.entries) {
    final contentUri = value
        .inlineObjectProperties?.embeddedObject?.imageProperties?.contentUri;
    if (contentUri != null) {
      final uri = Uri.tryParse(contentUri);
      if (uri != null) {
        uris.add(uri);
      }
    }
  }
  return uris;
}
