// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: ListView.builder(
          // Create a list with 10000 items
          itemCount: 500,

          // Add some padding around the List
          padding: EdgeInsets.all(10),

          // Every time Flutter scrolls another widget on the screen, it uses
          // the following function to build the correct Text widgets.
          itemBuilder: (BuildContext context, int index) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Item $index',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Text('Subtitle', style: TextStyle(color: Colors.grey))
              ],
            );
          },
        ),
      ),
    ),
  );
}
