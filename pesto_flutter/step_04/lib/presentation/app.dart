import 'package:flutter/material.dart';

class Pesto extends StatefulWidget {
  const Pesto({super.key});

  @override
  State<Pesto> createState() => _PestoState();
}

class _PestoState extends State<Pesto> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Pesto',
        home: Scaffold(
            appBar: AppBar(title: const Text('Home')),
            body: Text('Pesto Default')));
  }
}
