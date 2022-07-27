// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';

// Runs an app that displays the `CustomButton`
void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: Center(
          child: CustomButton(
            backgroundColor: Colors.cyan, // Set the background color
            child: Text("Tap me!"), // Set the child Text
          ), // Display the CustomButton
        ),
      ),
    ),
  );
}

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key, // Pass this key to the `StatelessWidget` aka `super` constructor
    required this.child, // Required the user to provide a child Widget
    this.backgroundColor = Colors.blue, // Set a default backgroundColor
  });

  final Color backgroundColor; // Define the backgroundColor instance variable
  final Widget child; // Define the child instance variable

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        print('Handle Tap/Click');
      },
      onLongPress: () {
        print('Handle LongPress');
      },
      child: Container(
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: backgroundColor, // Use the color instance variable
          borderRadius: BorderRadius.circular(10),
        ),
        child: child, // Use the child instance variable
      ),
    );
  }
}
