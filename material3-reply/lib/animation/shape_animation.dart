import 'package:flutter/material.dart';

class ShapeAnimation extends CurvedAnimation {
  ShapeAnimation(Animation<double> parent) : super(
    parent: parent,
    curve: const Interval(
      2 / 5, 3 / 5,
      curve: Curves.easeInOutCubicEmphasized
    ),
  );
}
