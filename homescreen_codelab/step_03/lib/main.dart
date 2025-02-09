import 'package:flutter/material.dart';

import 'home_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          backgroundColor:
              ColorScheme.fromSeed(
                seedColor: Colors.deepPurple,
              ).primaryContainer,
        ),
        textTheme: const TextTheme(
          titleMedium: TextStyle(fontFamily: 'Chewy', fontSize: 20),
        ),
      ),
      home: const MyHomePage(),
    );
  }
}
