// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        // Use ListView to make children scrollable
        body: ListView(
          scrollDirection: Axis.horizontal, // Scroll from left-to-right
          children: [
            BlueBox(),
            SizedBox(width: 5), // Horizontal separators
            BlueBox(),
            SizedBox(width: 5),
            BlueBox(),
            SizedBox(width: 5),
            BlueBox(),
            SizedBox(width: 5),
            BlueBox(),
            SizedBox(width: 5),
            BlueBox(),
            SizedBox(width: 5),
            BlueBox(),
            SizedBox(width: 5),
            BlueBox(),
            SizedBox(width: 5),
            BlueBox(),
            SizedBox(width: 5),
            BlueBox(),
            SizedBox(width: 5),
            BlueBox(),
          ],
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
