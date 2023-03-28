// Copyright 2023 The Flutter Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';

import '../assets.dart';

class TitleScreen extends StatelessWidget {
  const TitleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Stack(
          children: [
            Image.asset(AssetPaths.titleBgBase),
            Image.asset(AssetPaths.titleBgReceive),
            Image.asset(AssetPaths.titleMgBase),
            Image.asset(AssetPaths.titleMgReceive),
            Image.asset(AssetPaths.titleMgEmit),
          ],
        ),
      ),
    );
  }
}
