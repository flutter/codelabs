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

#include "module.h"
#include "sawtooth.h"
#include "exp2.h"

// There's a fair amount of lookup table and so on that needs to be set before
// generating any signal. In Java, this would be done by a separate factory class.
// Here, we're just going to do it as globals.

#define FANCY_GOERTZEL_SIN
#define noPRINT_ERROR

#define R (1 << 29)

#define LG_N_SAMPLES 10
#define N_SAMPLES (1 << LG_N_SAMPLES)
#define N_PARTIALS_MAX (N_SAMPLES / 2)

#define LG_SLICES_PER_OCTAVE 2
#define SLICES_PER_OCTAVE (1 << LG_SLICES_PER_OCTAVE)
#define SLICE_SHIFT (24 - LG_SLICES_PER_OCTAVE)
#define SLICE_EXTRA 3

#define N_SLICES 36
// 0.5 * (log(440./44100) / log(2) + log(440./48000) / log(2) + 2./12) + 1./64 - 3 in Q24
#define SLICE_BASE 161217316
#define LOW_FREQ_LIMIT (-SLICE_BASE)

#define NEG2OVERPI -0.63661977236758138

int32_t sawtooth[N_SLICES][N_SAMPLES];

int32_t sawtooth_freq_off;

void Sawtooth::init(double sample_rate) {
  sawtooth_freq_off = -(1 << 24) * log(sample_rate) / log(2);
  int32_t lut[N_SAMPLES / 2];

  for (int i = 0; i < N_SAMPLES / 2; i++) {
    lut[i] = 0;
  }

  double slice_inc = pow(2.0, 1.0 / SLICES_PER_OCTAVE);
  double f_0 = pow(slice_inc, N_SLICES - 1) * pow(0.5, SLICE_BASE * 1.0 / (1 << 24));
  int n_partials_last = 0;
  for (int j = N_SLICES - 1; j >= 0; j--) {
    int n_partials = floor(0.5 / f_0);
    n_partials = n_partials < N_PARTIALS_MAX ? n_partials : N_PARTIALS_MAX;
    //printf("slice %d: n_partials=%d\n", j, n_partials);
    for (int k = n_partials_last + 1; k <= n_partials; k++) {
      double scale = NEG2OVERPI / k;
      scale = (N_PARTIALS_MAX - k) > (N_PARTIALS_MAX >> 2) ? scale :
        scale * (N_PARTIALS_MAX - k) / (N_PARTIALS_MAX >> 2);
      double dphase = k * 2 * M_PI / N_SAMPLES;
#ifdef PRINT_ERROR
      int32_t maxerr = 0;
#endif
#ifdef FANCY_GOERTZEL_SIN
      double ds_d = (1 << 30) * scale * sin(dphase);
      double cm2_d = (1 << 29) * (2 * (cos(dphase) - 1));
      int dshift = 0;
      for (dshift = 0; dshift < 16; dshift++) {
        if (ds_d < -(1 << (30 - dshift))) break;
        if (cm2_d < -(1 << (30 - dshift))) break;
      }
      int32_t ds = (int32_t)floor((1 << dshift) * ds_d + 0.5);
      int32_t cm2 = (int32_t)floor((1 << dshift) * cm2_d + 0.5);
      // cout << cm2_d << " " << cm2 << " " << dphase << " " << ds << " " << dshift << endl;
      int32_t s = 0;
      int32_t round = (1 << dshift) >> 1;
      for (int i = 0; i < N_SAMPLES / 2; i++) {
        lut[i] += s;
#ifdef PRINT_ERROR
        int32_t good = (int32_t)floor(scale * sin(dphase * i) * (1 << 30) + 0.5);
        int err = s - good;
        int abs_err = err > 0 ? err : -err;
        maxerr = abs_err > maxerr ? abs_err : maxerr;
#endif
        ds += ((int64_t)cm2 * (int64_t)s + (1 << 28)) >> 29;
        s += (ds + round) >> dshift;
      }
#else
      int32_t c = (int32_t)floor(cos(dphase) * (1 << 30) + 0.5);
      int32_t s = (int32_t)floor(sin(dphase) * (1 << 30) + 0.5);
      int32_t u = (int32_t)floor(scale * (1 << 30));
      int32_t v = 0;
      for (int i = 0; i < N_SAMPLES / 2; i++) {
        lut[i] += v;
#ifdef PRINT_ERROR
        int32_t good = (int32_t)floor(scale * sin(dphase * i) * (1 << 30) + 0.5);
        int err = v - good;
        int abs_err = err > 0 ? err : -err;
        maxerr = abs_err > maxerr ? abs_err : maxerr;
#endif
        int32_t t = ((int64_t)u * (int64_t)s + (int64_t)v * (int64_t)c + R) >> 30;
        u = ((int64_t)u * (int64_t)c - (int64_t)v * (int64_t)s + R) >> 30;
        v = t;
      }
#endif
#ifdef PRINT_ERROR
      cout << maxerr << endl;
#endif
    }
    sawtooth[j][0] = 0;
    sawtooth[j][N_SAMPLES / 2] = 0;
    for (int i = 1; i < N_SAMPLES / 2; i++) {
      int32_t value = (lut[i] + 32) >> 6;
      sawtooth[j][i] = value;
      sawtooth[j][N_SAMPLES - i] = -value;
    }
    n_partials_last = n_partials;
    f_0 *= 1.0 / slice_inc;
  }
}

