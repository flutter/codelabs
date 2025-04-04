// Copyright 2025 The Flutter Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:colorist_ui/colorist_ui.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'providers/gemini.dart';
import 'services/gemini_chat_service.dart';

void main() async {
  runApp(ProviderScope(child: MainApp()));
}

class MainApp extends ConsumerWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final model = ref.watch(geminiModelProvider);
    final conversationState = ref.watch(conversationStateProvider);

    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: model.when(
        data:
            (data) => MainScreen(
              conversationState: conversationState,
              notifyColorSelection: (color) {
                ref.read(geminiChatServiceProvider).notifyColorSelection(color);
              },
              sendMessage: (text) {
                ref.read(geminiChatServiceProvider).sendMessage(text);
              },
            ),
        loading: () => LoadingScreen(message: 'Initializing Gemini Model'),
        error: (err, st) => ErrorScreen(error: err),
      ),
    );
  }
}
