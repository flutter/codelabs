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

// move to generic utility file?
void *malloc_aligned(size_t alignment, size_t nbytes);

// Abstract class
template <typename T, typename U> class FirFilter {
 public:
  // preconditions:
  // in + (nk - 1) is aligned to 128 bits
  // out is aligned to 128 bits
  virtual void process(const T *in, U *out, size_t n) = 0;
};

class SimpleFirFilter : public FirFilter<float, float> {
 public:
  SimpleFirFilter(const float *kernel, size_t nk);
  ~SimpleFirFilter();
  void process(const float *in, float *out, size_t n);
 private:
  size_t nk;
  float *k;
};

class HalfRateFirFilter : public FirFilter<float, float> {
 public:
  HalfRateFirFilter(const float *kernel, size_t nk, size_t n);
  ~HalfRateFirFilter();
  void process(const float *in, float *out, size_t n);
 private:
  static const int kMaxNk = 256;
  size_t nk;
  float *i0, *i1, *i2;
  float *y0, *y1, *y2;
  float *k2;
  FirFilter *f0;
  FirFilter *f1;
  FirFilter *f2;
};

#ifdef HAVE_NEON

class NeonFirFilter : public FirFilter<float, float> {
 public:
  NeonFirFilter(const float *kernel, size_t nk);
  ~NeonFirFilter();
  void process(const float *in, float *out, size_t n);
 private:
  size_t nk;
  float *k;
};

class Neon16FirFilter : public FirFilter<float, float> {
 public:
  Neon16FirFilter(const float *kernel, size_t nk, bool mirror);
  ~Neon16FirFilter();
  void process(const float *in, float *out, size_t n);
 private:
  size_t nk;
  int16_t *k;
  bool mirror;
};

#endif  // HAVE_NEON

#ifdef __SSE2__

class SseFirFilter : public FirFilter<float, float> {
 public:
  SseFirFilter(const float *kernel, size_t nk);
  ~SseFirFilter();
  void process(const float *in, float *out, size_t n);
 private:
  size_t nk;
  float *k;
};

#endif  // __SSE2__
