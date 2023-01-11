// Copyright 2022 The Flutter Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/animation.dart';

class BarAnimation extends ReverseAnimation {
  BarAnimation({required AnimationController parent})
      : super(
          CurvedAnimation(
            parent: parent,
            curve: const Interval(0, 1 / 5),
            reverseCurve: const Interval(1 / 5, 4 / 5),
          ),
        );
}
