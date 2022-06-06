import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_remote_config/firebase_remote_config.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_abtest/src/app.dart';

import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  // Workaround for bug using Firestore emulator on the Web
  // see: https://github.com/firebase/flutterfire/issues/6216
  try {
    FirebaseFirestore.instance.useFirestoreEmulator('localhost', 8080);
  } catch (e) {
    // swallow error, as this is only necessary the first time
  }

  FirebaseStorage.instance.useStorageEmulator('localhost', 9199);
  FirebaseAuth.instance.useAuthEmulator('localhost', 9099);

  // Get a Remote Config object instance and set the minimum fetch interval to allow for frequent refreshes
  // During development, I recommend setting the minimumFetchInterval to seconds: 1
  // In production, this should be set much higher. The default is 12 hours.
  // See: https://firebase.google.com/docs/remote-config/get-started?platform=flutter#throttling
  final remoteConfig = FirebaseRemoteConfig.instance;
  await remoteConfig.setConfigSettings(RemoteConfigSettings(
    fetchTimeout: const Duration(minutes: 1),
    minimumFetchInterval: const Duration(hours: 1),
  ));

  // By default, the app is configured to show the front of the shirt
  // Using RemoteConfig, the app is able to A/B test the side of the shirt that is
  // shown to the user by default.
  FirebaseRemoteConfig.instance.setDefaults({
    "defaultShirtView": front,
  });

  runApp(const CoolShopApp());
}

const String front = 'front';
const String back = 'back';
