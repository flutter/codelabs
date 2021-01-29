// Copyright 2020, the Flutter project authors. Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      onGenerateRoute: (settings) {
        print('Generating route for ${settings.name}');
        late Widget page;
        if (settings.name == '/') {
          page = LandingScreen();
        } else if (settings.name == '/account') {
          page = AccountScreen();
        } else if (settings.name!.startsWith('/setup:')) {
          final subRoute = settings.name!.substring('/setup:'.length);
          page = SetupFlow(
            initialSetupRoute: subRoute,
          );
        } else {
          throw Exception('Unknown route: ${settings.name}');
        }

        return MaterialPageRoute<dynamic>(
          builder: (context) {
            return page;
          },
          settings: settings,
        );
      },
      debugShowCheckedModeBanner: false,
    ),
  );
}

@immutable
class SetupFlow extends StatefulWidget {
  static SetupFlowState of(BuildContext context) {
    return context.findAncestorStateOfType<SetupFlowState>()!;
  }

  const SetupFlow({
    Key? key,
    this.initialSetupRoute = '/install',
  }) : super(key: key);

  final String initialSetupRoute;

  @override
  SetupFlowState createState() => SetupFlowState();
}

class SetupFlowState extends State<SetupFlow> {
  final _navigatorKey = GlobalKey<NavigatorState>();

  void exitSetup() {
    Navigator.of(context).pop();
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async =>
          await _navigatorKey.currentState?.maybePop() ?? true,
      child: Navigator(
        key: _navigatorKey,
        initialRoute: widget.initialSetupRoute,
        onGenerateRoute: (settings) {
          print('Setup: generating route: ${settings.name}');
          late Widget page;
          switch (settings.name) {
            case 'install':
              page = InstallPage();
              break;
            case 'connecting':
              page = ConnectingPage();
              break;
            case 'review':
              page = ReviewPage();
              break;
          }

          return MaterialPageRoute<dynamic>(
            builder: (context) {
              return page;
            },
            settings: settings,
          );
        },
      ),
    );
  }
}

class InstallPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text('Install your device'),
            FlatButton(
              onPressed: () {
                Navigator.of(context).pushNamed('connecting');
              },
              child: Text('Connect to the server'),
            ),
            FlatButton(
              onPressed: () {
                SetupFlow.of(context).exitSetup();
              },
              child: Text('Exit Setup'),
            ),
          ],
        ),
      ),
    );
  }
}

class ConnectingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text('Connecting...'),
            FlatButton(
              onPressed: () {
                Navigator.of(context).pushNamed('review');
              },
              child: Text('Review device setup'),
            ),
            FlatButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('Back to install'),
            ),
          ],
        ),
      ),
    );
  }
}

class ReviewPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text('Review the setup.'),
            FlatButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('Reconnect'),
            ),
            FlatButton(
              onPressed: () {
                SetupFlow.of(context).exitSetup();
              },
              child: Text('Exit Setup'),
            ),
          ],
        ),
      ),
    );
  }
}

@immutable
class LandingScreen extends StatelessWidget {
  const LandingScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'Welcome!',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushNamed('/setup:install');
              },
              style: ElevatedButton.styleFrom(
                primary: Colors.blueAccent,
                shape: const StadiumBorder(),
                textStyle: const TextStyle(
                  fontSize: 22.0,
                ),
                minimumSize: const Size(48.0, 48.0),
              ),
              child: const Text('Setup your device'),
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushNamed('/account');
              },
              style: ElevatedButton.styleFrom(
                primary: Colors.blueAccent,
                shape: const StadiumBorder(),
                textStyle: const TextStyle(
                  fontSize: 22.0,
                ),
                minimumSize: const Size(48.0, 48.0),
              ),
              child: const Text('My Account'),
            ),
          ],
        ),
      ),
    );
  }
}

class AccountScreen extends StatelessWidget {
  const AccountScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'Account Screen',
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              style: ElevatedButton.styleFrom(
                primary: Colors.blueAccent,
                shape: const StadiumBorder(),
                textStyle: const TextStyle(
                  fontSize: 22.0,
                ),
                minimumSize: const Size(48.0, 48.0),
              ),
              child: const Text('Back to Home'),
            ),
          ],
        ),
      ),
    );
  }
}
