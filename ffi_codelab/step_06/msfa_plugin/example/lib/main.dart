import 'package:flutter/material.dart';
import 'dart:async';

import 'package:msfa_plugin/msfa_plugin.dart' as msfa_plugin;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  MyAppState createState() => MyAppState();
}

class MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
    msfa_plugin.init();
  }

  @override
  Widget build(BuildContext context) {
    const textStyle = TextStyle(fontSize: 25);
    const spacerSmall = SizedBox(height: 10);
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Native Packages'),
        ),
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(10),
            child: Column(
              children: [
                const Text(
                  'Init`ed libmsfa',
                  style: textStyle,
                  textAlign: TextAlign.center,
                ),
                spacerSmall,
                MaterialButton(
                    child: const Text("send midi"),
                    onPressed: () async {
                      debugPrint("send midi");
                      msfa_plugin.sendMidi([0x90, 0x4c, 0x57]);
                      await Future.delayed(const Duration(seconds: 1));
                      msfa_plugin.sendMidi([0x90, 0x4c, 0x00]);
                    })
              ],
            ),
          ),
        ),
      ),
    );
  }
}
