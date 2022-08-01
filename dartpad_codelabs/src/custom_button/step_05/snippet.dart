// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: Center(
          child: CustomButton(
            color: Colors.cyan,
            child: Text("Button 1"),
            onTap: () => print('Button 1: Handle Tap/Click'),
            onLongPress: () => print('Button 1: Handle LongPress'),
          ),
        ),
      ),
    ),
  );
}

// Convert the CustomButton into a Stateful Widget. Tip: Place the text cursor
// inside the word CustomButton. Then, press alt + enter (mac/windows) or
// option + return (mac) to bring up a code completion menu. Select the
// "Convert to StatefulWidget" command.
class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.child,
    required this.onTap,
    required this.onLongPress,
    this.color = Colors.blue,
  });

  final Color color;
  final Widget child;
  final VoidCallback onTap;
  final VoidCallback onLongPress;

  @override
  Widget build(BuildContext context) {
    // Wrap everything in a MouseRegion widget and set an appropriate cursor.
    // Use the onEnter and onExit callback functions to manage _hovering
    // state.
    return GestureDetector(
      onTap: onTap,
      onLongPress: onLongPress,
      child: Container(
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          // Change the background color depending on whether or not the user
          // is hovering over the button
          color: color,
          borderRadius: BorderRadius.circular(10),
        ),
        child: child,
      ),
    );
  }
}
