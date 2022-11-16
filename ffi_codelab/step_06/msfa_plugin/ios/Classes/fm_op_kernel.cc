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

#include <math.h>

#include "synth.h"

#include "sin.h"
#include "fm_op_kernel.h"

#ifdef HAVE_NEON_INTRINSICS

extern "C"
void neon_fm_kernel(const int *in, const int *busin, int *out, int count,
  int32_t phase0, int32_t freq, int32_t gain1, int32_t dgain);

const int32_t __attribute__ ((aligned(16))) const_0_1_2_3_arg[4] = {0, 1, 2, 3};
const int32_t __attribute__ ((aligned(16))) mask23_arg = 0x7fffff;
const float32_t __attribute__ ((aligned(16))) coeffs_arg[4] = {
        -0.01880853017455781, 0.25215252666796095, -1.2333439964934032, 1.0
};

void neon_fm_kernel(const int *in, const int *busin, int *out, int count,
    int32_t phase0, int32_t freq_arg, int32_t gain1_arg, int32_t dgain_arg) {
  int32x4_t phase = vld1q_dup_s32(&phase0);
  int32x4_t freq = vld1q_dup_s32(&freq_arg);
  int32x4_t const_0_1_2_3 = vld1q_s32(const_0_1_2_3_arg);
  phase = vmlaq_s32(phase, freq, const_0_1_2_3);
  int32x4_t gain1 = vld1q_dup_s32(&gain1_arg);
  int32x4_t dgain = vld1q_dup_s32(&dgain_arg);
  gain1 = vmlaq_s32(gain1, dgain, const_0_1_2_3);
  int32x4_t mask23 = vld1q_dup_s32(&mask23_arg);
  float32x4_t coeffs = vld1q_f32(coeffs_arg);
  float32x4_t gainf = vcvtq_n_f32_s32(gain1, 24);
  int32x4_t freq4 = vshlq_n_s32(freq, 2);
  float32x4_t dgainf = vcvtq_n_f32_s32(dgain, 22);

  count -= 4;
  int32x4_t q15 = vmovq_n_s32(0x800000);
  int32x4_t q7 = vmovq_n_s32(0x400000);
  while (true) {
    int32x4_t phase4 = vaddq_s32(phase, freq4);
    int32x4_t phase8 = vaddq_s32(phase4, freq4);
    int32x4_t data1a = vld1q_s32(in);
    data1a = vaddq_s32(data1a, phase);
    int32x4_t data1b = vld1q_s32(in + 4);
    data1b = vaddq_s32(data1b, phase4);
    int32x4_t data1c = vld1q_s32(in + 8);
    data1c = vaddq_s32(data1c, phase8);
    phase = vaddq_s32(phase8, freq4);
    in += 12;
    int32x4_t data4a = (int32x4_t)vtstq_s32(data1a, q15);
    int32x4_t data4b = (int32x4_t)vtstq_s32(data1b, q15);
    int32x4_t data4c = (int32x4_t)vtstq_s32(data1c, q15);
    data1a = vandq_s32(data1a, mask23);
    data1b = vandq_s32(data1b, mask23);
    data1c = vandq_s32(data1c, mask23);
    data1a = vsubq_s32(data1a, q7);
    data1b = vsubq_s32(data1b, q7);
    data1c = vsubq_s32(data1c, q7);
    float32x4_t fdata1a = vcvtq_n_f32_s32(data1a, 22);
    float32x4_t fdata1b = vcvtq_n_f32_s32(data1b, 22);
    float32x4_t fdata1c = vcvtq_n_f32_s32(data1c, 22);
    fdata1a = vmulq_f32(fdata1a, fdata1a);
    fdata1b = vmulq_f32(fdata1b, fdata1b);
    fdata1c = vmulq_f32(fdata1c, fdata1c);
    float32x4_t fdata2a = vdupq_lane_f32(vget_low_f32(coeffs), 1);
    float32x4_t fdata2b = vdupq_lane_f32(vget_low_f32(coeffs), 1);
    float32x4_t fdata2c = vdupq_lane_f32(vget_low_f32(coeffs), 1);
    fdata2a = vmlaq_lane_f32(fdata2a, fdata1a, vget_low_f32(coeffs), 0);
    fdata2b = vmlaq_lane_f32(fdata2b, fdata1b, vget_low_f32(coeffs), 0);
    fdata2c = vmlaq_lane_f32(fdata2c, fdata1c, vget_low_f32(coeffs), 0);
    float32x4_t fdata3a = vdupq_lane_f32(vget_high_f32(coeffs), 0);
    float32x4_t fdata3b = vdupq_lane_f32(vget_high_f32(coeffs), 0);
    float32x4_t fdata3c = vdupq_lane_f32(vget_high_f32(coeffs), 0);
    fdata3a = vmlaq_f32(fdata3a, fdata1a, fdata2a);
    fdata3b = vmlaq_f32(fdata3b, fdata1b, fdata2b);
    fdata3c = vmlaq_f32(fdata3c, fdata1c, fdata2c);
    fdata2a = vdupq_lane_f32(vget_high_f32(coeffs), 1);
    fdata2b = vdupq_lane_f32(vget_high_f32(coeffs), 1);
    fdata2c = vdupq_lane_f32(vget_high_f32(coeffs), 1);
    fdata2a = vmlaq_f32(fdata2a, fdata1a, fdata3a);
    fdata2b = vmlaq_f32(fdata2b, fdata1b, fdata3b);
    fdata2c = vmlaq_f32(fdata2c, fdata1c, fdata3c);
    fdata3a = vaddq_f32(gainf, dgainf);
    fdata3b = vaddq_f32(fdata3a, dgainf);
    fdata2a = vmulq_f32(fdata2a, gainf);
    fdata2b = vmulq_f32(fdata2b, fdata3a);
    fdata2c = vmulq_f32(fdata2c, fdata3b);
    gainf = vaddq_f32(fdata3b, dgainf);
    int32x4_t data3a = vcvtq_n_s32_f32(fdata2a, 24);
    int32x4_t data3b = vcvtq_n_s32_f32(fdata2b, 24);
    int32x4_t data3c = vcvtq_n_s32_f32(fdata2c, 24);
    data1a = vld1q_s32(busin);
    data1b = vld1q_s32(busin + 4);
    data1c = vld1q_s32(busin + 8);
    busin += 12;
    data3a = veorq_s32(data3a, data4a);
    data3b = veorq_s32(data3b, data4b);
    data3c = veorq_s32(data3c, data4c);
    data3a = vaddq_s32(data3a, data1a);
    data3b = vaddq_s32(data3b, data1b);
    data3c = vaddq_s32(data3c, data1c);
    vst1q_s32(out, data3a);
    vst1q_s32(out + 4, data3b);
    vst1q_s32(out + 8, data3c);
    out += 12;
    count -= 12;
    if (count <= 0) {
      if (count == 0) {
        // finish last chunk of 4
        data1a = vld1q_s32(in);
        data1a = vaddq_s32(data1a, phase);
        data4a = (int32x4_t)vtstq_s32(data1a, q15);
        data1a = vandq_s32(data1a, mask23);
        data1a = vsubq_s32(data1a, q7);
        fdata1a = vcvtq_n_f32_s32(data1a, 22);
        fdata1a = vmulq_f32(fdata1a, fdata1a);
        fdata2a = vdupq_lane_f32(vget_low_f32(coeffs), 1);
        fdata2a = vmlaq_lane_f32(fdata2a, fdata1a, vget_low_f32(coeffs), 0);
        fdata3a = vdupq_lane_f32(vget_high_f32(coeffs), 0);
        fdata3a = vmlaq_f32(fdata3a, fdata1a, fdata2a);
        fdata2a = vdupq_lane_f32(vget_high_f32(coeffs), 1);
        fdata2a = vmlaq_f32(fdata2a, fdata1a, fdata3a);
        fdata2a = vmulq_f32(fdata2a, gainf);
        data3a = vcvtq_n_s32_f32(fdata2a, 24);
        data1a = vld1q_s32(busin);
        data3a = veorq_s32(data3a, data4a);
        data3a = vaddq_s32(data3a, data1a);
        vst1q_s32(out, data3a);
      }
      break;
    }
  }
}

