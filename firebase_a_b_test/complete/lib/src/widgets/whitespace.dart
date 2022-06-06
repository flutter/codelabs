import 'package:flutter/material.dart';

class Whitespace extends StatelessWidget {
  const Whitespace({this.width = 0.0, this.height = 0.0, Key? key})
      : super(key: key);

  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    return SizedBox(width: width, height: height);
  }
}
