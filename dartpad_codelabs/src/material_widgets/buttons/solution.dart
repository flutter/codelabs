// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, avoid_print
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
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // A button with little visual styling
            TextButton(
              // The function that is executed when a user taps on the button
              onPressed: () => ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text('TextButton Pressed')),
              ),
              child: Text('TextButton'),
            ),
            SizedBox(height: 20),

            // A button with a rounded border
            OutlinedButton(
              // Customize the design of the button with the ButtonStyle
              style: ButtonStyle(
                // Customize the border color with the side property.
                side: MaterialStateProperty.all(
                  BorderSide(color: Colors.orange),
                ),
              ),
              onPressed: () => ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text('OutlinedButton Pressed')),
              ),
              child: Text('OutlinedButton'),
            ),
            SizedBox(height: 20),

            // A button with a background color and drop shadow
            ElevatedButton(
              style: ButtonStyle(
                // Customize or "resolve" the background color depending on the
                // state of the button: pressed, hovered, or default.
                backgroundColor: MaterialStateProperty.resolveWith((states) {
                  if (states.contains(MaterialState.pressed)) {
                    return Colors.yellow;
                  } else if (states.contains(MaterialState.hovered)) {
                    return Colors.green;
                  } else {
                    return Colors.blue;
                  }
                }),
              ),
              onPressed: () => ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text('ElevatedButton Pressed')),
              ),
              child: Text('ElevatedButton'),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('FloatingActionButton Pressed')),
        ),
        child: Icon(Icons.send),
      ),
    );
  }
}
