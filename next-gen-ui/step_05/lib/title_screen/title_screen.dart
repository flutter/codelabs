// Copyright 2023 The Flutter Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';

import '../assets.dart';
import '../styles.dart';
import 'particle_overlay.dart';
import 'title_screen_ui.dart';

class TitleScreen extends StatefulWidget {
  const TitleScreen({super.key});

  @override
  State<TitleScreen> createState() => _TitleScreenState();
}

class _TitleScreenState extends State<TitleScreen>
    with SingleTickerProviderStateMixin {
  /// Editable Settings
  /// 0-1, receive lighting strength
  double get _minReceiveLightAmt => .35;
  double get _maxReceiveLightAmt => .7;

  /// 0-1, emit lighting strength
  double get _minEmitLightAmt => .5;
  double get _maxEmitLightAmt => 1;

  /// Internal
  final _mousePos = ValueNotifier(Offset.zero);

  Color get _emitColor =>
      AppColors.emitColors[_difficultyOverride ?? _difficulty];
  Color get _orbColor =>
      AppColors.orbColors[_difficultyOverride ?? _difficulty];

  /// Currently selected difficulty
  int _difficulty = 0;

  /// Currently focused difficulty (if any)
  int? _difficultyOverride;

  late final _orbEnergy = ValueNotifier<double>(0)
    ..addListener(() => setState(() {}));

  double get _finalReceiveLightAmt {
    final light = lerpDouble(
            _minReceiveLightAmt, _maxReceiveLightAmt, _orbEnergy.value) ??
        0;
    return light + _pulseEffect.value * .05 * _orbEnergy.value;
  }

  double get _finalEmitLightAmt {
    return lerpDouble(_minEmitLightAmt, _maxEmitLightAmt, _orbEnergy.value) ??
        0;
  }

  late final _pulseEffect = AnimationController(
    vsync: this,
    duration: _getRndPulseDuration(),
    lowerBound: -1,
    upperBound: 1,
  );

  Duration _getRndPulseDuration() => 100.ms + 200.ms * Random().nextDouble();

  @override
  void initState() {
    super.initState();
    _pulseEffect.forward();
    _pulseEffect.addListener(_handlePulseEffectUpdate);
    _pulseEffect.addListener(() => setState(() {}));
  }

  void _handlePulseEffectUpdate() {
    if (_pulseEffect.status == AnimationStatus.completed) {
      _pulseEffect.reverse();
      _pulseEffect.duration = _getRndPulseDuration();
    } else if (_pulseEffect.status == AnimationStatus.dismissed) {
      _pulseEffect.duration = _getRndPulseDuration();
      _pulseEffect.forward();
    }
  }

  void _handleDifficultyPressed(int value) =>
      setState(() => _difficulty = value);

  void _handleDifficultyFocused(int? value) =>
      setState(() => _difficultyOverride = value);

  /// Update mouse position so the orbWidget can use it, doing it here prevents
  /// btns from blocking the mouse-move events in the widget itself.
  void _handleMouseMove(PointerHoverEvent e) =>
      _mousePos.value = e.localPosition;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: MouseRegion(
          onHover: _handleMouseMove,
          child: _AnimatedColors(
            orbColor: _orbColor,
            emitColor: _emitColor,
            builder: (_, orbColor, emitColor) {
              return Stack(
                children: [
                  /// Bg-Base
                  Image.asset(AssetPaths.titleBgBase),

                  /// Bg-Receive
                  _LitImage(
                    energy: _finalReceiveLightAmt,
                    color: orbColor,
                    imgSrc: AssetPaths.titleBgReceive,
                  ),

                  /// Mg + Fg
                  IgnorePointer(
                    child: Stack(
                      children: [
                        /// Mg-Base
                        _LitImage(
                          energy: _finalReceiveLightAmt,
                          color: orbColor,
                          imgSrc: AssetPaths.titleMgBase,
                        ),

                        /// Mg-Receive
                        _LitImage(
                          energy: _finalReceiveLightAmt,
                          color: orbColor,
                          imgSrc: AssetPaths.titleMgReceive,
                        ),

                        /// Mg-Emit
                        _LitImage(
                          energy: _finalEmitLightAmt,
                          color: emitColor,
                          imgSrc: AssetPaths.titleMgEmit,
                        ),

                        /// Particle Field
                        Positioned.fill(
                          child: IgnorePointer(
                            child: ListenableBuilder(
                              listenable: _orbEnergy,
                              builder: (_, __) => ParticleOverlay(
                                color: orbColor,
                                energy: _orbEnergy.value,
                              ),
                            ),
                          ),
                        ),

                        /// Fg-Rocks
                        Image.asset(AssetPaths.titleFgBase),

                        /// Fg-Receive
                        _LitImage(
                          energy: _finalReceiveLightAmt,
                          color: orbColor,
                          imgSrc: AssetPaths.titleFgReceive,
                        ),

                        /// Fg-Emit
                        _LitImage(
                          energy: _finalEmitLightAmt,
                          color: emitColor,
                          imgSrc: AssetPaths.titleFgEmit,
                        ),
                      ],
                    ),
                  ),

                  /// UI
                  Positioned.fill(
                    child: TitleScreenUi(
                      difficulty: _difficulty,
                      onDifficultyFocused: _handleDifficultyFocused,
                      onDifficultyPressed: _handleDifficultyPressed,
                      orbColor: orbColor,
                    ),
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}

typedef _AnimatedColorsBuilder = Widget Function(
    BuildContext context, Color orbColor, Color emitColor);

class _AnimatedColors extends StatelessWidget {
  const _AnimatedColors({
    required this.emitColor,
    required this.orbColor,
    required this.builder,
  });

  final Color emitColor;
  final Color orbColor;
  final _AnimatedColorsBuilder builder;

  @override
  Widget build(BuildContext context) {
    final duration = .5.seconds;
    return TweenAnimationBuilder(
      tween: ColorTween(begin: emitColor, end: emitColor),
      duration: duration,
      builder: (_, emitColor, __) {
        return TweenAnimationBuilder(
          tween: ColorTween(begin: orbColor, end: orbColor),
          duration: duration,
          builder: (context, orbColor, __) {
            return builder(context, orbColor!, emitColor!);
          },
        );
      },
    );
  }
}

class _LitImage extends StatelessWidget {
  const _LitImage({
    required this.energy,
    required this.color,
    required this.imgSrc,
  });

  final double energy;
  final Color color;
  final String imgSrc;

  @override
  Widget build(BuildContext context) {
    final hsl = HSLColor.fromColor(color);

    return ColorFiltered(
      colorFilter: ColorFilter.mode(
          hsl.withLightness(hsl.lightness * energy).toColor(),
          BlendMode.modulate),
      child: Image.asset(imgSrc),
    );
  }
}
