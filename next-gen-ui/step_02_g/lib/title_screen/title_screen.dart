// Copyright 2023 The Flutter Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';

import '../assets.dart';
import '../styles.dart';

class TitleScreen extends StatelessWidget {
  const TitleScreen({super.key});

  final _finalReceiveLightAmt = 0.7;
  final _finalEmitLightAmt = 0.5;

  @override
  Widget build(BuildContext context) {
    final orbColor = AppColors.orbColors[0];
    final emitColor = AppColors.emitColors[0];

    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Stack(
          children: [
            Image.asset(AssetPaths.titleBgBase),
            _buildLitImage(
              color: orbColor,
              imgSrc: AssetPaths.titleBgReceive,
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
          ],
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
