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

import 'router.dart';
import 'theme.dart';

class Pesto extends StatefulWidget {
  const Pesto({super.key});

  @override
  State<Pesto> createState() => _PestoState();
}

class _PestoState extends State<Pesto> {
  late final router = buildRouter();
  final theme = BasilTheme();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Pesto',
      theme: theme.toThemeData(),
      routerDelegate: router.routerDelegate,
      routeInformationParser: router.routeInformationParser,
      routeInformationProvider: router.routeInformationProvider,
      debugShowCheckedModeBanner: false,
    );
  }
}