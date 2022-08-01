// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, prefer_const_literals_to_create_immutables, prefer_const_constructors_in_immutables, undefined_identifier
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    // TODO #3: Replace the Routes map with an onGenerateRoute function.
    //
    // First, extract the index using the RouteSettings. Pass the index to the
    // DetailsPage constructor. Then, extract the index from the path name.
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
              final returnedData = await Navigator.pushNamed(
                context,
                // TODO #4: Add the index to the path name. Example: /details/5.
                '/details',
                arguments: index,
              );

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
  // TODO #1: Reintroduce the index instance variable

  // TODO #2: Update the constructor to store the index instance variable
  const DetailsPage({super.key});

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
