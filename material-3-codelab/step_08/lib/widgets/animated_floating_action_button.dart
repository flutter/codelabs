// Copyright 2022 The Flutter Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'dart:ui';

import 'package:flutter/material.dart';
import '../animations.dart';

class AnimatedFloatingActionButton extends StatefulWidget {
  const AnimatedFloatingActionButton({
    super.key,
    required this.animation,
    this.elevation,
    this.onPressed,
    this.child,
  });

  final Animation<double> animation;
  final VoidCallback? onPressed;
  final Widget? child;
  final double? elevation;

  @override
  State<AnimatedFloatingActionButton> createState() =>
      _AnimatedFloatingActionButton();
}

class _AnimatedFloatingActionButton
    extends State<AnimatedFloatingActionButton> {
  late final ColorScheme colorScheme = Theme.of(context).colorScheme;
  late final Animation<double> scaleAnimation =
      ScaleAnimation(parent: widget.animation);
  late final Animation<double> shapeAnimation =
      ShapeAnimation(parent: widget.animation);

  @override
  Widget build(BuildContext context) {
    return ScaleTransition(
      scale: scaleAnimation,
      child: FloatingActionButton(
        elevation: widget.elevation,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(lerpDouble(30, 15, shapeAnimation.value)!),
          ),
        ),
        backgroundColor: colorScheme.tertiaryContainer,
        foregroundColor: colorScheme.onTertiaryContainer,
        onPressed: widget.onPressed,
        child: widget.child,
      ),
    );
  }
}
