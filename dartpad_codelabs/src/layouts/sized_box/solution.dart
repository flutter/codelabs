// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors
import 'package:flutter/material.dart';

// Runs an app that displays the `BlueBox` widget
void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: BlueBox(),
      ),
    ),
  );
}

class BlueBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Use a SizedBox to resize the DecoratedBox to 50x50 logical pixels
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
