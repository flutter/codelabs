// Copyright 2020 The Flutter Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_remote_config/firebase_remote_config.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';

import 'firebase_options.dart';
import 'src/pages/products_list_page.dart';

// Remote config values
const String front = 'front';
const String back = 'back';

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

  // This codelab uses Emulators where possible.
  await FirebaseStorage.instance.useStorageEmulator('localhost', 9199);
  await FirebaseAuth.instance.useAuthEmulator('localhost', 9099);

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
  await FirebaseRemoteConfig.instance.setDefaults(
    <String, dynamic>{
      'defaultShirtView': front,
    },
  );

  // Needed for security rules, but no more Auth will be featured in this App
  await FirebaseAuth.instance.signInAnonymously();
  runApp(const CoolShopApp());
}

class CoolShopApp extends StatelessWidget {
  const CoolShopApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/': (context) => ProductsListPage(),
      },
    );
  }
}
