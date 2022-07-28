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
            onTap: () => print('Button 1: Handle Tap/Click/Space/Enter'),
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
  bool _focusing = false;

  @override
  Widget build(BuildContext context) {
    // Wrap the FocusableActionDetector in a Semantics widget. Use the Semantics
    // widget to indicate the user is working with a button
    return FocusableActionDetector(
      actions: {
        ActivateIntent: CallbackAction(onInvoke: (_) => widget.onTap()),
        ButtonActivateIntent: CallbackAction(onInvoke: (_) => widget.onTap()),
      },
      onShowFocusHighlight: (focusing) => setState(() => _focusing = focusing),
      mouseCursor: SystemMouseCursors.click,
      onShowHoverHighlight: (hovering) => setState(() => _hovering = hovering),
      child: GestureDetector(
        onTap: widget.onTap,
        onLongPress: widget.onLongPress,
        child: Container(
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(10),
          ),
          child: widget.child,
        ),
      ),
    );
  }

  Color get color {
    if (_hovering) {
      return widget.color.withOpacity(0.75);
    } else if (_focusing) {
      return widget.color.withOpacity(0.5);
    }

    return widget.color;
  }
}
