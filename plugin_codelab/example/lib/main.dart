import 'dart:async';
import 'package:flutter/material.dart';

import 'package:flutter/services.dart';
import 'package:plugin_codelab/plugin_codelab.dart';

enum _KeyType { black, white }

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.landscapeRight])
      .then((_) {
    runApp(MyApp());
  });
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
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
    // Platform messages may fail, so we use a try/catch PlatformException.
    // We also handle the message potentially returning null.
    try {
      platformVersion =
          await PluginCodelab.platformVersion ?? 'Unknown platform version';
    } on PlatformException {
      platformVersion = 'Failed to get platform version.';
    }

    if (!mounted) return;

    setState(() {
      _platformVersion = platformVersion;
    });
  }

  void _onKeyDown(int key) {
    print('key down:$key');
    PluginCodelab.onKeyDown(key).then((value) => print(value));
  }

  void _onKeyUp(int key) {
    print('key up:$key');
    PluginCodelab.onKeyUp(key).then((value) => print(value));
  }

  Widget _makeKey({required _KeyType keyType, required int key}) {
    return AnimatedContainer(
      height: 200,
      width: 44,
      duration: const Duration(seconds: 2),
      curve: Curves.easeIn,
      child: Material(
        color: keyType == _KeyType.white
            ? Colors.white
            : const Color.fromARGB(255, 60, 60, 80),
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
        backgroundColor: const Color.fromARGB(255, 250, 30, 0),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Text('Running on: $_platformVersion\n'),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  _makeKey(keyType: _KeyType.white, key: 60),
                  _makeKey(keyType: _KeyType.black, key: 61),
                  _makeKey(keyType: _KeyType.white, key: 62),
                  _makeKey(keyType: _KeyType.black, key: 63),
                  _makeKey(keyType: _KeyType.white, key: 64),
                  _makeKey(keyType: _KeyType.white, key: 65),
                  _makeKey(keyType: _KeyType.black, key: 66),
                  _makeKey(keyType: _KeyType.white, key: 67),
                  _makeKey(keyType: _KeyType.black, key: 68),
                  _makeKey(keyType: _KeyType.white, key: 69),
                  _makeKey(keyType: _KeyType.black, key: 70),
                  _makeKey(keyType: _KeyType.white, key: 71),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
