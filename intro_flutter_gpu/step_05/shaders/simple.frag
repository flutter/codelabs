// Copyright 2024 The Flutter Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

#version 460 core

in vec2 vertex_uv;
out vec4 frag_color;

const vec4 top_left_color = vec4(1, 0, 0, 1);
const vec4 top_right_color = vec4(0, 1, 0, 1);
const vec4 bottom_left_color = vec4(0, 0, 1, 1);
const vec4 bottom_right_color = vec4(1, 1, 0, 1);

void main() {
  frag_color =
      mix(mix(bottom_left_color, bottom_right_color, vertex_uv.x),
          mix(top_left_color, top_right_color, vertex_uv.x), vertex_uv.y);
}
