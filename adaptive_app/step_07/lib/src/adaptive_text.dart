// Copyright 2022 The Flutter Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';

class AdaptiveText extends StatelessWidget {
  const AdaptiveText(this.data, {super.key, this.style});
  final String data;
  final TextStyle? style;

  @override
  Widget build(BuildContext context) {
    return switch (Theme.of(context).platform) {
      TargetPlatform.android || TargetPlatform.iOS => Text(data, style: style),
      _ => SelectableText(data, style: style),
    };
  }
}