const int32_t __attribute__ ((aligned(16))) zeros[N] = {0};

#endif

void FmOpKernel::compute(int32_t *output, const int32_t *input,
                         int32_t phase0, int32_t freq,
                         int32_t gain1, int32_t gain2, bool add) {
  int32_t dgain = (gain2 - gain1 + (N >> 1)) >> LG_N;
  int32_t gain = gain1;
  int32_t phase = phase0;
  if (hasNeon()) {
#ifdef HAVE_NEON_INTRINSICS
    neon_fm_kernel(input, add ? output : zeros, output, N,
      phase0, freq, gain, dgain);
#endif
  } else {
    if (add) {
      for (int i = 0; i < N; i++) {
        gain += dgain;
        int32_t y = Sin::lookup(phase + input[i]);
        output[i] += ((int64_t)y * (int64_t)gain) >> 24;
        phase += freq;
      }
    } else {
      for (int i = 0; i < N; i++) {
        gain += dgain;
        int32_t y = Sin::lookup(phase + input[i]);
        output[i] = ((int64_t)y * (int64_t)gain) >> 24;
        phase += freq;
      }
    }
  }
}

#if 1
void FmOpKernel::compute_pure(int32_t *output, int32_t phase0, int32_t freq,
                              int32_t gain1, int32_t gain2, bool add) {
  int32_t dgain = (gain2 - gain1 + (N >> 1)) >> LG_N;
  int32_t gain = gain1;
  int32_t phase = phase0;
  if (hasNeon()) {
#ifdef HAVE_NEON_INTRINSICS
    neon_fm_kernel(zeros, add ? output : zeros, output, N,
      phase0, freq, gain, dgain);
#endif
  } else {
    if (add) {
      for (int i = 0; i < N; i++) {
        gain += dgain;
        int32_t y = Sin::lookup(phase);
        output[i] += ((int64_t)y * (int64_t)gain) >> 24;
        phase += freq;
      }
    } else {
      for (int i = 0; i < N; i++) {
        gain += dgain;
        int32_t y = Sin::lookup(phase);
        output[i] = ((int64_t)y * (int64_t)gain) >> 24;
        phase += freq;
      }
    }
  }
}
#endif

