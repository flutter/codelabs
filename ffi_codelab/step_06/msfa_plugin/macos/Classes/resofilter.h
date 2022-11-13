/*
 * Copyright 2012 Google Inc.
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

#ifndef SYNTH_RESOFILTER_H_
#define SYNTH_RESOFILTER_H_

#include "module.h"

#define USE_MATRIX

class ResoFilter : Module {
 public:
  ResoFilter();

  static void init(double sample_rate);
  static int32_t lookup(int32_t phase, int32_t log_f);
  void process(const int32_t **inbufs, const int32_t *control_in,
			   const int32_t *control_last, int32_t **outbufs);
 private:
 #if defined(USE_MATRIX)
  AlignedBuf<float, 4> x;
#else
  int32_t x[4];
#if defined(NONLINEARITY)
  int32_t w[4];
  int32_t yy;
#endif
#endif
};

// remove when done
void test_matrix();

#endif  // SYNTH_RESOFILTER_H_
