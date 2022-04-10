// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      title: 'App Title',
      home: HomePage(),
    ),
  );
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // The container with padding allows you to see the drop shadow from the
    // Material widget
    return Container(
      color: Colors.grey.shade300,
      padding: EdgeInsets.all(20),
      // The Material widget defines an elevation, background color, shadow
      // color and text style
      child: Material(
        elevation: 10,
        shadowColor: Colors.green,
        textStyle: TextStyle(color: Colors.blue),
        child: Center(child: Text('Home Page')),
      ),
    );
  }
}
