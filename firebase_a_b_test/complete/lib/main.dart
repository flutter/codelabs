import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_abtest/src/app.dart';

import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  /// This codelab is designed to work with the Firebase Emulator Suite, and not
  /// with a production Firebase application. Most of the FirebaseOptions are removed
  /// and aren't needed.
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  // Workaround for bug using Firestore emulator on the Web
  // see: https://github.com/firebase/flutterfire/issues/6216
  try {
    FirebaseFirestore.instance.useFirestoreEmulator('localhost', 8080);
  } catch (e) {
    // swallow, as this is only necessary the first time
    print(e);
  }

  FirebaseStorage.instance.useStorageEmulator('localhost', 9199);
  FirebaseAuth.instance.useAuthEmulator('localhost', 9099);

  runApp(const CoolShopApp());
}
