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

In the `ApplicationState` class, we want to add the following default fields and default remote config values:

```dart
  int _attendees = 0;
  int get attendees => _attendees;

  // Add from here
  static Map<String, dynamic> defaultFlagValues = <String, dynamic>{
    'event_date': 'October 18, 2022',
    'enable_free_swag': false,
    'call_to_action': 'Join us for a day full of Firebase Workshops and Pizza!',
  };

  bool _enable_free_swag = defaultFlagValues['enable_free_swag'] as bool;
  bool get enable_free_swag => _enable_free_swag;

  String _event_date = defaultFlagValues['event_date'] as String;
  String get event_date => _event_date;

  String _call_to_action = defaultFlagValues['call_to_action'] as String;
  String get call_to_action => _call_to_action;
  // to here

  Attending _attending = Attending.unknown;
```

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

We then want these changes to be reflected within our application. Since we do not have a free swag button yet, we would want to add that into our application. If we go to `src/authentication.dart` we can then make the following changes:

```dart
import 'package:flutter/material.dart';

import 'widgets.dart';

class AuthFunc extends StatelessWidget {
  const AuthFunc({
    super.key,
    required this.loggedIn,
    required this.signOut,
    // Add this feature flag
    required this.enable_free_swag,
  });

  final bool loggedIn;
  final void Function() signOut;
  // Add this feature flag
  final bool enable_free_swag;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 24, bottom: 8),
          child: StyledButton(
              onPressed: () {
                !loggedIn
                    ? Navigator.of(context).pushNamed('/sign-in')
                    : signOut();
              },
              child: !loggedIn ? const Text('RSVP') : const Text('Logout')),
        ),
        Visibility(
            visible: loggedIn,
            child: Padding(
              padding: const EdgeInsets.only(left: 24, bottom: 8),
              child: StyledButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed('/profile');
                  },
                  child: const Text('Profile')),
            )),
        // add this widget that is then controlled by the presence of the feature flag
        Visibility(
            visible: enable_free_swag,
            child: Padding(
              padding: const EdgeInsets.only(left: 24, bottom: 8),
              child: StyledButton(
                  onPressed: () {
                    // this is present so we can test crashlytics
                    throw Exception('swag tool unimplemented');
                  },
                  child: const Text('Free Swag!')),
            )),
      ],
    );
  }
}
```

Now we have our button coded, we can now enable the remote configuration features we want to control. We are going to modify the HomePage class as follows:

```dart
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Firebase Meetup'),
      ),
      body: ListView(
        children: <Widget>[
          Image.asset('assets/codelab.png'),
          const SizedBox(height: 8),
          // Modify from here
          Consumer<ApplicationState>(
            builder: (context, appState, _) =>
                IconAndDetail(Icons.calendar_today, appState.event_date),
          ),
          // to here
          const IconAndDetail(Icons.location_city, 'San Francisco'),
          Consumer<ApplicationState>(
            builder: (context, appState, _) => AuthFunc(
              loggedIn: appState.loggedIn,
              signOut: () {
                FirebaseAuth.instance.signOut();
              },
              // add this line
              enable_free_swag: appState.enable_free_swag,
            ),
          ),
          const Divider(
            height: 8,
            thickness: 1,
            indent: 8,
            endIndent: 8,
            color: Colors.grey,
          ),
          const Header("What we'll be doing"),
          // modify from here
          Consumer<ApplicationState>(
            builder: (context, appState, _) => Paragraph(
              '${appState.call_to_action}',
            ),
          ),
          // tp here
          Consumer<ApplicationState>(
            builder: (context, appState, _) => Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                if (appState.attendees >= 2)
                  Paragraph('${appState.attendees} people going')
                else if (appState.attendees == 1)
                  const Paragraph('1 person going')
                else
                  const Paragraph('No one going'),
                if (appState.loggedIn) ...[
                  YesNoSelection(
                    state: appState.attending,
                    onSelection: (attending) => appState.attending = attending,
                  ),
                  const Header('Discussion'),
                  GuestBook(
                    addMessage: (message) =>
                        appState.addMessageToGuestBook(message),
                    messages: appState.guestBookMessages,
                  ),
                ],
              ],
            ),
          ),
        ],
      ),
    );
  }
}
```

All of these values can now be controlled via the Firebase Web Console.
