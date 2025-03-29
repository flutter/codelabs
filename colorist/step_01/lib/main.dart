// Copyright 2025 The Flutter Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:colorist_ui/models/message.dart';
import 'package:colorist_ui/providers/chat_state_notifier.dart';
import 'package:colorist_ui/providers/log_state_notifier.dart';
import 'package:colorist_ui/ui/screens/main_screen.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:logging/logging.dart';

void main() async {
  Logger.root.level = Level.ALL;
  Logger.root.onRecord.listen((record) {
    if (kDebugMode) {
      print(
        '${record.loggerName}: ${record.level.name}: '
        '${record.time}: ${record.message}',
      );
    }
  });

  runApp(ProviderScope(child: MainApp()));
}

class MainApp extends ConsumerWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: MainScreen(
        sendMessage: (message) {
          sendMessage(message, ref);
        },
      ),
    );
  }

  // A fake LLM that just echoes back what it receives.
  void sendMessage(String message, WidgetRef ref) {
    final chatStateNotifier = ref.read(chatStateNotifierProvider.notifier);
    final logStateNotifier = ref.read(logStateNotifierProvider.notifier);

    chatStateNotifier.addUserMessage(message);
    logStateNotifier.logUserText(message);
    chatStateNotifier.addLlmMessage(message, MessageState.complete);
    logStateNotifier.logLlmText(message);
  }
}
