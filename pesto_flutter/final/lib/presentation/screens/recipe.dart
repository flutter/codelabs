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

import 'dart:math';

import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../data/repository/module.dart';
import '../../domain/model/recipe.dart';
import '../theme.dart';
import '../widgets/image_theme.dart';

class RecipeScreen extends ConsumerWidget {
  const RecipeScreen({Key? key, required this.id}) : super(key: key);

  final String id;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final recipes = ref.watch(recipesProvider).getRecipes();
    final recipe = recipes.firstWhereOrNull((recipe) => recipe.id == id);

    if (recipe == null) {
      return Scaffold(
        appBar: AppBar(
          title: const Text('Recipe'),
        ),
        body: const Center(
          child: Text('Recipe not found'),
        ),
      );
    }

    return ImageTheme(
      path: recipe.imagePath,
      child: Builder(
        builder: (context) {
          final theme = Theme.of(context);
          final basilTheme = theme.extension<BasilTheme>();
          final typography = theme.textTheme;
          final colors = theme.colorScheme;
          final outlineColor = theme.brightness == Brightness.light
              ? basilTheme?.tertiaryColor
              : colors.tertiary;
          return Scaffold(
            appBar: AppBar(
              title: Transform.scale(
                scale: 0.5,
                child: Image.asset('assets/images/Logo.png'),
              ),
            ),
            body: Scrollbar(
              child: SingleChildScrollView(
                child: Center(
                  child: ConstrainedBox(
                    constraints: const BoxConstraints(maxWidth: 600),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: double.infinity,
                          height: 360,
                          child: DecoratedBox(
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage(recipe.imagePath),
                                fit: BoxFit.cover,
                              ),
                              borderRadius: const BorderRadius.all(
                                Radius.circular(24),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 4, top: 32),
                          child: Text(
                            recipe.title,
                            style: typography.displayLarge!.copyWith(
                              color: outlineColor,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        Text(
                          recipe.description,
                          style: typography.bodyLarge!.copyWith(
                            color: colors.primary,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        Wrap(
                          children: recipe.warnings
                              .map(
                                  (e) => buildWarning(context, e, outlineColor))
                              .toList(),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 4, top: 32),
                          child: Text(
                            'Ingredients',
                            style: typography.displaySmall!.copyWith(
                              color: theme.brightness == Brightness.light
                                  ? basilTheme?.tertiaryColor
                                  : colors.tertiary,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        const SizedBox(height: 4),
                        ...recipe.ingredients
                            .map((e) => buildStep(context, e))
                            .toList(),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            floatingActionButton: FloatingActionButton.extended(
              onPressed: () {},
              icon: const Icon(Icons.restaurant_outlined),
              label: const Text('Start cooking'),
            ),
            floatingActionButtonLocation:
                FloatingActionButtonLocation.centerFloat,
          );
        },
      ),
    );
  }

  Widget buildStep(BuildContext context, RecipeIngredient ingredients) {
    final colors = Theme.of(context).colorScheme;
    return DefaultTextStyle(
      style: Theme.of(context).textTheme.bodyLarge!.copyWith(
            color: colors.primary,
          ),
      child: Row(
        children: [
          const Icon(Icons.add_circle_outline),
          const SizedBox(width: 8),
          Text(
            ingredients.label,
            style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                  fontWeight: FontWeight.bold,
                  color: colors.primary,
                ),
          ),
          const SizedBox(width: 8),
          Expanded(
            child: CustomPaint(
              painter: DashedLinePainter(
                color: colors.primary,
                strokeWidth: 2,
                gap: 3,
              ),
            ),
          ),
          const SizedBox(width: 8),
          Text(
            ingredients.amount,
          ),
        ],
      ),
    );
  }

  Widget buildWarning(
    BuildContext context,
    RecipeWarning warning,
    Color? tertiaryColor,
  ) {
    const double iconSize = 24;
    const double borderWidth = 3;
    final outlineColor = tertiaryColor ?? Theme.of(context).colorScheme.error;
    return Container(
      margin: const EdgeInsets.all(4),
      padding: const EdgeInsets.all(8),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            width: iconSize,
            height: iconSize,
            child: Stack(
              clipBehavior: Clip.none,
              children: [
                Positioned(
                  top: 0,
                  left: 0,
                  bottom: 0,
                  right: 0,
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: outlineColor,
                        width: borderWidth,
                      ),
                      borderRadius: const BorderRadius.all(
                        Radius.circular(iconSize),
                      ),
                    ),
                  ),
                ),
                Positioned.fill(
                  child: Icon(
                    warning.icon,
                    color: Theme.of(context).colorScheme.primary,
                    size: iconSize,
                  ),
                ),
                Positioned(
                  top: 0,
                  left: 0,
                  bottom: 0,
                  right: 0,
                  child: Center(
                    child: Transform.rotate(
                      angle: pi / 7,
                      child: Container(
                        height: borderWidth,
                        width: iconSize,
                        color: outlineColor,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(width: 8),
          Text(
            warning.label,
            style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                  color: outlineColor,
                ),
          ),
        ],
      ),
    );
  }
}

class DashedLinePainter extends CustomPainter {
  final Color color;
  final double strokeWidth;
  final double gap;

  DashedLinePainter({
    required this.color,
    required this.strokeWidth,
    required this.gap,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = color
      ..strokeWidth = strokeWidth
      ..style = PaintingStyle.stroke;

    final dashWidth = strokeWidth + gap;
    final dashCount = (size.width / dashWidth).floor();
    for (var i = 0; i <= dashCount; i++) {
      final dx = i * dashWidth;
      canvas.drawLine(Offset(dx, 0), Offset(dx + strokeWidth, 0), paint);
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
