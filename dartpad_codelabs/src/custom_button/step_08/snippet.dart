// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

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

// Remove this intent! Use the default ActivateIntent and ButtonActivateIntent
// provided by Flutter instead.
class RunTheOnTapCallback extends Intent {}

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
    // Replace the Shorcuts Widget with a FocusableActionDetector
    return Shortcuts(
      shortcuts: {
        SingleActivator(LogicalKeyboardKey.space): RunTheOnTapCallback(),
        SingleActivator(LogicalKeyboardKey.enter): RunTheOnTapCallback(),
      },
      // Replace the Actions Widget with the FocusableActionDetector
      child: Actions(
        actions: {
          RunTheOnTapCallback: CallbackAction(onInvoke: (_) => widget.onTap()),
        },
        // Replace the Focus Widget with the FocusableActionDetector
        child: Focus(
          onFocusChange: (focusing) => setState(() => _focusing = focusing),
          // Replace the MouseRegion Widget with the FocusableActionDetector
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
                  color: color,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: widget.child,
              ),
            ),
          ),
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
