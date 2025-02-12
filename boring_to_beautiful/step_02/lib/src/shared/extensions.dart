// Copyright 2022 The Flutter Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';
// Add Google Fonts Package import

extension TypographyUtils on BuildContext {
  ThemeData get theme => Theme.of(this);
  TextTheme get textTheme => theme.textTheme; // Modify this line
  ColorScheme get colors => theme.colorScheme;
  TextStyle? get displayLarge =>
      textTheme.displayLarge?.copyWith(color: colors.onSurface);
  TextStyle? get displayMedium =>
      textTheme.displayMedium?.copyWith(color: colors.onSurface);
  TextStyle? get displaySmall =>
      textTheme.displaySmall?.copyWith(color: colors.onSurface);
  TextStyle? get headlineLarge =>
      textTheme.headlineLarge?.copyWith(color: colors.onSurface);
  TextStyle? get headlineMedium =>
      textTheme.headlineMedium?.copyWith(color: colors.onSurface);
  TextStyle? get headlineSmall =>
      textTheme.headlineSmall?.copyWith(color: colors.onSurface);
  TextStyle? get titleLarge =>
      textTheme.titleLarge?.copyWith(color: colors.onSurface);
  TextStyle? get titleMedium =>
      textTheme.titleMedium?.copyWith(color: colors.onSurface);
  TextStyle? get titleSmall =>
      textTheme.titleSmall?.copyWith(color: colors.onSurface);
  TextStyle? get labelLarge =>
      textTheme.labelLarge?.copyWith(color: colors.onSurface);
  TextStyle? get labelMedium =>
      textTheme.labelMedium?.copyWith(color: colors.onSurface);
  TextStyle? get labelSmall =>
      textTheme.labelSmall?.copyWith(color: colors.onSurface);
  TextStyle? get bodyLarge =>
      textTheme.bodyLarge?.copyWith(color: colors.onSurface);
  TextStyle? get bodyMedium =>
      textTheme.bodyMedium?.copyWith(color: colors.onSurface);
  TextStyle? get bodySmall =>
      textTheme.bodySmall?.copyWith(color: colors.onSurface);
}

extension BreakpointUtils on BoxConstraints {
  bool get isTablet => maxWidth > 730;
  bool get isDesktop => maxWidth > 1200;
  bool get isMobile => !isTablet && !isDesktop;
}

extension DurationString on String {
  /// Assumes a string (roughly) of the format '\d{1,2}:\d{2}'
  Duration toDuration() => switch (split(':')) {
    [var minutes, var seconds] => Duration(
      minutes: int.parse(minutes.trim()),
      seconds: int.parse(seconds.trim()),
    ),
    [var hours, var minutes, var seconds] => Duration(
      hours: int.parse(hours.trim()),
      minutes: int.parse(minutes.trim()),
      seconds: int.parse(seconds.trim()),
    ),
    _ => throw Exception('Invalid duration string: $this'),
  };
}

extension HumanizedDuration on Duration {
  String toHumanizedString() {
    final seconds = '${inSeconds % 60}'.padLeft(2, '0');
    String minutes = '${inMinutes % 60}';
    if (inHours > 0 || inMinutes == 0) {
      minutes = minutes.padLeft(2, '0');
    }
    String value = '$minutes:$seconds';
    if (inHours > 0) {
      value = '$inHours:$minutes:$seconds';
    }
    return value;
  }
}