#define noDOUBLE_ACCURACY
#define HIGH_ACCURACY

// Experimental sine wave generators below
#if 0
// Results: accuracy 64.3 mean, 170 worst case
// high accuracy: 5.0 mean, 49 worst case
void FmOpKernel::compute_pure(int32_t *output, int32_t phase0, int32_t freq,
                              int32_t gain1, int32_t gain2, bool add) {
  int32_t dgain = (gain2 - gain1 + (N >> 1)) >> LG_N;
  int32_t gain = gain1;
  int32_t phase = phase0;
#ifdef HIGH_ACCURACY
  int32_t u = Sin::compute10(phase << 6);
  u = ((int64_t)u * gain) >> 30;
  int32_t v = Sin::compute10((phase << 6) + (1 << 28));  // quarter cycle
  v = ((int64_t)v * gain) >> 30;
  int32_t s = Sin::compute10(freq << 6);
  int32_t c = Sin::compute10((freq << 6) + (1 << 28));
#else
  int32_t u = Sin::compute(phase);
  u = ((int64_t)u * gain) >> 24;
  int32_t v = Sin::compute(phase + (1 << 22));  // quarter cycle
  v = ((int64_t)v * gain) >> 24;
  int32_t s = Sin::compute(freq) << 6;
  int32_t c = Sin::compute(freq + (1 << 22)) << 6;
#endif
  for (int i = 0; i < N; i++) {
    output[i] = u;
    int32_t t = ((int64_t)v * (int64_t)c - (int64_t)u * (int64_t)s) >> 30;
    u = ((int64_t)u * (int64_t)c + (int64_t)v * (int64_t)s) >> 30;
    v = t;
  }
}
#endif

#if 0
// Results: accuracy 392.3 mean, 15190 worst case (near freq = 0.5)
// for freq < 0.25, 275.2 mean, 716 worst
// high accuracy: 57.4 mean, 7559 worst
//  freq < 0.25: 17.9 mean, 78 worst
void FmOpKernel::compute_pure(int32_t *output, int32_t phase0, int32_t freq,
                              int32_t gain1, int32_t gain2, bool add) {
  int32_t dgain = (gain2 - gain1 + (N >> 1)) >> LG_N;
  int32_t gain = gain1;
  int32_t phase = phase0;
#ifdef HIGH_ACCURACY
  int32_t u = floor(gain * sin(phase * (M_PI / (1 << 23))) + 0.5);
  int32_t v = floor(gain * cos((phase - freq * 0.5) * (M_PI / (1 << 23))) + 0.5);
  int32_t a = floor((1 << 25) * sin(freq * (M_PI / (1 << 24))) + 0.5);
#else
  int32_t u = Sin::compute(phase);
  u = ((int64_t)u * gain) >> 24;
  int32_t v = Sin::compute(phase + (1 << 22) - (freq >> 1));
  v = ((int64_t)v * gain) >> 24;
  int32_t a = Sin::compute(freq >> 1) << 1;
#endif
  for (int i = 0; i < N; i++) {
    output[i] = u;
    v -= ((int64_t)a * (int64_t)u) >> 24;
    u += ((int64_t)a * (int64_t)v) >> 24;
  }
}
#endif

