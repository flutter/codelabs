import 'package:flutter/material.dart';

import 'app.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Haiku Generator Demo',
      theme: ThemeData(),
      home: const HaikuPage(title: 'Haiku generator for Google products'),
    );
  }
}
