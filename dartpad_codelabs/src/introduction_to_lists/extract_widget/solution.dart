// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: ListView.separated(
          itemCount: 500,
          padding: EdgeInsets.all(10),

          // Use the ListItem widget in place of Column code.
          itemBuilder: (context, index) => ListItem(index: index),

          separatorBuilder: (context, index) => SizedBox(height: 10),
        ),
      ),
    ),
  );
}

// A reusable widget that contains all of the code to lay out each item.
class ListItem extends StatelessWidget {
  const ListItem({
    super.key,
    // Accept the index as part of the constructor
    required this.index,
  });

  // Use an instance variable to store the index
  final int index;

  @override
  Widget build(BuildContext context) {
    // Move the Column code from the itemBuilder function into this build method
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Use the stored index to display the correct Text widget
        Text(
          'Item $index',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        Text('Subtitle', style: TextStyle(color: Colors.grey))
      ],
    );
  }
}
