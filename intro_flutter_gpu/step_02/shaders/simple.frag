// Copyright 2024 The Flutter Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

#version 460 core

in vec3 vertex_color;
out vec4 frag_color;

void main() {
  frag_color = vec4(vertex_color, 1);
}
