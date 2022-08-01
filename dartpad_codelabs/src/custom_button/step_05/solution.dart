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

// CustomButton converted into a StatefulWidget
class CustomButton extends StatefulWidget {
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
  State<CustomButton> createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {
  // Variable to keep track of whether the user is hovering over the button or
  // not. Use this information to update the background color.
  bool _hovering = false;

  @override
  Widget build(BuildContext context) {
    // Use the MouseRegion to set the cursor
    return MouseRegion(
      cursor: SystemMouseCursors.click,

      // Update the _hovering instance variable when a user starts and stops
      // hovering over the button
      onEnter: (_) => setState(() => _hovering = true),
      onExit: (_) => setState(() => _hovering = false),

      child: GestureDetector(
        onTap: widget.onTap,
        onLongPress: widget.onLongPress,
        child: Container(
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            // If the user is hovering over the button, change the background
            // color!
            color: _hovering ? widget.color.withOpacity(0.8) : widget.color,
            borderRadius: BorderRadius.circular(10),
          ),
          child: widget.child,
        ),
      ),
    );
  }
}
