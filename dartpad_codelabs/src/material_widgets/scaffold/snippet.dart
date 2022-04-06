// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      title: 'App Title',
      home: HomePage(),
      locale: Locale('en', 'US'),
    ),
  );
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Make the Container the `body` of a `Scaffold`. Then, give the content
    // a title
    return Container(
      color: Colors.grey.shade300, // Move the background color to the Scaffold!
      padding: EdgeInsets.all(20),
      child: Material(
        elevation: 10,
        shadowColor: Colors.green,
        textStyle: TextStyle(color: Colors.blue),
        child: Center(child: Text('Home Page Content')),
      ),
    );
  }
}
