// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: ListView.builder(
          itemCount: 500,
          padding: EdgeInsets.all(10),

          // Replace custom ListItem with a Material Design ListTile. Then, wrap
          // it in a Material Design Card!
          itemBuilder: (context, index) => ListItem(index: index),
        ),
      ),
    ),
  );
}

class ListItem extends StatelessWidget {
  const ListItem({
    super.key,
    required this.index,
  });

  final int index;

  @override
  Widget build(BuildContext context) {
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
  }
}
