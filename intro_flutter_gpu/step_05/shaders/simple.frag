// Copyright 2024 The Flutter Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

#version 460 core

in vec2 vertex_uv;
out vec4 frag_color;

const vec4 red = vec4(1, 0, 0, 1);
const vec4 green = vec4(0, 1, 0, 1);
const vec4 blue = vec4(0, 0, 1, 1);
const vec4 yellow = vec4(1, 1, 0, 1);

void main() {
  frag_color =
      mix(mix(blue, yellow, vertex_uv.x),
          mix(red, green, vertex_uv.x), vertex_uv.y);
}
