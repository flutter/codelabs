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

class Sawtooth : Module {
 public:
  Sawtooth();

  static void init(double sample_rate);
  void process(const int32_t **inbufs, const int32_t *control_in,
			   const int32_t *control_last, int32_t **outbufs);
 private:
  int32_t phase;

  // Compute mathematical function with no antialiasing
  static int32_t compute(int32_t phase);

  // Lookup from a single slice
  static int32_t lookup_1(int32_t phase, int slice);

  // Lookup from two slices, interpolate
  static int32_t lookup_2(int32_t phase, int slice, int32_t slice_lowbits);
};
