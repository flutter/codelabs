// Copyright 2022 The Flutter Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';

class ArticleContent extends StatelessWidget {
  const ArticleContent({
    super.key,
    required this.child,
    this.maxWidth = 960,
  });

  final double maxWidth;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topCenter,
      child: ConstrainedBox(
        constraints: BoxConstraints(
          maxWidth: maxWidth,
        ),
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: child,
        ),
      ),
    );
  }
}
