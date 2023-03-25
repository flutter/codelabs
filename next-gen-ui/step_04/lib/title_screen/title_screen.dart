// Copyright 2023 The Flutter Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

import '../assets.dart';
import '../styles.dart';
import 'title_screen_ui.dart';

class TitleScreen extends StatefulWidget {
  const TitleScreen({super.key});

  @override
  State<TitleScreen> createState() => _TitleScreenState();
}

class _TitleScreenState extends State<TitleScreen> {
  Color get _emitColor =>
      AppColors.emitColors[_difficultyOverride ?? _difficulty];
  Color get _orbColor =>
      AppColors.orbColors[_difficultyOverride ?? _difficulty];

  /// Currently selected difficulty
  int _difficulty = 0;

  /// Currently focused difficulty (if any)
  int? _difficultyOverride;

  void _handleDifficultyPressed(int value) {
    setState(() => _difficulty = value);
  }

  void _handleDifficultyFocused(int? value) {
    setState(() => _difficultyOverride = value);
  }

  final _finalReceiveLightAmt = 0.7;
  final _finalEmitLightAmt = 0.5;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: _AnimatedColors(
          orbColor: _orbColor,
          emitColor: _emitColor,
          builder: (_, orbColor, emitColor) {
            return Stack(
              children: [
                /// Bg-Base
                Image.asset(AssetPaths.titleBgBase),

                /// Bg-Receive
                _buildLitImage(
                  color: orbColor,
                  imgSrc: AssetPaths.titleBgReceive,
                ),

                /// Mg + Fg
                IgnorePointer(
                  child: Stack(
                    children: [
                      /// Mg-Base
                      _buildLitImage(
                        imgSrc: AssetPaths.titleMgBase,
                        color: orbColor,
                      ),

                      /// Mg-Receive
                      _buildLitImage(
                        imgSrc: AssetPaths.titleMgReceive,
                        color: orbColor,
                      ),

                      /// Mg-Emit
                      _buildLitImage(
                        imgSrc: AssetPaths.titleMgEmit,
                        emit: true,
                        color: emitColor,
                      ),

                      /// Fg-Rocks
                      Image.asset(AssetPaths.titleFgBase),

                      /// Fg-Receive
                      _buildLitImage(
                        imgSrc: AssetPaths.titleFgReceive,
                        color: orbColor,
                      ),

                      /// Fg-Emit
                      _buildLitImage(
                        imgSrc: AssetPaths.titleFgEmit,
                        emit: true,
                        color: emitColor,
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
                    onStartPressed: () {},
                    orbColor: orbColor,
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }

  Widget _buildLitImage(
      {required Color color, required String imgSrc, bool emit = false}) {
    final hsl = HSLColor.fromColor(color);
    final lightAmt = emit ? _finalEmitLightAmt : _finalReceiveLightAmt;

    return ColorFiltered(
      colorFilter: ColorFilter.mode(
        hsl.withLightness(hsl.lightness * lightAmt).toColor(),
        BlendMode.modulate,
      ),
      child: Image.asset(imgSrc),
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
