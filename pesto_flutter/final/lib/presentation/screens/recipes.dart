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
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../data/repository/module.dart';
import '../../domain/model/recipe.dart';
import '../widgets/adaptive_cards.dart';
import '../widgets/filter_list.dart';

class RecipesScreen extends ConsumerWidget {
  const RecipesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final recipes = ref.watch(recipesProvider).getRecipes();
    final hasDrawer = Scaffold.of(context).hasDrawer;
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Image.asset('assets/images/Logo.png'),
          leading: hasDrawer
              ? IconButton(
                  icon: const Icon(Icons.menu),
                  onPressed: () => Scaffold.of(context).openDrawer(),
                )
              : null,
          toolbarHeight: 100,
          bottom: const TabBar(
            tabs: [
              Tab(text: 'All Recipes'),
              Tab(text: 'Favorites'),
            ],
          ),
        ),
        body: TabBarView(
          physics: const NeverScrollableScrollPhysics(),
          children: [
            buildRecipes(context, recipes),
            buildRecipes(context, recipes),
          ],
        ),
      ),
    );
  }

  Widget buildRecipes(BuildContext context, List<Recipe> recipes) {
    return Column(
      children: [
        const SizedBox(
          height: 50,
          child: FilterList(
            allFilters: ['Appetizers', 'Entrees', 'Desserts', 'Cocktails'],
            activeFilters: ['Appetizers', 'Entrees'],
          ),
        ),
        Expanded(
          child: AdaptiveCards(
            cardWidth: 372,
            cards: [
              for (final recipe in recipes)
                InkWell(
                  borderRadius: const BorderRadius.all(
                    Radius.circular(24),
                  ),
                  onTap: () => context.push('/recipe/${recipe.id}'),
                  child: AdaptiveCard(
                    title: recipe.title,
                    subtitle: recipe.description,
                    imagePath: recipe.imagePath,
                  ),
                ),
            ],
          ),
        ),
      ],
    );
  }
}
