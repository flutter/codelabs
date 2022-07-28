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

class AppScrollBehavior extends MaterialScrollBehavior {
  @override
  Set<PointerDeviceKind> get dragDevices => {
        PointerDeviceKind.touch,
        PointerDeviceKind.mouse,
      };
}
