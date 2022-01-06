import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../logic/firebase_notifier.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var firebaseNotifier = context.watch<FirebaseNotifier>();

    if (firebaseNotifier.isLoggingIn) {
      return const Center(
        child: Text('Logging in...'),
      );
    }
    return Center(
        child: ElevatedButton(
      onPressed: () {
        firebaseNotifier.login();
      },
      child: const Text('Login'),
    ));
  }
}
