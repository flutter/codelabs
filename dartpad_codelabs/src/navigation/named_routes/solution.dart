// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, prefer_const_literals_to_create_immutables, prefer_const_constructors_in_immutables
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    // Map the name of each page to a specific page widget
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
              // Use pushNamed to navigate to the DetailsPage. Just like the
              // push method, you can capture data returned to pushNamed by the
              // DetailsPage.
              final returnedData = await Navigator.pushNamed(
                context,
                '/details',
                // Pass the item index to the DetailsPage
                arguments: index,
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
    // Extract the item index from the route arguments
    final index = ModalRoute.of(context)!.settings.arguments;

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
