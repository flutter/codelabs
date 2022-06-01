import 'dart:convert';
import 'dart:io' show Platform;

import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:http/http.dart' as http;

// TODO: add class definition for inputs

class TFAgentsAgent {
  TFAgentsAgent();

  Future<int> predict(List<List<double>> boardState) async {
    String server = '';
    if (!kIsWeb && Platform.isAndroid) {
      // For Android emulator
      server = '10.0.2.2';
    } else {
      // For iOS emulator, desktop and web platforms
      server = '127.0.0.1';
    }

    // TODO: add code to predict next strike position
    return 0;
  }
}
