import 'package:flutter/material.dart';

LinearGradient shimmerGradient = const LinearGradient(
  colors: <Color>[Color(0xFFEBEBF4), Color(0xFFF4F4F4), Color(0xFFEBEBF4)],
  stops: <double>[0.1, 0.3, 0.4],
  begin: Alignment(-1.0, -0.3),
  end: Alignment(1.0, 0.3),
);
