// Copyright 2024 The Flutter Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

#version 460 core

in vec3 vertex_uvw;
out vec4 frag_color;

const vec4 red = vec4(1, 0, 0, 1);
const vec4 green = vec4(0, 1, 0, 1);
const vec4 blue = vec4(0, 0, 1, 1);
const vec4 yellow = vec4(1, 1, 0, 1);
const vec4 orange = vec4(1, 0.5, 0, 1);
const vec4 pink = vec4(1, 0.75, 0.8, 1);
const vec4 purple = vec4(0.5, 0, 0.5, 1);
const vec4 cyan = vec4(0, 1, 1, 1);

void main() { 
  // Extract u, v, w coordinates for clarity
  float u = vertex_uvw.x;
  float v = vertex_uvw.y;
  float w = vertex_uvw.z;

  vec4 bottom_back = mix(red, green, u);
  vec4 bottom_front = mix(purple, pink, u);

  vec4 top_back = mix(blue, yellow, u);
  vec4 top_front = mix(orange, cyan, u);

  vec4 back = mix(bottom_back, top_back, v);
  vec4 front = mix(bottom_front, top_front, v);

  frag_color = mix(back, front, w);
}
