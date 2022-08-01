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
            // TODO #1: Add an ElevatedButton that uses Navigator.pop to close
            // the screen.

            // TODO #2: Return a String to the original screen that reads
            // "Closed DetailsPage $index"
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
            // TODO #3: Convert the onTap function to an async function. Use the
            // await keyword to capture the value returned by the DetailsPage.
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailsPage(index: index),
                ),
              );

              // TODO #4: Display the returned value using a Snackbar or print.
            },
          );
        },
      ),
    );
  }
}
