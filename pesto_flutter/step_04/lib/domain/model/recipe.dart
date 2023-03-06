import 'package:flutter/material.dart';

/// Base class for all recipes
class Recipe {
  const Recipe({
    required this.imagePath,
    required this.title,
    required this.description,
    this.warnings = const [],
    this.ingredients = const [],
  });

  /// Path to the image asset
  final String imagePath;

  /// Title of the recipe
  final String title;

  /// Description of the recipe
  final String description;

  /// All warnings for this recipe
  final List<RecipeWarning> warnings;

  /// All ingredients for this recipe
  final List<RecipeIngredient> ingredients;

  String get id => title.toLowerCase().replaceAll(' ', '-');
}

/// Recipe warning
class RecipeWarning {
  const RecipeWarning(this.label, this.icon);

  final String label;
  final IconData icon;
}

/// Recipe step
class RecipeIngredient {
  const RecipeIngredient(this.label, this.amount);
  final String label;
  final String amount;
}
