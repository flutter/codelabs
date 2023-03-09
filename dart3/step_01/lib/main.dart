// Copyright 2023 The Flutter Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const Dart3SampleApp());
}

class Dart3SampleApp extends StatelessWidget {
  const Dart3SampleApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Map<String, dynamic>? json;

  @override
  void initState() {
    parseJson();
    super.initState();
  }

  Future<void> parseJson() async {
    var jsonString = await rootBundle.loadString('assets/data.json');
    var jsonMap = jsonDecode(jsonString);

    setState(() {
      json = jsonMap;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('$json'),
      ),
    );
  }
}
