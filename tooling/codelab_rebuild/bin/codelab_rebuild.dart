// Copyright 2022 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'dart:io';
import 'package:codelab_rebuild/codelab_rebuild.dart';
import 'package:logging/logging.dart';

void main(List<String> arguments) {
  Logger.root.level = Level.ALL; // defaults to Level.INFO
  Logger.root.onRecord.listen((record) {
    print('${record.level.name}: ${record.time}: ${record.message}');
  });

  if (arguments.length != 1) {
    Logger(
      'main',
    ).severe('Usage: codelab_rebuild path/to/codelab_rebuild.yaml');
    exit(1);
  }

  final source = arguments.single;
  final blueprint = Blueprint.load(File(source));
  blueprint.rebuild(File(source).parent);
}
