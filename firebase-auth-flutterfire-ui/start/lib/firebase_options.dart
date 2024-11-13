import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        return macos;
      case TargetPlatform.fuchsia:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for Fuchsia platform.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }

    throw UnsupportedError(
      'DefaultFirebaseOptions are not supported for this platform.',
    );
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyCqFjCV_9CZmYeIvcK9FVy4drmKUlSaIWY',
    appId: '1:963656261848:web:7219f7fca5fc70afb237ad',
    messagingSenderId: '963656261848',
    projectId: 'flutterfire-ui-codelab',
    authDomain: 'flutterfire-ui-codelab.firebaseapp.com',
    storageBucket: 'flutterfire-ui-codelab.firebasestorage.app',
    measurementId: 'G-DGF0CP099H',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDconZaCQpkxIJ5KQBF-3tEU0rxYsLkIe8',
    appId: '1:963656261848:android:c939ccc86ab2dcdbb237ad',
    messagingSenderId: '963656261848',
    projectId: 'flutterfire-ui-codelab',
    storageBucket: 'flutterfire-ui-codelab.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBqLWsqFjYAdGyihKTahMRDQMo0N6NVjAs',
    appId: '1:963656261848:ios:d9e01cfe8b675dfcb237ad',
    messagingSenderId: '963656261848',
    projectId: 'flutterfire-ui-codelab',
    storageBucket: 'flutterfire-ui-codelab.firebasestorage.app',
    iosClientId:
        '963656261848-v7r3vq1v6haupv0l1mdrmsf56ktnua60.apps.googleusercontent.com',
    iosBundleId: 'com.example.complete',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBqLWsqFjYAdGyihKTahMRDQMo0N6NVjAs',
    appId: '1:963656261848:ios:d9e01cfe8b675dfcb237ad',
    messagingSenderId: '963656261848',
    projectId: 'flutterfire-ui-codelab',
    storageBucket: 'flutterfire-ui-codelab.firebasestorage.app',
    iosClientId:
        '963656261848-v7r3vq1v6haupv0l1mdrmsf56ktnua60.apps.googleusercontent.com',
    iosBundleId: 'com.example.complete',
  );
}
