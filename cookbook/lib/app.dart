import 'package:flutter/material.dart';
import 'package:vgv_flutter_cookbook/main.dart';

@immutable
class App extends StatelessWidget {
  App({Key? key, this.home}) : super(key: key);

  final Widget? home;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Cookbook Examples',
      theme: ThemeData(
        brightness: Brightness.light,
        primaryColor: Colors.blue,
        accentColor: Colors.indigo,
      ),
      home: home ?? const Home(),
    );
  }
}
