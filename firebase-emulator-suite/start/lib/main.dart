import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import 'app_state.dart';
import 'logged_in_view.dart';
import 'logged_out_view.dart';

void main() async {
  // TODO: Initialize Firebase
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final state = AppState();
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      scrollBehavior: AppScrollBehavior(),
      routes: {
        '/': (context) => LoggedOutView(state: state),
        '/home': (context) => LoggedInView(state: state)
      },
    );
  }
}

/// This class overrides gesture behavior, and allows us to use the mouse to trigger
/// drag gestures. In this case, it allows us to swipe on the "PageView" widget
/// while running the app on the Web.
class AppScrollBehavior extends MaterialScrollBehavior {
  @override
  Set<PointerDeviceKind> get dragDevices => {
        PointerDeviceKind.touch,
        PointerDeviceKind.mouse,
      };
}
