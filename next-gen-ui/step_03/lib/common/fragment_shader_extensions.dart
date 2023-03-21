// Copyright 2023 The Flutter Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'dart:ui';

extension FragmentShaderExtensions on FragmentShader {
  int setDouble(int i, double a) {
    setFloat(i, a);
    return i + 1;
  }

  int setVec2(int i, double a, double b) {
    setFloat(i + 0, a);
    setFloat(i + 1, b);
    return i + 2;
  }

  int setVec3(int i, double a, double b, double c) {
    setFloat(i + 0, a);
    setFloat(i + 1, b);
    setFloat(i + 2, c);
    return i + 3;
  }

  int setVec4(int i, double a, double b, double c, double d) {
    setFloat(i + 0, a);
    setFloat(i + 1, b);
    setFloat(i + 2, c);
    setFloat(i + 3, d);
    return i + 4;
  }

  int setOffset(int i, Offset offset) {
    return setVec2(i, offset.dx, offset.dy);
  }

  int setSize(int i, Size size) {
    return setVec2(i, size.width, size.height);
  }

  int setColor(int i, Color color) {
    Color c = color;
    return setVec4(i, c.red / 255, c.green / 255, c.blue / 255, c.alpha / 255);
  }
}
