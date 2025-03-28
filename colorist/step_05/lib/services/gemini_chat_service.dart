// Copyright 2025 The Flutter Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'dart:async';

import 'package:colorist_ui/models/message.dart';
import 'package:colorist_ui/providers/chat_state_notifier.dart';
import 'package:colorist_ui/providers/log_state_notifier.dart';
import 'package:firebase_vertexai/firebase_vertexai.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../providers/gemini.dart';
import 'gemini_tools.dart';

part 'gemini_chat_service.g.dart';

class GeminiChatService {
  GeminiChatService(this.ref);
  final Ref ref;

  Future<void> sendMessage(String message) async {
    final chatSession = await ref.read(chatSessionProvider.future);
    final chatStateNotifier = ref.read(chatStateNotifierProvider.notifier);
    final logStateNotifier = ref.read(logStateNotifierProvider.notifier);

    chatStateNotifier.addUserMessage(message);
    logStateNotifier.logUserText(message);
    try {
      final response = await chatSession.sendMessage(Content.text(message));
      final responseText = response.text?.trim() ?? 'No text response received';
      logStateNotifier.logLlmText(responseText);
      chatStateNotifier.addLlmMessage(responseText, MessageState.complete);

      if (response.functionCalls.isNotEmpty) {
        final geminiTools = ref.read(geminiToolsProvider);
        for (final functionCall in response.functionCalls) {
          geminiTools.handleFunctionCall(functionCall.name, functionCall.args);
        }
      }
    } catch (e, st) {
      logStateNotifier.logError(e, st: st);
    }
  }
}

@riverpod
GeminiChatService geminiChatService(Ref ref) => GeminiChatService(ref);
