// Copyright 2022 The Flutter Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

enum _MenuOptions { navigationDelegate }

class Menu extends StatelessWidget {
  const Menu({required this.controller, super.key});

  final WebViewController controller;

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<_MenuOptions>(
      onSelected: (value) async {
        switch (value) {
          case _MenuOptions.navigationDelegate:
            await controller.loadRequest(Uri.parse('https://youtube.com'));
        }
      },
      itemBuilder:
          (context) => [
            const PopupMenuItem<_MenuOptions>(
              value: _MenuOptions.navigationDelegate,
              child: Text('Navigate to YouTube'),
            ),
          ],
    );
  }
}
