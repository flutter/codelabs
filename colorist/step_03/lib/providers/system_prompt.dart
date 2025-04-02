// Copyright 2025 The Flutter Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'system_prompt.g.dart';

@riverpod
Future<String> systemPrompt(Ref ref) =>
    rootBundle.loadString('assets/system_prompt.md');
