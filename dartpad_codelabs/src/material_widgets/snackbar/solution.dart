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
      backgroundColor: Colors.grey.shade300,
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text('Home Page Title'),
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: Material(
          elevation: 10,
          shadowColor: Colors.green,
          textStyle: TextStyle(color: Colors.blue),
          child: Center(child: Text('Home Page Content')),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        // Use the ScaffoldMessenger to display a Snackbar when the user taps the FAB
        onPressed: () => ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
              // Configure the material properties: background color and elevation
              backgroundColor: Colors.green,
              elevation: 5,

              // The Message to display to the user
              content: Text('FloatingActionButton Pressed'),

              // Additional action the user may take, such as "Undo". The
              // following action hides all Snackbars when tapped.
              action: SnackBarAction(
                label: 'Undo',
                onPressed: () => ScaffoldMessenger.of(context).clearSnackBars(),
              )),
        ),
        child: Icon(Icons.send),
      ),
    );
  }
}
