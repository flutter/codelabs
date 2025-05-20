// Copyright 2025 The Flutter Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'dart:async';

import 'package:firebase_ai/firebase_ai.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../firebase_options.dart';
import 'system_prompt.dart';

part 'gemini.g.dart';

@riverpod
Future<FirebaseApp> firebaseApp(Ref ref) =>
    Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

@riverpod
Future<GenerativeModel> geminiModel(Ref ref) async {
  await ref.watch(firebaseAppProvider.future);
  final systemPrompt = await ref.watch(systemPromptProvider.future);

  final model = FirebaseAI.googleAI().generativeModel(
    model: 'gemini-2.0-flash',
    systemInstruction: Content.system(systemPrompt),
  );
  return model;
}

@Riverpod(keepAlive: true)
Future<ChatSession> chatSession(Ref ref) async {
  final model = await ref.watch(geminiModelProvider.future);
  return model.startChat();
}
