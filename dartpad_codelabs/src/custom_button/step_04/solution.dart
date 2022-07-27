// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomButton(
                color: Colors.cyan,
                child: Text("Button 1"),
                // Provide onTap & onLongPress to the first button. Notice each
                // instance of the button prints different information!
                onTap: () {
                  print('Button 1: Handle Tap/Click');
                },
                onLongPress: () {
                  print('Button 1: Handle LongPress');
                },
              ),
              SizedBox(height: 20),
              CustomButton(
                color: Colors.indigoAccent,
                child: Text("Button 2"),
                // Provide onTap & onLongPress to the second button.
                onTap: () {
                  print('Button 2: Handle Tap/Click');
                },
                onLongPress: () {
                  print('Button 2: Handle LongPress');
                },
              ),
            ],
          ),
        ),
      ),
    ),
  );
}

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.child,
    required this.onTap, // New constructor parameter
    required this.onLongPress, // New constructor parameter
    this.color = Colors.blue,
  });

  final Color color;
  final Widget child;
  final VoidCallback onTap; // New instance variable
  final VoidCallback onLongPress; // New instance variable

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap, // Pass onTap to the GestureDetector
      onLongPress: onLongPress, // Pass onLongPress to the GestureDetector
      child: Container(
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(10),
        ),
        child: child,
      ),
    );
  }
}
