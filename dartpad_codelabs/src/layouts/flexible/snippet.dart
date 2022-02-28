// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: DecoratedBox(
          decoration: BoxDecoration(color: Colors.grey),
          child: Row(
            children: [
              Icon(Icons.person),
              Text(
                'This long string of text may cause a layout issue outside a Flexible Widget',
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
