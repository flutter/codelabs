// Copyright 2024 The Flutter Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

#version 460 core

in vec2 vertex_uv;
out vec4 frag_color;

// Adapted from https://www.youtube.com/shorts/h5PuIm6fRr8
float mandelbrot(vec2 uv) {
  const float MAX_ITER = 128.0;
  vec2 c = 1.2 * uv - vec2(0.7, 0.0);
  vec2 z = vec2(0.0);

  for (float iter = 0.0; iter < MAX_ITER; iter++) {
    z = vec2(z.x * z.x - z.y * z.y, 2.0 * z.x * z.y) + c;
    
    if (length(z) > 4.0) {
      return iter / MAX_ITER;
    }
  }

  return 0.0;
}

void main() {
  float m = mandelbrot(vertex_uv);
  vec3 col = vec3(m);
  col = pow(col, vec3(0.4545, 0.3, 0.1));
  frag_color = vec4(col, 1.0);
}
