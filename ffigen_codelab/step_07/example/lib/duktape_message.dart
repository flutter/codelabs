// Copyright 2022 The Flutter Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.
import 'package:freezed_annotation/freezed_annotation.dart';

part 'duktape_message.freezed.dart';

@freezed
class DuktapeMessage with _$DuktapeMessage {
  factory DuktapeMessage.evaluate(String code) = DuktapeMessageCode;
  factory DuktapeMessage.response(String result) = DuktapeMessageResponse;
  factory DuktapeMessage.error(String log) = DuktapeMessageError;
}
