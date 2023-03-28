// Copyright 2023 The Flutter Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';

import '../assets.dart';
import '../orb_shader/orb_shader_config.dart';
import '../orb_shader/orb_shader_widget.dart';
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
  final _orbKey = GlobalKey<OrbShaderWidgetState>();

  double get _minReceiveLightAmt => .35;
  double get _maxReceiveLightAmt => .7;
  double get _minEmitLightAmt => .5;
  double get _maxEmitLightAmt => 1;

  final _mousePos = ValueNotifier(Offset.zero);

  Color get _emitColor =>
      AppColors.emitColors[_difficultyOverride ?? _difficulty];
  Color get _orbColor =>
      AppColors.orbColors[_difficultyOverride ?? _difficulty];

  int _difficulty = 0;
  int? _difficultyOverride;
  late final _orbEnergy = ValueNotifier<double>(0);
  late final _minOrbEnergy = ValueNotifier<double>(0);

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

  double _getMinEnergyForDifficulty(int difficulty) {
    if (difficulty == 1) {
      return .3;
    } else if (difficulty == 2) {
      return .6;
    }
    return 0;
  }

  @override
  void initState() {
    super.initState();
    _pulseEffect.forward();
    _pulseEffect.addListener(_handlePulseEffectUpdate);
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

  void _handleDifficultyPressed(int value) {
    setState(() => _difficulty = value);
    _bumpMinEnergy();
  }

  Future<void> _bumpMinEnergy() async {
    _minOrbEnergy.value = _getMinEnergyForDifficulty(_difficulty) + .1;
    await Future<void>.delayed(.2.seconds);
    _minOrbEnergy.value = _getMinEnergyForDifficulty(_difficulty);
  }

  void _handleStartPressed() => _bumpMinEnergy();

  void _handleDifficultyFocused(int? value) {
    setState(() {
      _difficultyOverride = value;
      if (value == null) {
        _minOrbEnergy.value = _getMinEnergyForDifficulty(_difficulty);
      } else {
        _minOrbEnergy.value = _getMinEnergyForDifficulty(value);
      }
    });
  }

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
                  Image.asset(AssetPaths.titleBgBase),
                  _buildLitImage(
                    color: orbColor,
                    imgSrc: AssetPaths.titleBgReceive,
                  ),
                  Positioned.fill(
                    child: Stack(
                      children: [
                        OrbShaderWidget(
                          key: _orbKey,
                          mousePos: _mousePos,
                          minEnergy: _minOrbEnergy,
                          config: OrbShaderConfig(
                            ambientLightColor: orbColor,
                            materialColor: orbColor,
                            lightColor: orbColor,
                          ),
                          onUpdate: (energy) => _orbEnergy.value = energy,
                        ),
                      ],
                    ),
                  ),
                  IgnorePointer(
                    child: Stack(
                      children: [
                        _buildLitImage(
                          imgSrc: AssetPaths.titleMgBase,
                          color: orbColor,
                        ),
                        _buildLitImage(
                          imgSrc: AssetPaths.titleMgReceive,
                          color: orbColor,
                        ),
                        _buildLitImage(
                          imgSrc: AssetPaths.titleMgEmit,
                          emit: true,
                          color: emitColor,
                        ),
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
                        Image.asset(AssetPaths.titleFgBase),
                        _buildLitImage(
                          imgSrc: AssetPaths.titleFgReceive,
                          color: orbColor,
                        ),
                        _buildLitImage(
                          imgSrc: AssetPaths.titleFgEmit,
                          emit: true,
                          color: emitColor,
                        ),
                      ],
                    ),
                  ),
                  Positioned.fill(
                    child: TitleScreenUi(
                      difficulty: _difficulty,
                      onDifficultyFocused: _handleDifficultyFocused,
                      onDifficultyPressed: _handleDifficultyPressed,
                      onStartPressed: _handleStartPressed,
                      orbColor: orbColor,
                    ),
                  ),
                ],
              ).animate().fadeIn(duration: 1.seconds, delay: .3.seconds);
            },
          ),
        ),
      ),
    );
  }

  Widget _buildLitImage(
      {required Color color, required String imgSrc, bool emit = false}) {
    final hsl = HSLColor.fromColor(color);
    return ListenableBuilder(
      listenable: _pulseEffect,
      child: Image.asset(imgSrc),
      builder: (context, child) {
        final lightAmt = emit ? _finalEmitLightAmt : _finalReceiveLightAmt;
        return ColorFiltered(
          colorFilter: ColorFilter.mode(
            hsl.withLightness(hsl.lightness * lightAmt).toColor(),
            BlendMode.modulate,
          ),
          child: child,
        );
      },
    );
  }
}

class _AnimatedColors extends StatelessWidget {
  const _AnimatedColors({
    required this.emitColor,
    required this.orbColor,
    required this.builder,
  });

  final Color emitColor;
  final Color orbColor;

  final Widget Function(BuildContext context, Color orbColor, Color emitColor)
      builder;

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
