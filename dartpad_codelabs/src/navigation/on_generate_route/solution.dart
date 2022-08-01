// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    onGenerateRoute: (settings) {
      // Store path name as a local variable to support null checks.
      final path = settings.name;

      // If the name starts with /details, extract the index from the path
      if (path != null && path.startsWith('/details/')) {
        // Extract the index from the path, then convert the String to an
        // integer using int.parse
        final index = int.parse(path.split('/').last);

        return MaterialPageRoute(
          // Finally, pass the index to the DetailsPage constructor
          builder: (context) => DetailsPage(index: index),
        );
      }

      // Otherwise, show the HomePage
      return MaterialPageRoute(builder: (context) => HomePage());
    },
  ));
}

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
            // Pass the index to the DetailsPage via the path name instead of
            // the arguments
            onTap: () => Navigator.pushNamed(context, '/details/$index'),
          );
        },
      ),
    );
  }
}

class DetailsPage extends StatelessWidget {
  // Reintroduce the index instance variable
  final int index;

  // Store the index using the constructor
  const DetailsPage({required this.index, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Details Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Display the index of the item the user tapped on
            Text(
              'Details for item $index',
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () => Navigator.pop(context),
              child: Text('Go Back to HomePage'),
            )
          ],
        ),
      ),
    );
  }
}
