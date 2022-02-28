// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        // Convert the Column to a Stack
        body: Stack(
          // Non-positioned children should expand to fill the available space
          fit: StackFit.expand,

          children: [
            // This box is hidden by the text with orange background
            Positioned(top: 10, left: 10, child: BlueBox()),

            // Non-positioned Text with an orange background
            Container(color: Colors.orange, child: Text('A bit of text')),

            // This box sits at the bottom right above the orange background
            Positioned(bottom: 10, right: 10, child: BlueBox()),
          ],
        ),
      ),
    ),
  );
}

class BlueBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 50,
      height: 50,
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: Colors.blue,
          border: Border.all(),
        ),
      ),
    );
  }
}
