import 'package:flutter/material.dart';

class Clickable extends StatelessWidget {
  const Clickable({required this.child, required this.onTap, Key? key})
      : super(key: key);

  final Widget child;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        onTap: onTap,
        child: child,
      ),
    );
  }
}
