// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      // Add a border to the BoxDecoration!
      decoration: BoxDecoration(),
    );
  }
}
