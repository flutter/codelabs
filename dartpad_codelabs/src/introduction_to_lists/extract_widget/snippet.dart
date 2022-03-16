// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: ListView.separated(
          itemCount: 500,
          padding: EdgeInsets.all(10),
          itemBuilder: (BuildContext context, int index) {
            // Move or "Extract" this code into a separate widget named ListItem
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
          separatorBuilder: (BuildContext context, int index) {
            return SizedBox(height: 10);
          },
        ),
      ),
    ),
  );
}
