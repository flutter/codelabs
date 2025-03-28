// Copyright 2025 The Flutter Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'dart:async';

import 'package:colorist_ui/models/conversation_state.dart';
import 'package:colorist_ui/providers/chat_state_notifier.dart';
import 'package:colorist_ui/providers/log_state_notifier.dart';
import 'package:firebase_vertexai/firebase_vertexai.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../providers/gemini.dart';
import 'gemini_tools.dart';

part 'gemini_chat_service.g.dart';

final conversationStateProvider = StateProvider(
  (ref) => ConversationState.idle,
);

class GeminiChatService {
  GeminiChatService(this.ref);
  final Ref ref;

  Future<void> sendMessage(String message) async {
    final chatSession = await ref.read(chatSessionProvider.future);
    final conversationState = ref.read(conversationStateProvider);
    final chatStateNotifier = ref.read(chatStateNotifierProvider.notifier);
    final logStateNotifier = ref.read(logStateNotifierProvider.notifier);

    if (conversationState == ConversationState.busy) {
      logStateNotifier.logWarning(
        "Can't send a message while a conversation is in progress",
      );
      throw Exception(
        "Can't send a message while a conversation is in progress",
      );
    }
    final conversationStateNotifier = ref.read(
      conversationStateProvider.notifier,
    );
    conversationStateNotifier.state = ConversationState.busy;
    chatStateNotifier.addUserMessage(message);
    logStateNotifier.logUserText(message);
    final llmMessage = chatStateNotifier.createLlmMessage();
    try {
      final responseStream = chatSession.sendMessageStream(
        Content.text(message),
      );
      await for (final block in responseStream) {
        _processBlock(block, llmMessage.id);
      }
    } catch (e, st) {
      logStateNotifier.logError(e, st: st);
      chatStateNotifier.appendToMessage(
        llmMessage.id,
        "\nI'm sorry, I encountered an error processing your request. Please try again.",
      );
    } finally {
      chatStateNotifier.finalizeMessage(llmMessage.id);
      conversationStateNotifier.state = ConversationState.idle;
    }
  }

  void _processBlock(GenerateContentResponse block, String llmMessageId) {
    var blockText = block.text;
    if (blockText != null) {
      final chatStateNotifier = ref.read(chatStateNotifierProvider.notifier);
      final logStateNotifier = ref.read(logStateNotifierProvider.notifier);
      logStateNotifier.logLlmText(blockText);
      chatStateNotifier.appendToMessage(llmMessageId, blockText);
    }

    if (block.functionCalls.isNotEmpty) {
      final geminiTools = ref.read(geminiToolsProvider);
      for (final functionCall in block.functionCalls) {
        geminiTools.handleFunctionCall(functionCall.name, functionCall.args);
      }
    }
  }
}

@riverpod
GeminiChatService geminiChatService(Ref ref) => GeminiChatService(ref);
