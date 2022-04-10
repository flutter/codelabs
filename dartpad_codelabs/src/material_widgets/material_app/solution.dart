// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';

void main() {
  runApp(
    // Creates an application that follows the Material Design spec
    MaterialApp(
      // Defines the title of the app for the system
      title: 'App Title',

      // Sets the widget that should be displayed when a user opens the app
      home: HomePage(),

      // Determines the languages the application is built for
      supportedLocales: [
        Locale('en', 'US'),
      ],
    ),
  );
}

// Create a separate HomePage widget.
class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Display some Text
    return Center(child: Text('Home Page'));
  }
}
