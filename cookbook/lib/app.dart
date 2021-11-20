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
import 'main.dart';

@immutable
class App extends StatelessWidget {
  const App({Key? key, this.home}) : super(key: key);

  final Widget? home;

  @override
  Widget build(BuildContext context) {
    final themeData = ThemeData(
      brightness: Brightness.light,
      primaryColor: Colors.blue,
    );
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Cookbook Examples',
      theme: themeData.copyWith(
          colorScheme:
              themeData.colorScheme.copyWith(secondary: Colors.indigo)),
      home: home ?? const Home(),
    );
  }
}
