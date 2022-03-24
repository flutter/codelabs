// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        // Create a ListView.separated instead of ListView.builder
        body: ListView.separated(
          itemCount: 500,
          padding: EdgeInsets.all(10),
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

          // Provide a function to build a SizedBox separator between each item.
          // The separators are also lazily created when they are scrolled into
          // view.
          separatorBuilder: (BuildContext context, int index) {
            return SizedBox(height: 10);
          },
        ),
      ),
    ),
  );
}
