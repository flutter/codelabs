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
  bool _hovering = false;
  bool _focusing = false; // Let's you know if the widget is focused or not

  @override
  Widget build(BuildContext context) {
    // Focus Widget makes the button selectable via keyboard navigation
    return Focus(
      // If the user "selects" or focuses the button with the keyboard, update
      // the _focusing variable and use setState to rebuild this widget.
      onFocusChange: (focusing) => setState(() => _focusing = focusing),
      child: MouseRegion(
        cursor: SystemMouseCursors.click,
        onEnter: (_) => setState(() => _hovering = true),
        onExit: (_) => setState(() => _hovering = false),
        child: GestureDetector(
          onTap: widget.onTap,
          onLongPress: widget.onLongPress,
          child: Container(
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              // Use a helper method to determine the bacgkround color
              color: color,
              borderRadius: BorderRadius.circular(10),
            ),
            child: widget.child,
          ),
        ),
      ),
    );
  }

  // A helper method that determines the background color of the button
  // depending on whether the user is hovering over or focusing the widget.
  Color get color {
    if (_hovering) {
      return widget.color.withOpacity(0.75);
    } else if (_focusing) {
      return widget.color.withOpacity(0.5);
    }

    return widget.color;
  }
}
