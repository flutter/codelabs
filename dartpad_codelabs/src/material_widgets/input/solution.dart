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
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            // A "filled" TextField that accepts an email address
            TextField(
              decoration: InputDecoration(
                label: Text('Email'),
                hintText: 'test@example.com',
                icon: Icon(Icons.email),
              ),
            ),
            // This SizedBox puts a bit of space between the two TextFields
            SizedBox(height: 20),

            // "Outlined" textField accepts the password
            TextField(
              // obscureText hides the text on screen from prying eyes
              obscureText: true,
              decoration: InputDecoration(
                label: Text('Password'),
                icon: Icon(Icons.password),
                // The second TextField displays a border around the input
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
