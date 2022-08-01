// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: HomePage(),
  ));
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // TODO #1: Define variable called _destinations, which stores a
  // List<NavigationDestination>. Each NavigationDestination must define a label
  // and icons for the different sections or "destinations" of your app. You may
  // optionally define a selectedIcon for each NavigationDestination as well.

  // TODO #2: Define a variable called _selectedDestinationIndex that
  // tracks the index of the destination the user tapped on. Starts at 0.

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('NavigationBar Demo'),
      ),
      body: Center(
          // TODO #3: Display the correct icon depending on the selected
          // destination. Hint: use the list of _destinations combined with the
          // _selectedDestinationIndex

          // child: ,
          ),

      // TODO #4: Add the NavigationBar to the Scaffold using the _destinations
      // and _selectedDestinationIndex. Then, provide a callback function to
      // update the _selectedDestinationIndex when a user taps on a destination.
      //
      // bottomNavigationBar:
    );
  }
}
