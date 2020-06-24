import 'package:flutter/material.dart';
import 'dart:async';

import 'package:flutter/services.dart';
import 'package:PluginCodelab/PluginCodelab.dart';

enum _KeyType { Black, White }

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.landscapeRight])
      .then((_) {
    runApp(new MyApp());
  });
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String _platformVersion = 'Unknown';

  @override
  void initState() {
    super.initState();
    initPlatformState();
  }

  // Platform messages are asynchronous, so we initialize in an async method.
  Future<void> initPlatformState() async {
    String platformVersion;
    try {
      platformVersion = await PluginCodelab.platformVersion;
    } on PlatformException {
      platformVersion = 'Failed to get platform version.';
    }

    if (!mounted) return;

    setState(() {
      _platformVersion = platformVersion;
    });
  }

  void _onKeyDown(int key) {
    print("key down:$key");
    PluginCodelab.onKeyDown(key).then((value) => print(value));
  }

  void _onKeyUp(int key) {
    print("key up:$key");
    PluginCodelab.onKeyUp(key).then((value) => print(value));
  }

  Widget _makeKey({@required _KeyType keyType, @required int key}) {
    return AnimatedContainer(
      height: 200,
      width: 44,
      duration: Duration(seconds: 2),
      curve: Curves.easeIn,
      child: Material(
        color: keyType == _KeyType.White
            ? Colors.white
            : Color.fromARGB(255, 60, 60, 80),
        child: InkWell(
          onTap: () => _onKeyUp(key),
          onTapDown: (details) => _onKeyDown(key),
          onTapCancel: () => _onKeyUp(key),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 250, 30, 0),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Text('Running on: $_platformVersion\n'),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Container(
                  width: 600,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      _makeKey(keyType: _KeyType.White, key: 60),
                      _makeKey(keyType: _KeyType.Black, key: 61),
                      _makeKey(keyType: _KeyType.White, key: 62),
                      _makeKey(keyType: _KeyType.Black, key: 63),
                      _makeKey(keyType: _KeyType.White, key: 64),
                      _makeKey(keyType: _KeyType.White, key: 65),
                      _makeKey(keyType: _KeyType.Black, key: 66),
                      _makeKey(keyType: _KeyType.White, key: 67),
                      _makeKey(keyType: _KeyType.Black, key: 68),
                      _makeKey(keyType: _KeyType.White, key: 69),
                      _makeKey(keyType: _KeyType.Black, key: 70),
                      _makeKey(keyType: _KeyType.White, key: 71),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
