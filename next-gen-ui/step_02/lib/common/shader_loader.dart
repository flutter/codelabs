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
  FragmentProgram? program;
  FragmentShader? shader;

  @override
  void initState() {
    super.initState();
    _loadShader();
  }

  Future<void> _loadShader() async {
    program = await FragmentProgram.fromAsset(widget.path);
    shader = program!.fragmentShader();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    if (shader == null) return const SizedBox.expand();
    return widget.builder.call(context, shader!);
  }
}
