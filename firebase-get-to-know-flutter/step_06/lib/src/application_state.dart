import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';

import 'authentication.dart';

class GTKApplicationState extends ChangeNotifier {
  GTKApplicationState() {
    init();
  }

  Future<void> init() async {
    await Firebase.initializeApp();

    FirebaseAuth.instance.userChanges().listen((user) {
      if (user != null) {
        _loginState = GTKApplicationLoginState.loggedIn;
      } else {
        _loginState = GTKApplicationLoginState.loggedOut;
      }
      notifyListeners();
    });
  }

  GTKApplicationLoginState _loginState;
  GTKApplicationLoginState get loginState => _loginState;

  String _email;
  String get email => _email;

  void startLoginFlow() {
    _loginState = GTKApplicationLoginState.emailAddress;
    notifyListeners();
  }

  void verifyEmail(
    String email,
    void Function(FirebaseAuthException e) errorCallback,
  ) async {
    try {
      var methods =
          await FirebaseAuth.instance.fetchSignInMethodsForEmail(email);
      if (methods.contains('password')) {
        _loginState = GTKApplicationLoginState.password;
      } else {
        _loginState = GTKApplicationLoginState.register;
      }
      _email = email;
      notifyListeners();
    } on FirebaseAuthException catch (e) {
      errorCallback(e);
    }
  }

  void signInWithEmailAndPassword(
    String email,
    String password,
    void Function(FirebaseAuthException e) errorCallback,
  ) async {
    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      // If sign in succeeds, FirebaseAuth.instance.userChanges() will fire
      // with new state. Alternatively, a FirebaseAuthException will be thrown
      // with an explanation as to why sign in failed.
    } on FirebaseAuthException catch (e) {
      errorCallback(e);
    }
  }

  void cancelRegistration() {
    _loginState = GTKApplicationLoginState.emailAddress;
    notifyListeners();
  }

  void registerAccount(String email, String displayName, String password,
      void Function(FirebaseAuthException e) errorCallback) async {
    try {
      var credential = await FirebaseAuth.instance
          .createUserWithEmailAndPassword(email: email, password: password);
      await credential.user.updateProfile(displayName: displayName);
      // If registration succeeds, FirebaseAuth.instance.userChanges() will
      // fire with new state. Alternatively, a FirebaseAuthException will be
      // thrown with an explanation as to why registration failed.
    } on FirebaseAuthException catch (e) {
      errorCallback(e);
    }
  }

  void signOut() {
    FirebaseAuth.instance.signOut();
  }
}