#if 0
// Results: accuracy 370.0 mean, 15480 worst case (near freq = 0.5)
// with double accuracy initialization: mean 1.55, worst 58 (near freq = 0)
// with high accuracy: mean 4.2, worst 292 (near freq = 0.5)
void FmOpKernel::compute_pure(int32_t *output, int32_t phase0, int32_t freq,
                              int32_t gain1, int32_t gain2, bool add) {
  int32_t dgain = (gain2 - gain1 + (N >> 1)) >> LG_N;
  int32_t gain = gain1;
  int32_t phase = phase0;
#ifdef DOUBLE_ACCURACY
  int32_t u = floor((1 << 30) * sin(phase * (M_PI / (1 << 23))) + 0.5);
  double a_d = sin(freq * (M_PI / (1 << 24)));
  int32_t v = floor((1LL << 31) * a_d * cos((phase - freq * 0.5) *
                                            (M_PI / (1 << 23))) + 0.5);
  int32_t aa = floor((1LL << 31) * a_d * a_d + 0.5);
#else
#ifdef HIGH_ACCURACY
  int32_t u = Sin::compute10(phase << 6);
  int32_t v = Sin::compute10((phase << 6) + (1 << 28) - (freq << 5));
  int32_t a = Sin::compute10(freq << 5);
  v = ((int64_t)v * (int64_t)a) >> 29;
  int32_t aa = ((int64_t)a * (int64_t)a) >> 29;
#else
  int32_t u = Sin::compute(phase) << 6;
  int32_t v = Sin::compute(phase + (1 << 22) - (freq >> 1));
  int32_t a = Sin::compute(freq >> 1);
  v = ((int64_t)v * (int64_t)a) >> 17;
  int32_t aa = ((int64_t)a * (int64_t)a) >> 17;
#endif
#endif

  if (aa < 0) aa = (1 << 31) - 1;
  for (int i = 0; i < N; i++) {
    gain += dgain;
    output[i] = ((int64_t)u * (int64_t)gain) >> 30;
    v -= ((int64_t)aa * (int64_t)u) >> 29;
    u += v;
  }
}
#endif

#if 0
// Results:: accuracy 112.3 mean, 4262 worst (near freq = 0.5)
// high accuracy 2.9 mean, 143 worst
void FmOpKernel::compute_pure(int32_t *output, int32_t phase0, int32_t freq,
                              int32_t gain1, int32_t gain2, bool add) {
  int32_t dgain = (gain2 - gain1 + (N >> 1)) >> LG_N;
  int32_t gain = gain1;
  int32_t phase = phase0;
#ifdef HIGH_ACCURACY
  int32_t u = Sin::compute10(phase << 6);
  int32_t lastu = Sin::compute10((phase - freq) << 6);
  int32_t a = Sin::compute10((freq << 6) + (1 << 28)) << 1;
#else
  int32_t u = Sin::compute(phase) << 6;
  int32_t lastu = Sin::compute(phase - freq) << 6;
  int32_t a = Sin::compute(freq + (1 << 22)) << 7;
#endif
  if (a < 0 && freq < 256) a = (1 << 31) - 1;
  if (a > 0 && freq > 0x7fff00) a = -(1 << 31);
  for (int i = 0; i < N; i++) {
    gain += dgain;
    output[i] = ((int64_t)u * (int64_t)gain) >> 30;
    //output[i] = u;
    int32_t newu = (((int64_t)u * (int64_t)a) >> 30) - lastu;
    lastu = u;
    u = newu;
  }
}
#endif

void FmOpKernel::compute_fb(int32_t *output, int32_t phase0, int32_t freq,
                            int32_t gain1, int32_t gain2,
                            int32_t *fb_buf, int fb_shift, bool add) {
  int32_t dgain = (gain2 - gain1 + (N >> 1)) >> LG_N;
  int32_t gain = gain1;
  int32_t phase = phase0;
  int32_t y0 = fb_buf[0];
  int32_t y = fb_buf[1];
  if (add) {
    for (int i = 0; i < N; i++) {
      gain += dgain;
      int32_t scaled_fb = (y0 + y) >> (fb_shift + 1);
      y0 = y;
      y = Sin::lookup(phase + scaled_fb);
      y = ((int64_t)y * (int64_t)gain) >> 24;
      output[i] += y;
      phase += freq;
    }
  } else {
    for (int i = 0; i < N; i++) {
      gain += dgain;
      int32_t scaled_fb = (y0 + y) >> (fb_shift + 1);
      y0 = y;
      y = Sin::lookup(phase + scaled_fb);
      y = ((int64_t)y * (int64_t)gain) >> 24;
      output[i] = y;
      phase += freq;
    }
  }
  fb_buf[0] = y0;
  fb_buf[1] = y;
}
