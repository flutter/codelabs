// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        // Convert the GridView.count into a GridView.builder
        body: GridView.count(
          crossAxisCount: 3,
          mainAxisSpacing: 10,
          crossAxisSpacing: 5,
          children: [
            BlueBox(),
            BlueBox(),
            BlueBox(),
            BlueBox(),
            BlueBox(),
            BlueBox(),
            BlueBox(),
            BlueBox(),
            BlueBox(),
            BlueBox(),
            BlueBox(),
            BlueBox(),
            BlueBox(),
            BlueBox(),
            BlueBox(),
            BlueBox(),
            BlueBox(),
            BlueBox(),
            BlueBox(),
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
