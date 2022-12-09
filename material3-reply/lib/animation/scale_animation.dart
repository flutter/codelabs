import 'package:flutter/material.dart';

class ScaleAnimation extends CurvedAnimation {
  ScaleAnimation(Animation<double> parent) : super(
    parent: parent,
    curve: const Interval(
      3 / 5, 4 / 5,
      curve: Curves.easeInOutCubicEmphasized
    ),
    reverseCurve: Interval(
      3 / 5, 1,
      curve: Curves.easeInOutCubicEmphasized.flipped,
    ),
  );
}
