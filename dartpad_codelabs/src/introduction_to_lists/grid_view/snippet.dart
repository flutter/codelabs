// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        // Use a GridView to display items!
        body: GridView.count(
          crossAxisCount: 3,
          children: [],
        ),
      ),
    ),
  );
}

// Displays a blue box with a black border
class BlueBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 50,
      height: 50,
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: Colors.blue,
          border: Border.all(),
        ),
      ),
    );
  }
}

// Displays a yellow box with a black border
class YellowBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 50,
      height: 50,
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: Colors.yellow,
          border: Border.all(),
        ),
      ),
    );
  }
}

// Displays a green box with a black border
class GreenBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 50,
      height: 50,
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: Colors.green,
          border: Border.all(),
        ),
      ),
    );
  }
}
