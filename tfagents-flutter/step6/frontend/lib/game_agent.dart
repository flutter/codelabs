import 'dart:convert';
import 'dart:io' show Platform;

import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:http/http.dart' as http;

class Inputs {
  final List<double> _boardState;
  Inputs(this._boardState);

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['0/discount'] = [0.0];
    data['0/observation'] = [_boardState];
    data['0/reward'] = [0.0];
    data['0/step_type'] = [0];
    return data;
  }
}

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

    var flattenedBoardState = boardState.expand((i) => i).toList();
    final response = await http.post(
      Uri.parse('http://$server:8501/v1/models/policy_model:predict'),
      body: jsonEncode(<String, dynamic>{
        'signature_name': 'action',
        'instances': [Inputs(flattenedBoardState)]
      }),
    );

    if (response.statusCode == 200) {
      var output = List<int>.from(
          jsonDecode(response.body)['predictions'] as List<dynamic>);
      return output[0];
    } else {
      throw Exception('Error response');
    }
  }
}
