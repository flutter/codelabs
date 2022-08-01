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
  // Define labels and icons for the different sections or "destinations". You
  // may optionally define a selectedIcon for each section as well.
  final _destinations = [
    NavigationDestination(
      label: 'Explore',
      icon: Icon(Icons.explore_outlined),
      selectedIcon: Icon(Icons.explore),
    ),
    NavigationDestination(
      label: 'Search',
      icon: Icon(Icons.search),
    ),
    NavigationDestination(
      label: 'Library',
      icon: Icon(Icons.library_music_outlined),
      selectedIcon: Icon(Icons.library_music),
    ),
  ];

  // A variable that tracks the destination the user taps on
  var _selectedDestinationIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('NavigationBar Demo'),
      ),
      body: Center(
        // Display the icon from the selected destination
        child: _destinations[_selectedDestinationIndex].icon,
      ),
      bottomNavigationBar: NavigationBar(
        // A callback function that runs when the user navigates to a new
        // destination. This function is provided with the index of the
        // destination the user tapped on.
        //
        // Use the setState method rebuild the widget tree with the latest
        // index.
        onDestinationSelected: (int index) {
          setState(() => _selectedDestinationIndex = index);
        },

        // Tell the NavigationBar which destination is currently selected
        selectedIndex: _selectedDestinationIndex,

        // Provide the list of destinations to the NavigationBar so it can
        // display them.
        destinations: _destinations,
      ),
    );
  }
}
