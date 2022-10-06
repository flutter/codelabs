/*
 * Copyright 2013 Google Inc.
 * 
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 * 
 *      http://www.apache.org/licenses/LICENSE-2.0
 * 
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

#include <math.h>

#include "synth.h"
#include "log2.h"

int32_t log2tab[LOG2_N_SAMPLES << 1];

void Log2::init() {
  const double mul = 1 / log(2);
  for (int i = 0; i < LOG2_N_SAMPLES; i++) {
    double y = mul * log(i + (LOG2_N_SAMPLES)) + (7 - LOG2_LG_N_SAMPLES);
    log2tab[(i << 1) + 1] = (int32_t)floor(y * (1 << 24) + 0.5);
  }
  for (int i = 0; i < LOG2_N_SAMPLES - 1; i++) {
    log2tab[i << 1] = log2tab[(i << 1) + 3] - log2tab[(i << 1) + 1];
  }
  log2tab[(LOG2_N_SAMPLES << 1) - 2] = (8 << 24) - log2tab[(LOG2_N_SAMPLES << 1) - 1];
}

