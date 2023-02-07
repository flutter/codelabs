// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, use_key_in_widget_constructors

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(5),
      child: DecoratedBox(
        decoration: BoxDecoration(color: Colors.green),
        child: Padding(
          padding: EdgeInsets.all(10),
          child: DecoratedBox(
            decoration: BoxDecoration(color: Colors.purple),
          ),
        ),
      ),
    );
  }
}
