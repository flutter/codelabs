// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        // Add Separators to this ListView!
        body: ListView.builder(
          itemCount: 500,
          padding: EdgeInsets.all(10),
          itemBuilder: (context, index) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Item $index',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Text(
                  'Subtitle',
                  style: TextStyle(color: Colors.grey),
                )
              ],
            );
          },
        ),
      ),
    ),
  );
}
