// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        // Use GridView to create a Scrollable grid of content
        body: GridView.builder(
          // Display a list with 600 items
          itemCount: 600,

          // A function that tells Flutter how to create widgets as they're
          // scrolled into view
          itemBuilder: (context, index) {
            return Container(
              color: Colors.blue,
              alignment: Alignment.center,
              child: Text('Item $index'),
            );
          },

          // The class that controls how the items should be displayed. Notice
          // that many of the options passed to the GridView.count constructor
          // are passed here instead
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, // Show 2 items in each row
            mainAxisSpacing:
                10, // 10 pixels of horizontal space between each row
            crossAxisSpacing: 5, // 5 pixels of vertical space between each item
          ),
        ),
      ),
    ),
  );
}
