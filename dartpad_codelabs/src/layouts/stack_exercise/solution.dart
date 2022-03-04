// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final headlineText = Positioned(
      bottom: 24.0,
      left: 24.0,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: Text(
              'Move like a Jellyfish',
              style: Theme.of(context).textTheme.headline5?.copyWith(
                    color: Colors.white,
                  ),
            ),
          ),
          Text(
            'Go with the flow',
            style: TextStyle(
              color: Colors.white,
              fontSize: 16.0,
              fontStyle: FontStyle.italic,
            ),
          ),
        ],
      ),
    );

    return MaterialApp(
      title: 'Stack Em Solution',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        body: Stack(
          children: <Widget>[
            // Since we want the background to take up all available space, we'll
            // use a Position.fill Widget
            Positioned.fill(
              child: Container(
                color: Colors.indigo,
                child: Image.network(
                  'https://picsum.photos/3500/2333?image=1069',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Positioned(
              right: 24.0,
              bottom: 32.0,
              child: Container(
                width: 40.0,
                height: 40.0,
                color: Colors.red,
              ),
            ),
            Positioned(
              right: 20.0,
              bottom: 28.0,
              child: Container(
                width: 40.0,
                height: 40.0,
                color: Colors.green,
              ),
            ),
            Positioned(
              right: 16.0,
              bottom: 24.0,
              child: Container(
                width: 40.0,
                height: 40.0,
                color: Colors.blue,
              ),
            ),
            headlineText,
          ],
        ),
      ),
    );
  }
}
