// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, body_might_complete_normally
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
    // Use a SizedBox + DecoratedBox to return a 50x50 blue widget with a black
    // border.
  }
}
