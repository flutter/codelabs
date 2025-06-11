// Copyright 2022 The Flutter Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';

class ClippedImage extends StatelessWidget {
  const ClippedImage(
    this.image, {
    this.fit,
    this.height,
    this.width,
    super.key,
  });

  final String image;
  final BoxFit? fit;
  final double? width, height;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(8),
      child: Image.asset(
        image,
        fit: fit ?? BoxFit.cover,
        height: height,
        width: width,
      ),
    );
  }
}
