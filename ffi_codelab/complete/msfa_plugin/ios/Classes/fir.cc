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

// Implementation of FIR filtering (convolution)

#include <stdio.h> // for debugging, remove
#include <stdlib.h>

#include "aligned_buf.h"
#include "fir.h"

#ifdef __ANDROID_API__
void *malloc_aligned(size_t alignment, size_t nbytes) {
  return memalign(alignment, nbytes);
}
#else
void *malloc_aligned(size_t alignment, size_t nbytes) {
  void *result;
  int status = posix_memalign(&result, alignment, nbytes);
  return status == 0 ? result : 0;
}
#endif

SimpleFirFilter::SimpleFirFilter(const float *kernel, size_t nk) : nk(nk) {
  k = (float *)malloc(nk * sizeof(k[0]));
  for (size_t i = 0; i < nk; i++) {
    k[i] = kernel[nk - i - 1];
  }
}

SimpleFirFilter::~SimpleFirFilter() {
  free(k);
}

void SimpleFirFilter::process(const float *in, float *out, size_t n) {
  for (size_t i = 0; i < n; i++) {
    float y = 0;
    for (size_t j = 0; j < nk; j++) {
      y += k[j] * in[i + j];
    }
    out[i] = y;
  }
}

HalfRateFirFilter::HalfRateFirFilter(const float *kernel, size_t nk, size_t n) : nk(nk) {
  float k0[kMaxNk / 2];
  float k1[kMaxNk / 2];
  size_t n2 = n >> 1;
  size_t nk2 = nk >> 1;
  // probably better to do fewer allocations and just set up pointers...
  y0 = (float *)malloc_aligned(16, n2 * sizeof(y0[0]));
  y1 = (float *)malloc_aligned(16, n2 * sizeof(y1[0]));
  y2 = (float *)malloc_aligned(16, n2 * sizeof(y2[0]));
  i0 = (float *)malloc_aligned(16, (n2 + nk2) * sizeof(i0[0]));
  i1 = (float *)malloc_aligned(16, (n2 + nk2) * sizeof(i1[0]));
  i2 = (float *)malloc_aligned(16, (n2 + nk2) * sizeof(i2[0]));
  k2 = (float *)malloc_aligned(16, nk2 * sizeof(k2[0]));
  for (size_t i = 0; i < nk2; i++) {
    float b0 = kernel[i * 2];
    float b2 = kernel[i * 2 + 1];
    k0[i] = b0;
    k1[i] = b0 + b2;
    k2[i] = b2;
  }
  f0 = new SimpleFirFilter(k0, nk2);
  f1 = new SimpleFirFilter(k1, nk2);
  f2 = new SimpleFirFilter(k2, nk2);
}

HalfRateFirFilter::~HalfRateFirFilter() {
  free(k2);
  delete i0;
  delete i1;
  delete i2;
  delete y0;
  delete y1;
  delete y2;
  delete f0;
  delete f1;
  delete f2;
}

extern "C"
void neon_halfrate_split(const float *in, float *buf0, float *buf1, float *buf2, size_t n);

extern "C"
void neon_halfrate_combine(const float *out, float *buf0, float *buf1, float *buf2, size_t n);

void HalfRateFirFilter::process(const float *in, float *out, size_t n) {
  size_t n2 = n >> 1;
  size_t nk2 = nk >> 1;
  size_t n2in = n2 + nk2 - 1;
#ifdef HAVE_NEON
  neon_halfrate_split(in - 1, i0, i1, i2, n2in + 1);
#else
  i2[0] = in[0];
  for (size_t i = 0; i < n2in; i++) {
    float a0 = in[i * 2 + 1];
    float a2 = in[i * 2 + 2];
    i0[1 + i] = a0;
    i1[1 + i] = a0 + a2;
    i2[1 + i] = a2;
  }
#endif
  f0->process(i0 + 1, y0, n2);
  f1->process(i1 + 1, y1, n2);
  f2->process(i2 + 1, y2, n2);
#ifdef HAVE_NEON
  neon_halfrate_combine(out, y0, y1, y2, n2);
#else
  float z2m2 = 0;
  for (size_t i = 0; i < nk2; i++) {
    z2m2 += k2[nk2 - 1 - i] * i2[i];
  }
  for (size_t i = 0; i < n2; i++) {
    float m0 = y0[i];
    float m1 = y1[i];
    float m2 = y2[i];
    out[i * 2] = m0 + z2m2;
    out[i * 2 + 1] = m1 - m0 - m2;
    //out[i*2] = i1.get()[i];
    z2m2 = m2;
  }
#endif
}

#ifdef HAVE_NEON
NeonFirFilter::NeonFirFilter(const float *kernel, size_t nk) : nk(nk) {
  // TODO: handle odd size nk (must be multiple of 4)
  k = (float *)malloc_aligned(16, nk * sizeof(k[0]));
  for (size_t i = 0; i < nk; i += 4) {
    for (size_t j = 0; j < 4; j++) {
      k[i + j] = kernel[nk - i - 4 + j];
    }
  }
}

NeonFirFilter::~NeonFirFilter() {
  free(k);
}

extern "C"
void neon_fir_direct(const float *in, const float *k, float *out, size_t n, size_t nk);

void NeonFirFilter::process(const float *in, float *out, size_t n) {
  neon_fir_direct(in - 1, k, out, n, nk);
}

Neon16FirFilter::Neon16FirFilter(const float *kernel, size_t nk, bool mirror)
  : nk(nk), mirror(mirror) {
  // TODO: handle odd size nk (must be multiple of 4)
  k = (int16_t *)malloc_aligned(16, nk * sizeof(k[0]));
  for (size_t i = 0; i < nk; i++) {
    k[i] = 32768 * kernel[nk - i - 1];
  }
}

