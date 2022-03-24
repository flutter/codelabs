// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: ListView.builder(
          itemCount: 500,
          padding: EdgeInsets.all(10),
          itemBuilder: (context, index) {
            return Card(
              child: ListTile(
                leading: Icon(Icons.person),
                title: Text('Item $index'),
                subtitle: Text('Subtitle'),
              ),
            );
          },
        ),
      ),
    ),
  );
}
