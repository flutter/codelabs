import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:logging/logging.dart';

import '../firebase_options.dart';
import '../model/firebase_state.dart';

final _log = Logger('FirebaseNotifier');

class FirebaseNotifier extends ChangeNotifier {
  bool loggedIn = false;
  FirebaseState state = FirebaseState.loading;
  bool isLoggingIn = false;
  late final GoogleSignIn _googleSignIn;
  StreamSubscription<User?>? _authSubscription;

  FirebaseNotifier() {
    _googleSignIn = GoogleSignIn.instance;
    load();
  }

  @override
  void dispose() {
    _authSubscription?.cancel();
    super.dispose();
  }

  late final Completer<bool> _isInitialized = Completer();

  Future<FirebaseFirestore> get firestore async {
    var isInitialized = await _isInitialized.future;
    if (!isInitialized) {
      throw Exception('Firebase is not initialized');
    }
    return FirebaseFirestore.instance;
  }

  User? get user => FirebaseAuth.instance.currentUser;

  Future<void> load() async {
    _log.info('Starting Firebase initialization');
    try {
      _log.fine('Initializing Firebase app');
      await Firebase.initializeApp(
        options: DefaultFirebaseOptions.currentPlatform,
      );

      _log.fine('Initializing Google Sign-In');
      await _googleSignIn.initialize();

      // Set up auth state listener before attempting authentication
      _log.fine('Setting up auth state listener');
      _authSubscription = FirebaseAuth.instance.authStateChanges().listen((
        user,
      ) {
        _log.fine(
          'Auth state changed: user is ${user != null ? 'logged in' : 'logged out'}',
        );
        loggedIn = user != null;
        notifyListeners();
      });

      // Check if user is already authenticated
      _log.fine('Attempting lightweight authentication');
      final lightweightAuth = _googleSignIn.attemptLightweightAuthentication();
      if (lightweightAuth is Future) {
        await lightweightAuth;
      }

      loggedIn = FirebaseAuth.instance.currentUser != null;
      state = FirebaseState.available;
      _isInitialized.complete(true);
      _log.info('Firebase initialization completed successfully');
      notifyListeners();
    } catch (e) {
      _log.severe('Firebase initialization failed', e);
      state = FirebaseState.notAvailable;
      _isInitialized.complete(false);
      notifyListeners();
    }
  }

  Future<void> login() async {
    _log.info('Starting login process');
    isLoggingIn = true;
    notifyListeners();

    try {
      _log.fine('Authenticating with Google Sign-In');
      await _googleSignIn.authenticate();

      _log.fine('Requesting server authorization');
      final serverAuth = await _googleSignIn.authorizationClient
          .authorizeServer(['email', 'profile']);

      if (serverAuth == null) {
        _log.warning('Server authorization returned null');
        isLoggingIn = false;
        notifyListeners();
        return;
      }

      _log.fine('Creating Firebase credential');
      final credential = GoogleAuthProvider.credential(
        idToken: serverAuth.serverAuthCode,
      );

      _log.fine('Signing in to Firebase');
      await FirebaseAuth.instance.signInWithCredential(credential);

      _log.info('Login completed successfully');
    } on GoogleSignInException catch (e) {
      _log.info('Google Sign-In exception: ${e.code}');
      if (e.code == GoogleSignInExceptionCode.canceled) {
        _log.fine('User canceled sign-in');
      } else {
        _log.warning('Google Sign-In failed', e);
      }
      return;
    } catch (e) {
      _log.severe('Login failed with unexpected error', e);
      return;
    } finally {
      isLoggingIn = false;
      notifyListeners();
    }
  }
}
