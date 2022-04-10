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
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text('Home Page Title'),
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: Material(
          elevation: 10,
          shadowColor: Colors.green,
          textStyle: TextStyle(color: Colors.blue),
          child: Center(child: Text('Home Page Content')),
        ),
      ),

      // Add a FloatingActionButton to the Scaffold that prints a message to the
      // console when it is pressed
      floatingActionButton: FloatingActionButton(
        elevation: 5,
        backgroundColor: Colors.orange,
        tooltip: 'Send Message',
        onPressed: () => print('FloatingActionButton pressed'),
        child: Icon(Icons.send),
      ),
    );
  }
}
