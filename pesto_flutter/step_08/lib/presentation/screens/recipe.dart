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

import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../data/repository/module.dart';

class RecipeScreen extends ConsumerWidget {
  const RecipeScreen({super.key, required this.id});

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
    return Scaffold(
      appBar: AppBar(
        title: Text('Recipe: $id'),
      ),
      body: const Placeholder(),
    );
  }
}
