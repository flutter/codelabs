// Copyright 2019 Google LLC
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//     https://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'items.dart';
import 'main.dart';

GoRouter _router(Widget? home) {
  return GoRouter(
    routes: <RouteBase>[
      GoRoute(
        path: '/',
        builder: (context, state) {
          return home ?? const Home();
        },
        routes: [
          for (final item in items)
            GoRoute(
              path: item.path,
              builder: (context, _) => item.builder(context),
            )
        ],
      ),
    ],
  );
}

@immutable
class App extends StatelessWidget {
  const App({super.key, this.home});

  final Widget? home;

  @override
  Widget build(BuildContext context) {
    final themeData = ThemeData(
      brightness: Brightness.light,
      primaryColor: Colors.blue,
      useMaterial3: true,
    );
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'Cookbook Examples',
      theme: themeData.copyWith(
          colorScheme:
              themeData.colorScheme.copyWith(secondary: Colors.indigo)),
      routerConfig: _router(home),
    );
  }
}
