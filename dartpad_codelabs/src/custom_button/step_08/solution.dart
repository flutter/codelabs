// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';

void main() {
  runApp(
    // The MaterialApp widget automatically binds `Space` and `Enter` to
    // ActivateIntent and ButtonActivateIntent under the hood using a Shortcuts
    // widget. Therefore, you do not need to define your own Shortcuts widget
    // that does the same thing.
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
    // Combines the Shortcuts, Actions, Focus, and MouseRegion Widgets into one
    return FocusableActionDetector(
      // Actions Widget Replacement
      actions: {
        // Use Flutter intents in place of the custom intent
        ActivateIntent: CallbackAction(onInvoke: (_) => widget.onTap()),
        ButtonActivateIntent: CallbackAction(onInvoke: (_) => widget.onTap()),
      },

      // Focus Widget Replacement
      onShowFocusHighlight: (focusing) => setState(() => _focusing = focusing),

      // MouseRegion Widget Replacement
      mouseCursor: SystemMouseCursors.click,
      onShowHoverHighlight: (hovering) => setState(() => _hovering = hovering),

      // Rest of Button code
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
