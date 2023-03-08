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
import 'package:palette_generator/palette_generator.dart';

/// See also: https://github.com/flutter/flutter/issues/119333
class ImageTheme extends StatelessWidget {
  const ImageTheme({
    super.key,
    required this.path,
    required this.child,
  });
  final String path;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return FutureBuilder(
      future: colorSchemeFromImage(theme.colorScheme, path),
      builder: (context, snapshot) {
        final scheme = snapshot.data ?? theme.colorScheme;
        return Theme(
          data: theme.copyWith(colorScheme: scheme),
          child: child,
        );
      },
    );
  }

  Future<List<Color>?> sourceColorsFromImage(String path) async {
    try {
      final pixels = await imageToPixels(path);
      if (pixels == null || pixels.isEmpty) return null;
      final result = await QuantizerCelebi().quantize(pixels, 128);
      final ranked = Score.score(result.colorToCount);
      return ranked.map((e) => Color(e)).toList();
    } catch (e) {
      return null;
    }
  }

  Future<List<int>?> imageToPixels(String path) async {
    try {
      final provider = await PaletteGenerator.fromImageProvider(
        AssetImage(path),
      );
      return provider.colors.map((e) => e.value).toList();
    } catch (e) {
      debugPrint('error converting image to pixels: $e');
      return null;
    }
  }

  Future<ColorScheme> colorSchemeFromImage(
    ColorScheme base,
    String path,
  ) async {
    final colors = await sourceColorsFromImage(path);
    if (colors == null || colors.isEmpty) return base;
    final to = base.primary.value;
    final from = colors[0].value;
    final blended = Color(Blend.harmonize(from, to));
    final scheme = ColorScheme.fromSeed(
      seedColor: blended,
      brightness: base.brightness,
    );
    return scheme;
  }
}
