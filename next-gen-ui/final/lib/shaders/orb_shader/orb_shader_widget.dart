// Copyright 2023 The Flutter Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

import '../../assets.dart';
import '../../common/reactive_widget_builder.dart';
import '../../common/shader_loader.dart';
import 'orb_shader_config.dart';
import 'orb_shader_painter.dart';

class OrbShaderWidget extends StatefulWidget {
  const OrbShaderWidget({
    super.key,
    required this.config,
    this.onUpdate,
    required this.mousePos,
  });

  final OrbShaderConfig config;
  final ValueNotifier<Offset> mousePos;
  final void Function(double energy)? onUpdate;

  @override
  State<OrbShaderWidget> createState() => OrbShaderWidgetState();
}

class OrbShaderWidgetState extends State<OrbShaderWidget>
    with SingleTickerProviderStateMixin {
  final _heartbeatSequence = TweenSequence(
    [
      TweenSequenceItem(
        tween: ConstantTween(0),
        weight: 40,
      ),
      TweenSequenceItem(
        tween: Tween(begin: 0.0, end: 1.0).chain(
          CurveTween(curve: Curves.easeInOutCubic),
        ),
        weight: 8,
      ),
      TweenSequenceItem(
        tween: Tween(begin: 1.0, end: 0.2).chain(
          CurveTween(curve: Curves.easeInOutCubic),
        ),
        weight: 12,
      ),
      TweenSequenceItem(
        tween: Tween(begin: 0.2, end: 0.8).chain(
          CurveTween(curve: Curves.easeInOutCubic),
        ),
        weight: 6,
      ),
      TweenSequenceItem(
        tween: Tween(begin: 0.8, end: 0.0).chain(
          CurveTween(curve: Curves.easeInOutCubic),
        ),
        weight: 10,
      ),
    ],
  );

  late final _heartbeatAnim =
      AnimationController(vsync: this, duration: 3000.ms)..repeat();

  @override
  Widget build(BuildContext context) {
    return ShaderLoader(
      path: AssetPaths.orbShader,
      builder: (_, shader) {
        return ValueListenableBuilder(
          valueListenable: widget.mousePos,
          builder: (_, mousePos, __) => ListenableBuilder(
            listenable: _heartbeatAnim,
            builder: (_, __) {
              final heartbeatEnergy =
                  _heartbeatAnim.drive(_heartbeatSequence).value;
              return ReactiveWidget(
                builder: (context, time, _, size) {
                  double energyLevel = 0;
                  if (size.shortestSide != 0) {
                    final d = (Offset(size.width, size.height) / 2 - mousePos)
                        .distance;
                    final hitSize = size.shortestSide * .5;
                    energyLevel = 1 - min(1, (d / hitSize));
                    scheduleMicrotask(() => widget.onUpdate?.call(energyLevel));
                  }
                  energyLevel += (1.3 - energyLevel) * heartbeatEnergy * 0.2;
                  return CustomPaint(
                    size: size,
                    painter: OrbShaderPainter(
                      shader,
                      config: widget.config,
                      time: time,
                      mousePos: mousePos,
                      energy: energyLevel,
                    ),
                    willChange: true,
                  );
                },
              );
            },
          ),
        );
      },
    );
  }
}
