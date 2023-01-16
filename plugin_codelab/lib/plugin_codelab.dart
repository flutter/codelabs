// Copyright 2022 The Flutter Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'dart:async';

import 'package:flutter/services.dart';

class PluginCodelab {
  static const MethodChannel _channel = MethodChannel('plugin_codelab');

  static Future<String?> get platformVersion async {
    final String? version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }

  static Future<int?> onKeyDown(int key) async {
    final int? numNotesOn = await _channel.invokeMethod('onKeyDown', [key]);
    return numNotesOn;
  }

  static Future<int?> onKeyUp(int key) async {
    final int? numNotesOn = await _channel.invokeMethod('onKeyUp', [key]);
    return numNotesOn;
  }
}
