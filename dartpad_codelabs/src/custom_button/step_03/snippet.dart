// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: Center(
          child: CustomButton(
              // Once you define your instance variables and update your
              // constructor background below, use them here!
              ),
        ),
      ),
    ),
  );
}

class CustomButton extends StatelessWidget {
  // Create your class constructor here!

  // Define your instance variables here!

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
          color: Colors.blue, // Replace this hard-coded color value!
          borderRadius: BorderRadius.circular(10),
        ),
        child: Text("Press me!"), // Replace this hard-coded Text Widget!
      ),
    );
  }
}
