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
