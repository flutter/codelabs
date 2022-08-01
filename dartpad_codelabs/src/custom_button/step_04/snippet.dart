// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: Center(
          child: CustomButton(
            backgroundColor: Colors.cyan,
            child: Text("Tap me!"),
            // onTap: Set the tap callback function here.
            // onLongPress: Set the long press callback function here.
            //
            // As a bonus, create two unique buttons.
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
    this.backgroundColor = Colors.blue,
    // Add constructor parameters for onTap and onLongPress.
  });

  final Color backgroundColor;
  final Widget child;
  // Define two new `VoidCallback` instance variables: onTap and onLongPress.

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      // Replace onTap with the `onTap` instance variable.
      onTap: () {
        print('Handle Tap/Click');
      },
      // Replace onLongPress with the `onLongPress` instance variable.
      onLongPress: () {
        print('Handle LongPress');
      },
      child: Container(
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(10),
        ),
        child: child,
      ),
    );
  }
}
