// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, prefer_const_literals_to_create_immutables, prefer_const_constructors_in_immutables
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: HomePage(),
  ));
}

class DetailsPage extends StatelessWidget {
  final int index;

  DetailsPage({required this.index, super.key});

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
            Text('Details for item $index'),
            // A Button that navigates back to the HomePage when pressed
            ElevatedButton(
              onPressed: () => Navigator.pop(
                context,
                // Return a String that says which details page was closed
                "Closed DetailsPage $index",
              ),
              child: Text('Go Back!'),
            ),
          ],
        ),
      ),
    );
  }
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
            onTap: () async {
              // Capture the string returned by the details page
              final returnedData = await Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailsPage(index: index),
                ),
              );

              // Use the String returned by the DetailsPage to show a Snackbar
              if (returnedData != null) {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text(returnedData as String)),
                );
              }
            },
          );
        },
      ),
    );
  }
}
