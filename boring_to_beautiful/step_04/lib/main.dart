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

  if (UniversalPlatform.isWindows ||
      UniversalPlatform.isLinux ||
      UniversalPlatform.isMacOS) {
    setDesktopWindow();
  }

  runApp(const MyApp());
}
