// Copyright 2023 The Flutter Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';

import '../assets.dart';

class TitleScreen extends StatelessWidget {
  const TitleScreen({super.key});

  final _finalReceiveLightAmt = 0.7;
  final _finalEmitLightAmt = 0.5;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Stack(
          children: [
            /// Bg-Base
            Image.asset(AssetPaths.titleBgBase),

            /// Bg-Receive
            Image.asset(AssetPaths.titleBgReceive),

            /// Mg + Fg
            IgnorePointer(
              child: Stack(
                children: [
                  /// Mg-Base
                  Image.asset(AssetPaths.titleMgBase),

                  /// Mg-Receive
                  Image.asset(AssetPaths.titleMgReceive),

                  /// Mg-Emit
                  Image.asset(AssetPaths.titleMgEmit),

                  /// Fg-Rocks
                  Image.asset(AssetPaths.titleFgBase),

                  /// Fg-Receive
                  Image.asset(AssetPaths.titleFgReceive),

                  /// Fg-Emit
                  Image.asset(AssetPaths.titleFgEmit),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  // ignore: unused_element
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
