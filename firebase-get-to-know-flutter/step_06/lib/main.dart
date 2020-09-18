import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import 'src/application_state.dart';
import 'src/authentication.dart';
import 'src/widgets.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => GTKApplicationState(),
      builder: (context, _) => GTKApp(),
    ),
  );
}

class GTKApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Firebase Meetup',
      theme: ThemeData(
        buttonTheme: Theme.of(context).buttonTheme.copyWith(
              highlightColor: Colors.deepPurple,
            ),
        primarySwatch: Colors.deepPurple,
        textTheme: GoogleFonts.robotoTextTheme(
          Theme.of(context).textTheme,
        ),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: GTKHomePage(),
    );
  }
}

class GTKHomePage extends StatelessWidget {
  GTKHomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Firebase Meetup'),
      ),
      body: ListView(
        children: <Widget>[
          Image.network('https://firebasestorage.googleapis.com/v0/b'
              '/fir-images-a61c9.appspot.com/o/codelab.png'
              '?alt=media&token=f45f808c-ce40-4b34-944c-8d8fac00e13d'),
          SizedBox(height: 8),
          GTKIconAndDetail(Icons.calendar_today, 'October 30'),
          GTKIconAndDetail(Icons.location_city, 'San Francisco'),
          Consumer<GTKApplicationState>(
            builder: (context, appState, _) => GTKAuthentication(
              email: appState.email,
              loginState: appState.loginState,
              startLoginFlow: appState.startLoginFlow,
              verifyEmail: appState.verifyEmail,
              signInWithEmailAndPassword: appState.signInWithEmailAndPassword,
              cancelRegistration: appState.cancelRegistration,
              registerAccount: appState.registerAccount,
              signOut: appState.signOut,
            ),
          ),
          Divider(
            height: 8,
            thickness: 1,
            indent: 8,
            endIndent: 8,
            color: Colors.grey,
          ),
          GTKHeader("What we'll be doing"),
          GTKParagraph(
            'Join us for a day full of Firebase Workshops and Pizza!',
          ),
        ],
      ),
    );
  }
}
