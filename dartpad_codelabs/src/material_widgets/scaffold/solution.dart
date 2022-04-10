// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, avoid_print
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      title: 'My App',
      home: HomePage(),
    ),
  );
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Scaffold Widget gives the HomePage visual structure
    return Scaffold(
      // Defines a background color for the entire page
      backgroundColor: Colors.grey.shade300,

      // The AppBar displays the title of the home apge
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text('Home Page Title'),
      ),

      // The body displays the main content of the home page
      body: Container(
        padding: EdgeInsets.all(20),
        // Can still use Material Widgets as part of the body! You'll use
        // several more Material widgets in the following steps.
        child: Material(
          elevation: 10,
          shadowColor: Colors.green,
          textStyle: TextStyle(color: Colors.blue),
          child: Center(child: Text('Home Page Content')),
        ),
      ),
    );
  }
}