Neon16FirFilter::~Neon16FirFilter() {
  free(k);
}

extern "C"
void neon_fir_fixed16(const float *in, const int16_t *k, float *out, size_t n, size_t nk);

extern "C"
void neon_fir_fixed16m(const float *in, const int16_t *k, float *out, size_t n, size_t nk);

void Neon16FirFilter::process(const float *in, float *out, size_t n) {
  if (mirror)
    neon_fir_fixed16m(in - 1, k, out, n, nk);
  else
    neon_fir_fixed16(in - 1, k, out, n, nk);
}

#endif

#ifdef __SSE2__
#include <emmintrin.h>

SseFirFilter::SseFirFilter(const float *kernel, size_t nk) : nk(nk) {
  // TODO: handle odd size nk (must be multiple of 4)
  k = (float *)malloc_aligned(16, nk * sizeof(k[0]));
  for (size_t i = 0; i < nk; i += 4) {
    for (size_t j = 0; j < 4; j++) {
      k[i + j] = kernel[nk - i - 4 + j];
    }
  }
}

SseFirFilter::~SseFirFilter() {
  free(k);
}

void printvec(__m128 v) {
  float *f = (float *)&v;
  printf("[%f %f %f %f]\n", f[0], f[1], f[2], f[3]);
}

void SseFirFilter::process(const float *in1, float *out, size_t n) {
  const float *in = in1 - 1;
  __m128 q9 = _mm_set_ps1(0.0);
  __m128 q10 = _mm_set_ps1(0.0);
  __m128 q11 = _mm_set_ps1(0.0);
  __m128i mask = _mm_set_epi32(-1, -1, -1, 0);
  for (int i = 0; i < nk; i += 4) {
    __m128 q0 = _mm_load_ps(&in[i]);
    __m128 q1 = _mm_load_ps(&k[i]);
    __m128 s = _mm_shuffle_ps(q0, q0, _MM_SHUFFLE(1, 1, 1, 1));
    q9 = _mm_add_ps(_mm_mul_ps(q1, s), q9);
    s = _mm_shuffle_ps(q0, q0, _MM_SHUFFLE(2, 2, 2, 2));
    q10 = _mm_add_ps(_mm_mul_ps(q1, s), q10);
    s = _mm_shuffle_ps(q0, q0, _MM_SHUFFLE(3, 3, 3, 3));
    q11 = _mm_add_ps(_mm_mul_ps(q1, s), q11);
  }
  // Note: AVX has _mm_permute_ps, which would be a bit more direct
  q9 = (__m128)_mm_and_si128((__m128i)q9, mask);
  __m128 q8 = _mm_shuffle_ps(q9, q9, _MM_SHUFFLE(0, 0, 0, 3));
  q10 = _mm_shuffle_ps(q10, (__m128)mask, _MM_SHUFFLE(0, 0, 3, 2));
  q8 = _mm_add_ps(q8, q10);
  q11 = (__m128)_mm_and_si128((__m128i)q11, mask);
  q11 = _mm_shuffle_ps(q11, q11, _MM_SHUFFLE(0, 3, 2, 1));
  q8 = _mm_add_ps(q8, q11);
  for (int i = 0; i < n; i += 4) {
    q9 = _mm_set_ps1(0.0);
    q10 = _mm_set_ps1(0.0);
    q11 = _mm_set_ps1(0.0);
    const float *inptr = &in[i + 4];
    // inner loop
    for (int j = 0; j < nk; j += 4) {
      __m128 q0 = _mm_load_ps(&inptr[j]);
      __m128 q1 = _mm_load_ps(&k[j]);
      __m128 s = _mm_shuffle_ps(q0, q0, _MM_SHUFFLE(0, 0, 0, 0));
      q8 = _mm_add_ps(_mm_mul_ps(q1, s), q8);
      s = _mm_shuffle_ps(q0, q0, _MM_SHUFFLE(1, 1, 1, 1));
      q9 = _mm_add_ps(_mm_mul_ps(q1, s), q9);
      s = _mm_shuffle_ps(q0, q0, _MM_SHUFFLE(2, 2, 2, 2));
      q10 = _mm_add_ps(_mm_mul_ps(q1, s), q10);
      s = _mm_shuffle_ps(q0, q0, _MM_SHUFFLE(3, 3, 3, 3));
      q11 = _mm_add_ps(_mm_mul_ps(q1, s), q11);
    }

    // process overlaps
    __m128 q0a = _mm_shuffle_ps(q9, q9, _MM_SHUFFLE(2, 1, 0, 3));
    __m128 q0 = _mm_add_ps(q8, (__m128)_mm_and_si128(mask, (__m128i)q0a));
    q8 = (__m128)_mm_andnot_si128(mask, (__m128i)q0a);
    q0a = _mm_shuffle_ps((__m128)mask, q10, _MM_SHUFFLE(1, 0, 0, 0));
    q0 = _mm_add_ps(q0, q0a);
    q0a = _mm_shuffle_ps(q10, (__m128)mask, _MM_SHUFFLE(0, 0, 3, 2));
    q8 = _mm_add_ps(q8, q0a);
    q0a = (__m128)_mm_andnot_si128(mask, (__m128i)q11);
    q0a = _mm_shuffle_ps(q0a, q0a, _MM_SHUFFLE(0, 3, 2, 1));
    q0 = _mm_add_ps(q0, q0a);
    q0a = (__m128)_mm_and_si128(mask, (__m128i)q11);
    q0a = _mm_shuffle_ps(q0a, q0a, _MM_SHUFFLE(0, 3, 2, 1));
    q8 = _mm_add_ps(q8, q0a);
    _mm_store_ps(&out[i], q0);
  }
}

#endif
