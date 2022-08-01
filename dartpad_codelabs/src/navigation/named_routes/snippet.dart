// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, prefer_const_literals_to_create_immutables, prefer_const_constructors_in_immutables, prefer_const_declarations
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    // TODO #1: Define the routes table. It should map a series of paths to
    // specific widgets.
    routes: {
      '/': (context) => HomePage(),
      '/details': (context) => DetailsPage(),
    },
  ));
}

class HomePage extends StatelessWidget {
  HomePage({super.key});

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
              // TODO #2: Use pushNamed to navigate to the DetailsPage instead
              // of push. Pass the item index to the DetailsPage as an argument.
              final returnedData = await Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailsPage(),
                ),
              );

              // Once again, use the returned data to display a snackbar.
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

class DetailsPage extends StatelessWidget {
  const DetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO #3: Extract the item index from the current ModalRoute's arguments
    final index = 0;

    return Scaffold(
      appBar: AppBar(
        title: Text('Details Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Details for item $index',
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () => Navigator.pop(
                context,
                "Closed DetailsPage $index",
              ),
              child: Text('Go Back to HomePage'),
            )
          ],
        ),
      ),
    );
  }
}
