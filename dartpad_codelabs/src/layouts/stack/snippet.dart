// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        // Convert the Column to a Stack. Play around with fit, alignment and
        // Positioned widgets!
        body: Column(
          children: [
            BlueBox(),
            Text('Text should sit on top of the BlueBox'),
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
