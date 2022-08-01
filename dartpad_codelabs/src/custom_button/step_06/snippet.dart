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
  // Add a new instance variable called "_focusing" here

  @override
  Widget build(BuildContext context) {
    // Wrap the MouseRegion inside a Focus widget. Use the onFocusChange
    // callback to update the _focusing variable.
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      onEnter: (_) => setState(() => _hovering = true),
      onExit: (_) => setState(() => _hovering = false),
      child: GestureDetector(
        onTap: widget.onTap,
        onLongPress: widget.onLongPress,
        child: Container(
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            // Use the _focusing instance variable to change the background
            // color. Use a slightly different color than the _hovering state
            // so you can distinguish between focusing & hovering.
            //
            // Tip: If the code gets a bit messy here, you can always move it to
            // a helper method.
            color: _hovering ? widget.color.withOpacity(0.8) : widget.color,
            borderRadius: BorderRadius.circular(10),
          ),
          child: widget.child,
        ),
      ),
    );
  }
}
