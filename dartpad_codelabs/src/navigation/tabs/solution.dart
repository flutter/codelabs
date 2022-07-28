// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: HomePage(),
  ));
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    // Create a TabController using the DefaultTabController widget. The
    // TabController coordinates the widget that displays the tabs with the
    // widget that displays the correct content.
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Material Tabs'),
          // Add the tabs to the AppBar, below the title. The TabBar widget
          // updates the TabController when a user taps on a new tab.
          bottom: TabBar(
            tabs: [
              Tab(icon: Icon(Icons.restaurant)),
              Tab(icon: Icon(Icons.reviews_outlined)),
              Tab(icon: Icon(Icons.settings_outlined)),
            ],
          ),
        ),
        // The TabBarView listens to the TabController for changes and displays
        // the correct content depending on the selected tab.
        body: TabBarView(
          children: [
            Icon(Icons.restaurant),
            Icon(Icons.reviews_outlined),
            Icon(Icons.settings_outlined),
          ],
        ),
      ),
    );
  }
}
