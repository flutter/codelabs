// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: DecoratedBox(
          decoration: BoxDecoration(color: Colors.grey),
          child: Column(
            children: [
              BlueBox(),
              Flexible(
                flex: 1,
                child: BlueBox(),
              ),
              Flexible(
                flex: 2,
                child: BlueBox(),
              ),
            ],
          ),
        ),
      ),
    ),
  );
}

class BlueBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 100,
      height: 100,
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: Colors.blue,
          border: Border.all(),
        ),
      ),
    );
  }
}
