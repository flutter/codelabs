// Copyright 2022 The Flutter Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:desktop_window/desktop_window.dart';
import 'package:flutter/material.dart';
import 'package:universal_platform/universal_platform.dart';

import 'src/shared/app.dart';

Future setDesktopWindow() async {
  await DesktopWindow.setMinWindowSize(const Size(400, 400));
  await DesktopWindow.setWindowSize(const Size(1300, 900));
}

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  if (UniversalPlatform.isDesktop) {
    setDesktopWindow();
  }

  runApp(const MyApp());
}
