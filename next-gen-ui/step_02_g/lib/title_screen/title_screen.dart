// Copyright 2023 The Flutter Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';

import '../assets.dart';
import '../styles.dart';

class TitleScreen extends StatelessWidget {
  const TitleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final orbColor = AppColors.orbColors[0];
    final emitColor = AppColors.emitColors[0];
    const finalReceiveLightAmt = 0.7;
    const finalEmitLightAmt = 0.5;

    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Stack(
          children: [
            /// Bg-Base
            Image.asset(AssetPaths.titleBgBase),

            /// Bg-Receive
            _LitImage(
              energy: finalReceiveLightAmt,
              color: orbColor,
              imgSrc: AssetPaths.titleBgReceive,
            ),

            /// Mg + Fg
            IgnorePointer(
              child: Stack(
                children: [
                  /// Mg-Base
                  _LitImage(
                    energy: finalReceiveLightAmt,
                    color: orbColor,
                    imgSrc: AssetPaths.titleMgBase,
                  ),

                  /// Mg-Receive
                  _LitImage(
                    energy: finalReceiveLightAmt,
                    color: orbColor,
                    imgSrc: AssetPaths.titleMgReceive,
                  ),

                  /// Mg-Emit
                  _LitImage(
                    energy: finalEmitLightAmt,
                    color: emitColor,
                    imgSrc: AssetPaths.titleMgEmit,
                  ),

                  /// Fg-Rocks
                  Image.asset(AssetPaths.titleFgBase),

                  /// Fg-Receive
                  _LitImage(
                    energy: finalReceiveLightAmt,
                    color: orbColor,
                    imgSrc: AssetPaths.titleFgReceive,
                  ),

                  /// Fg-Emit
                  _LitImage(
                    energy: finalEmitLightAmt,
                    color: emitColor,
                    imgSrc: AssetPaths.titleFgEmit,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
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
