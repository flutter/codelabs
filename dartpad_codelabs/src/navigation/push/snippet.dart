// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, prefer_const_literals_to_create_immutables, prefer_const_constructors_in_immutables
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: HomePage(),
  ));
}

// TODO #1: Create a DetailsPage widget that accepts an index via the
// constructor. Use a Scaffold widget to give the page a consistent visual
// structure. Build an AppBar with a title that reads "Details Page." Then,
// display the index of the item the user clicked/tapped on in the body.

// The HomePage widget uses a Scaffold widget to display a list of 50 example
// items.
//
// When a user taps or clicks on an item, navigate to a new page that displays
// the index of the item they tapped on.
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // The appBar displays the title of the page
      appBar: AppBar(
        title: Text('Home Page'),
      ),
      // Displays a list of 50 sample items
      body: ListView.builder(
        itemCount: 50,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text('Item $index'),
            // A function that runs when a user taps or clicks on the item
            onTap: () {
              // TODO #2: Use the Navigator to push a MaterialPageRoute that
              // displays the DetailsPage. Make sure to pass the index to the
              // DetailsPage.
            },
          );
        },
      ),
    );
  }
}
