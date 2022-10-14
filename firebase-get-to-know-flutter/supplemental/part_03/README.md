# Supplemental Material - Crashlytics and Remote Configuration

## Starter Code
You can download the starter code by going to the parent directory and visiting part_02. The directory that you are currently in has completed crashlytics and remote config code added to it. The only thing you would need to do in order to test this code would be to call `flutterfire configure` to configure the project for your application.

## What is crashlytics?
Crashlytics is a way to record when crashes occur within your application. This can help alert you to any issues your users may be running into and help you resolve them faster.

## What is remote config?
Remote config is a way to remotely configre a few settings wihin your applicaiton and to dynamically serve them to users to see whether or not the users appreciate the new features or designs before rolling them out to a larger audience.

## Code

The first thing we need to do is import the libraries that we will be using into our project:

In `main.dart`:

```dart
import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart'
    hide EmailAuthProvider, PhoneAuthProvider;
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';     // new
import 'package:firebase_remote_config/firebase_remote_config.dart'; // new
import 'package:firebase_ui_auth/firebase_ui_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import 'firebase_options.dart';
import 'src/authentication.dart';
import 'src/widgets.dart';
```

We are importing both crashlyics and remote configuration. The first thing that we will do is setup crashlytics so we can be alerted of any crashes that might be occuring within our application.

After we initilize firebase in our `ApplicationState` class, we will want to record flutter errors and report them to crashlytics. This can be done as the following:

```dart
Future<void> init() async {
  await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform);

  // Add from here
  FlutterError.onError = (details) => {
      FirebaseCrashlytics.instance
          .recordFlutterFatalError(details);
    };
  // to here

  FirebaseUIAuth.configureProviders([
    EmailAuthProvider(),
  ]);
```

We now will have crashes reported to crashlytics as they occur in our app. We will now setup remoteConfig so we can remotely set values within our application. Remote config can be configred in the same init method as before:

```dart 
Future<void> init() async {
  await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform);

  FlutterError.onError = (details) => {
      FirebaseCrashlytics.instance
          .recordFlutterFatalError(details);
    };
  
  // Add from here
  var remoteConfig = FirebaseRemoteConfig.instance;
  // to here

  FirebaseUIAuth.configureProviders([
    EmailAuthProvider(),
  ]);
```

Once we have remote configuration initialized, we would want to think about our default values that we would want present in our application and the methods to access them. For remote config, we want to use:
* `enable_free_swag` - a feature flag to enable a free swag button wihtin th application
* `event_date`       - a date for future conferences so we can reuse our application
* `call_to_action`   - a message letting our community know what the upcoming session holds in store. A place for ML personalization to see what kind of messages land better with our users.

Once we have configured remote config with a set of default values, we can go ahead and initialize the fetching and activating of the values from firebase. At the end of the init call, we add:

```dart
    Future<void> init() async {
    
    // Abbreviated for brevity
    
    await remoteConfig.setConfigSettings(
      RemoteConfigSettings(
        fetchTimeout: const Duration(minutes: 1),
        minimumFetchInterval: const Duration(hours: 0),
      ),
    );

    await remoteConfig.setDefaults(defaultFlagValues);

    await remoteConfig.fetchAndActivate();

    _enable_free_swag = remoteConfig.getBool('enable_free_swag');
    _event_date = remoteConfig.getString('event_date');
    _call_to_action = remoteConfig.getString('call_to_action');

    notifyListeners();
  }
```

The config settings sets how long remote config should wait for the values to come down from the firebase servers before timing out as well as how often new data should be fetched from firebase. `setDefaults` sets the default values that we created previously. This is in the event that we call `getBool` and there is no boolean value on the server for that flag, it will instead return the default value. Finally, `fetchAndActivate` will fetch the new values from the server and instantly update your application with those new values. This allows your app to show the immediate changes that were created in the firebase web console.

All of these values can now be controlled via the Firebase Web Console. Go ahead and run your application after modifying the remote configuration in your firebase console to see these changes take effect within your application.