Sawtooth::Sawtooth() {
  phase = 0;
}

int32_t Sawtooth::compute(int32_t phase) {
  return phase * 2 - (1 << 24);
}

int32_t Sawtooth::lookup_1(int32_t phase, int slice) {
  int32_t phase_int = (phase >> (24 - LG_N_SAMPLES)) & (N_SAMPLES - 1);
  int32_t lowbits = phase & ((1 << (24 - LG_N_SAMPLES)) - 1);
  int32_t y0 = sawtooth[slice][phase_int];
  int32_t y1 = sawtooth[slice][(phase_int + 1) & (N_SAMPLES - 1)];

  return y0 + ((((int64_t)(y1 - y0) * (int64_t)lowbits)) >> (24 - LG_N_SAMPLES));
}

int32_t Sawtooth::lookup_2(int32_t phase, int slice, int32_t slice_lowbits) {
  int32_t phase_int = (phase >> (24 - LG_N_SAMPLES)) & (N_SAMPLES - 1);
  int32_t lowbits = phase & ((1 << (24 - LG_N_SAMPLES)) - 1);
  int32_t y0 = sawtooth[slice][phase_int];
  int32_t y1 = sawtooth[slice][(phase_int + 1) & (N_SAMPLES - 1)];
  int32_t y4 = y0 + ((((int64_t)(y1 - y0) * (int64_t)lowbits)) >> (24 - LG_N_SAMPLES));

  int32_t y2 = sawtooth[slice + 1][phase_int];
  int32_t y3 = sawtooth[slice + 1][(phase_int + 1) & (N_SAMPLES - 1)];
  int32_t y5 = y2 + ((((int64_t)(y3 - y2) * (int64_t)lowbits)) >> (24 - LG_N_SAMPLES));

  return y4 + ((((int64_t)(y5 - y4) * (int64_t)slice_lowbits)) >> (SLICE_SHIFT - SLICE_EXTRA));
}

void Sawtooth::process(const int32_t **inbufs, const int32_t *control_in,
                       const int32_t *control_last, int32_t **outbufs) {
  int32_t logf = control_last[0];
  int32_t *obuf = outbufs[0];
  int32_t actual_logf = logf + sawtooth_freq_off;
  int f = Exp2::lookup(actual_logf);
  int32_t p = phase;
  // choose a strategy based on the frequency
  if (actual_logf < LOW_FREQ_LIMIT - (1 << (SLICE_SHIFT - SLICE_EXTRA))) {
    for (int i = 0; i < n; i++) {
      obuf[i] = compute(p);
      p += f;
      p &= (1 << 24) - 1;
    }
  } else if (actual_logf < LOW_FREQ_LIMIT) {
    // interpolate between computed and lookup
    int slice = (LOW_FREQ_LIMIT + SLICE_BASE + (1 << SLICE_SHIFT) - 1) >> SLICE_SHIFT;
    int slice_lowbits = actual_logf - LOW_FREQ_LIMIT + (1 << (SLICE_SHIFT - SLICE_EXTRA));
    for (int i = 0; i < n; i++) {
      int32_t yc = compute(p);
      int32_t yl = lookup_1(p, slice + 1);
      obuf[i] = yc + ((((int64_t)(yl - yc) * (int64_t)slice_lowbits)) >> (SLICE_SHIFT - SLICE_EXTRA));
      p += f;
      p &= (1 << 24) - 1;
    }
  } else {
    int slice = (actual_logf + SLICE_BASE + (1 << SLICE_SHIFT) - 1) >> SLICE_SHIFT;
    const int slice_start = (1 << SLICE_SHIFT) - (1 << (SLICE_SHIFT - SLICE_EXTRA));
    int slice_lowbits = ((actual_logf + SLICE_BASE) & ((1 << SLICE_SHIFT) - 1)) - slice_start;
    // slice < 0 can't happen because LOW_FREQ_LIMIT kicks in first
    if (slice > N_SLICES - 2) {
      if (slice > N_SLICES - 1 || slice_lowbits > 0) {
        slice = N_SLICES - 1;
        slice_lowbits = 0;
      }
    }
    if (slice_lowbits <= 0) {
      for (int i = 0; i < n; i++) {
        obuf[i] = lookup_1(p, slice);
        p += f;
        p &= (1 << 24) - 1;
      }
    } else {
      for (int i = 0; i < n; i++) {
        obuf[i] = lookup_2(p, slice, slice_lowbits);
        p += f;
        p &= (1 << 24) - 1;
      }
    }
  }
  phase = p;
}
