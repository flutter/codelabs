// Copyright 2024 The Flutter Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

#version 460 core

in vec2 position;
in vec2 uv;

out vec2 vertex_uv;

void main() {
  gl_Position = vec4(position, 0.0, 1.0);
  vertex_uv = uv;
}
