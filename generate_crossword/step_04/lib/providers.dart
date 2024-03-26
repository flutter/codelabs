// Copyright 2024 The Flutter Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:built_collection/built_collection.dart';
import 'package:flutter/services.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'providers.g.dart';

/// A provider for the wordlist to use when generating the crossword.
@riverpod
Future<BuiltSet<String>> wordList(WordListRef ref) async {
  // This codebase requires that all words consist of lowercase characters
  // in the range 'a'-'z'. Words containing uppercase letters will be
  // lowercased, and words containing runes outside this range will
  // be removed.

  final re = RegExp('^[a-z]+\$');
  final str = await rootBundle.loadString('assets/words.txt');
  return str.split('\n').toBuiltSet().rebuild((b) => b
    ..map((str) => str.toLowerCase().trim())
    ..removeWhere((str) => str.length < 3)
    ..removeWhere((str) => re.stringMatch(str) == null));
}
