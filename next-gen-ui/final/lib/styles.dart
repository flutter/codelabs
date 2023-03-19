// Copyright 2023 The Flutter Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';

class TextStyles {
  static const _font1 = TextStyle(fontFamily: 'Exo', color: Colors.white);

  static TextStyle get h1 => _font1.copyWith(
      fontSize: 75, letterSpacing: 35, fontWeight: FontWeight.w700);
  static TextStyle get h2 => h1.copyWith(fontSize: 40, letterSpacing: 0);
  static TextStyle get h3 =>
      h1.copyWith(fontSize: 24, letterSpacing: 20, fontWeight: FontWeight.w400);
  static TextStyle get body => _font1.copyWith(fontSize: 16);
  static TextStyle get btn => _font1.copyWith(
        fontSize: 16,
        fontWeight: FontWeight.bold,
        letterSpacing: 10,
      );
}

class AppColors {
  static final orbColors = [
    const Color(0xFF71FDBF),
    const Color(0xFFCE33FF),
    const Color(0xFFFF5033),
  ];

  static final emitColors = [
    const Color(0xFF96FF33),
    const Color(0xFF00FFFF),
    const Color(0xFFFF993E),
  ];
}
