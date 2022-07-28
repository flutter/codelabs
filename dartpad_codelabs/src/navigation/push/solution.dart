// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, prefer_const_literals_to_create_immutables, prefer_const_constructors_in_immutables
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: HomePage(),
  ));
}

// The DetailsPage widget displays information about a specific item
class DetailsPage extends StatelessWidget {
  // Store the index of the item the user tapped on.
  final int index;

  // Create a constructor that accepts the index.
  DetailsPage({required this.index, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Details Page'),
      ),
      // Display the index of the item the user tapped on.
      body: Center(
        child: Text('Details for item $index'),
      ),
    );
  }
}

// The HomePage widget displays a list of 50 sample items.
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
      ),
      body: ListView.builder(
        itemCount: 50,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text('Item $index'),
            onTap: () {
              // Use the Navigator to display a new "page" or "screen".
              Navigator.push(
                context,
                // MaterialPageRoute runs a Material Design animation from
                // one page to the next.
                MaterialPageRoute(
                  // Navigate to the DetailsPage widget. Pass the index to it.
                  builder: (context) => DetailsPage(index: index),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
