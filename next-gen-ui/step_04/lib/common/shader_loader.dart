// Copyright 2023 The Flutter Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'dart:ui';

import 'package:flutter/material.dart';

class ShaderLoader extends StatefulWidget {
  const ShaderLoader({super.key, required this.path, required this.builder});
  final String path;
  final Widget Function(BuildContext context, FragmentShader shader) builder;

  @override
  State<ShaderLoader> createState() => _ShaderLoaderState();
}

class _ShaderLoaderState extends State<ShaderLoader> {
  _ShaderLoaderState();
  FragmentShader? shader;

  @override
  void initState() {
    super.initState();
    _loadShader();
  }

  @override
  void dispose() {
    shader?.dispose();
    super.dispose();
  }

  Future<void> _loadShader() async {
    final program = await FragmentProgram.fromAsset(widget.path);
    setState(() {
      shader = program.fragmentShader();
    });
  }

  @override
  Widget build(BuildContext context) {
    if (shader == null) return const SizedBox.expand();
    return widget.builder(context, shader!);
  }
}
