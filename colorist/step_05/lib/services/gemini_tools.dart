// Copyright 2025 The Flutter Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:colorist_ui/colorist_ui.dart';
import 'package:firebase_vertexai/firebase_vertexai.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'gemini_tools.g.dart';

class GeminiTools {
  GeminiTools(this.ref);

  final Ref ref;

  FunctionDeclaration get setColorFuncDecl => FunctionDeclaration(
    'set_color',
    'Set the color of the display square based on red, green, and blue values.',
    parameters: {
      'red': Schema.number(description: 'Red component value (0.0 - 1.0)'),
      'green': Schema.number(description: 'Green component value (0.0 - 1.0)'),
      'blue': Schema.number(description: 'Blue component value (0.0 - 1.0)'),
    },
  );

  List<Tool> get tools => [
    Tool.functionDeclarations([setColorFuncDecl]),
  ];

  Map<String, Object?> handleFunctionCall(
    String functionName,
    Map<String, Object?> arguments,
  ) {
    final logStateNotifier = ref.read(logStateNotifierProvider.notifier);
    logStateNotifier.logFunctionCall(functionName, arguments);
    return switch (functionName) {
      'set_color' => handleSetColor(arguments),
      _ => handleUnknownFunction(functionName),
    };
  }

  Map<String, Object?> handleSetColor(Map<String, Object?> arguments) {
    final colorStateNotifier = ref.read(colorStateNotifierProvider.notifier);
    final red = (arguments['red'] as num).toDouble();
    final green = (arguments['green'] as num).toDouble();
    final blue = (arguments['blue'] as num).toDouble();
    final functionResults = {
      'success': true,
      'current_color':
          colorStateNotifier
              .updateColor(red: red, green: green, blue: blue)
              .toLLMContextMap(),
    };

    final logStateNotifier = ref.read(logStateNotifierProvider.notifier);
    logStateNotifier.logFunctionResults(functionResults);
    return functionResults;
  }

  Map<String, Object?> handleUnknownFunction(String functionName) {
    final logStateNotifier = ref.read(logStateNotifierProvider.notifier);
    logStateNotifier.logWarning('Unsupported function call $functionName');
    return {
      'success': false,
      'reason': 'Unsupported function call $functionName',
    };
  }
}

@riverpod
GeminiTools geminiTools(Ref ref) => GeminiTools(ref);
