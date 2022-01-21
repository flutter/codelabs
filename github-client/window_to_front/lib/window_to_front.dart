
import 'dart:async';

import 'package:flutter/services.dart';

class WindowToFront {
  static const MethodChannel _channel = MethodChannel('window_to_front');

  static Future<String?> get platformVersion async {
    final String? version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }
}
