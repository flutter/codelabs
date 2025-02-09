import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'app_state.dart';
import 'firebase_options.dart';
import 'logged_in_view.dart';
import 'logged_out_view.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  if (kDebugMode) {
    try {
      FirebaseFirestore.instance.useFirestoreEmulator('localhost', 8080);
      await FirebaseAuth.instance.useAuthEmulator('localhost', 9099);
    } catch (e) {
      // ignore: avoid_print
      print(e);
    }
  }

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final state = AppState();

  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      scrollBehavior: AppScrollBehavior(),
      routerConfig: _router(),
      theme: ThemeData(),
    );
  }

  GoRouter _router() {
    return GoRouter(
      redirect: (context, routerState) => state.user == null ? '/login' : null,
      routes: [
        GoRoute(
          path: '/',
          builder: (context, routerState) => LoggedInView(state: state),
        ),
        GoRoute(
          path: '/login',
          builder: (context, routerState) => LoggedOutView(state: state),
        ),
      ],
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
