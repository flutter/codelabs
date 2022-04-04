// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, avoid_print, prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      title: 'My App',
      home: HomePage(),
    ),
  );
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // An indeterminate, green progress indicator
              LinearProgressIndicator(
                color: Colors.green,
                backgroundColor: Colors.green.shade100,
              ),
              SizedBox(height: 50),

              // Provide a value between 0 and 1 to turn any indeterminate
              // progress indicator into a determinate progress indicator
              LinearProgressIndicator(
                value: 0.25,
              ),
              SizedBox(height: 50),

              // A slightly different progress indicator. Provide a value to
              // convert it into a determinate indicator
              CircularProgressIndicator(
                color: Colors.purple,
                strokeWidth: 1,
              )
            ],
          ),
        ),
      ),
    );
  }
}
