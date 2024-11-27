// Copyright 2024 The Flutter Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter_gpu/gpu.dart' as gpu;

const String _kShaderBundlePath =
    'build/shaderbundles/my_first_triangle.shaderbundle';

gpu.ShaderLibrary? _shaderLibrary;

gpu.ShaderLibrary get shaderLibrary {
  _shaderLibrary ??= gpu.ShaderLibrary.fromAsset(_kShaderBundlePath);

  try {
    return _shaderLibrary!;
  } catch (e) {
    throw Exception('Failed to load shader bundle! ($_kShaderBundlePath)');
  }
}
