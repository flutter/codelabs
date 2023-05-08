// Copyright 2023 Google LLC
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//      http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

import 'package:flutter/material.dart';
import 'package:material_color_utilities/material_color_utilities.dart';

class BasilTheme extends ThemeExtension<BasilTheme> {
  const BasilTheme({
    this.primaryColor = const Color(0xFF356859),
    this.tertiaryColor = const Color(0xFFFF5722),
    this.neutralColor = const Color(0xFFFFFBE6),
  });

  final Color primaryColor;
  final Color tertiaryColor;
  final Color neutralColor;

  Scheme _scheme() {
    final base = CorePalette.of(primaryColor.value);
    final primary = base.primary;
    final tertiary = CorePalette.of(tertiaryColor.value).primary;
    final neutral = CorePalette.of(neutralColor.value).neutral;
    return Scheme(
      primary: primary.get(40),
      onPrimary: primary.get(100),
      primaryContainer: primary.get(90),
      onPrimaryContainer: primary.get(10),
      secondary: base.secondary.get(40),
      onSecondary: base.secondary.get(100),
      secondaryContainer: base.secondary.get(90),
      onSecondaryContainer: base.secondary.get(10),
      tertiary: tertiary.get(40),
      onTertiary: tertiary.get(100),
      tertiaryContainer: tertiary.get(90),
      onTertiaryContainer: tertiary.get(10),
      error: base.error.get(40),
      onError: base.error.get(100),
      errorContainer: base.error.get(90),
      onErrorContainer: base.error.get(10),
      background: neutral.get(99),
      onBackground: neutral.get(10),
      surface: neutral.get(99),
      onSurface: neutral.get(10),
      outline: base.neutralVariant.get(50),
      outlineVariant: base.neutralVariant.get(80),
      surfaceVariant: base.neutralVariant.get(90),
      onSurfaceVariant: base.neutralVariant.get(30),
      shadow: neutral.get(0),
      scrim: neutral.get(0),
      inverseSurface: neutral.get(20),
      inverseOnSurface: neutral.get(95),
      inversePrimary: primary.get(80),
    );
  }

  ThemeData _base(final ColorScheme colorScheme) {
    return ThemeData(
      useMaterial3: true,
      extensions: [this],
      colorScheme: colorScheme,
      visualDensity: VisualDensity.adaptivePlatformDensity,
    );
  }


  @override
  ThemeExtension<BasilTheme> copyWith({
    Color? primaryColor,
    Color? tertiaryColor,
    Color? neutralColor,
  }) =>
      BasilTheme(
        primaryColor: primaryColor ?? this.primaryColor,
        tertiaryColor: tertiaryColor ?? this.tertiaryColor,
        neutralColor: neutralColor ?? this.neutralColor,
      );

  @override
  BasilTheme lerp(
    covariant ThemeExtension<BasilTheme>? other,
    double t,
  ) {
    if (other is! BasilTheme) return this;
    return BasilTheme(
      primaryColor: Color.lerp(primaryColor, other.primaryColor, t)!,
      tertiaryColor: Color.lerp(tertiaryColor, other.tertiaryColor, t)!,
      neutralColor: Color.lerp(neutralColor, other.neutralColor, t)!,
    );
  }

  ThemeData toThemeData() {
    final colorScheme = _scheme().toColorScheme(Brightness.light);
    return _base(colorScheme).copyWith(brightness: colorScheme.brightness);
  }
}

extension on Scheme {
  ColorScheme toColorScheme(Brightness brightness) {
    return ColorScheme(
        primary: Color(primary),
        onPrimary: Color(onPrimary),
        primaryContainer: Color(primaryContainer),
        onPrimaryContainer: Color(onPrimaryContainer),
        secondary: Color(secondary),
        onSecondary: Color(onSecondary),
        secondaryContainer: Color(secondaryContainer),
        onSecondaryContainer: Color(onSecondaryContainer),
        tertiary: Color(tertiary),
        onTertiary: Color(onTertiary),
        tertiaryContainer: Color(tertiaryContainer),
        onTertiaryContainer: Color(onTertiaryContainer),
        error: Color(error),
        onError: Color(onError),
        errorContainer: Color(errorContainer),
        onErrorContainer: Color(onErrorContainer),
        outline: Color(outline),
        outlineVariant: Color(outlineVariant),
        background: Color(background),
        onBackground: Color(onBackground),
        surface: Color(surface),
        onSurface: Color(onSurface),
        surfaceVariant: Color(surfaceVariant),
        onSurfaceVariant: Color(onSurfaceVariant),
        inverseSurface: Color(inverseSurface),
        onInverseSurface: Color(inverseOnSurface),
        inversePrimary: Color(inversePrimary),
        shadow: Color(shadow),
        scrim: Color(scrim),
        surfaceTint: Color(primary),
        brightness: brightness);
  }
}
