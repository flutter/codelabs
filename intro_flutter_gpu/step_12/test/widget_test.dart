// Copyright 2024 The Flutter Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter_scene/scene.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:intro_flutter_gpu/main.dart';

void main() {
  testWidgets('smoke test', (tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(
      MainApp(staticResourcesInitialized: Scene.initializeStaticResources()),
    );
  });
}
