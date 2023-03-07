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
import 'package:go_router/go_router.dart';

import '../../domain/model/recipe.dart';

class RecipesScreen extends StatelessWidget {
  const RecipesScreen({super.key});

  final recipes = const [
    Recipe(
      imagePath: 'assets/images/Spinach.png',
      title: 'Spinach Filo Puffs',
      description:
          'Hearty, organic filo puffs that taste just a little better than homemade.',
    ),
    Recipe(
      imagePath: 'assets/images/Beef.png',
      title: 'Beef Pot Pies',
      description:
          'Hearty, organic beef pot pies that taste just a little better than homemade.',
    ),
    Recipe(
      imagePath: 'assets/images/Basil.png',
      title: 'Basil Pesto',
      description:
          'Hearty, organic basil pesto that taste just a little better than homemade.',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Recipes'),
      ),
      body: ListView.builder(
        itemCount: recipes.length,
        itemBuilder: (context, index) {
          final recipe = recipes[index];
          return ListTile(
            leading: Image.asset(recipe.imagePath),
            title: Text(recipe.title),
            subtitle: Text(recipe.description),
            onTap: () => context.push('/recipe/${recipe.id}'),
          );
        },
      ),
    );
  }
}
