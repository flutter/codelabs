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

#include <iostream>
#include <cstdlib>
#include <math.h>

#include "synth.h"
#include "module.h"
#include "aligned_buf.h"
#include "freqlut.h"
#include "wavout.h"
#include "sawtooth.h"
#include "sin.h"
#include "exp2.h"
#include "log2.h"
#include "resofilter.h"
#include "fm_core.h"
#include "fm_op_kernel.h"
#include "env.h"
#include "patch.h"
#include "controllers.h"
#include "dx7note.h"

using namespace std;

void benchmark_sin() {
  int32_t x;
  for (int j = 0; j < 1000; j++) {
    for (int i = 0; i < 1000000; i++) {
      x += Sin::lookup(i);
    }
  }
  cout << x << endl; // to make sure it gets used
}

void benchmark_fm_op() {
  int32_t buf[64];
  int32_t fb_buf[2];
  for (int i = 0; i < 15625000; i++)
    FmOpKernel::compute_fb(buf, 0, 123456, 1 << 24, 1 << 24,
                           fb_buf, 1, false);
}

void test_sin_accuracy() {
  double maxerr = 0;
  for (int i = 0; i < 1000000; i++) {
    int32_t phase = rand() & ((1 << 24) - 1);
    int32_t y = Sin::compute(phase);
    double yd = (1 << 24) * sin(phase * (M_PI / (1 << 23)));
    double err = fabs(y - yd);
    if (err > maxerr) maxerr = err;
  }
  cout << "Max error: " << maxerr << endl;
}

void test_log_accuracy() {
  double maxerr = 0;
  for (int i = 0; i < 1000000; i++) {
    uint32_t x = rand();
    int32_t y = Log2::lookup(x);
    double yd = (1 << 24) * log(x * (1.0 / (1 << 24))) / log(2);
    double err = fabs(y - yd);
    if (err > maxerr) {
      maxerr = err;
      cout << "x = " << x << ", y = " << y << ", yd = " << (int)yd << endl;
    }
  }
  cout << "Max error: " << maxerr << endl;
}

void test_tanh_accuracy() {
  Tanh::init();
  double maxerr = 0;
  for (int i = 0; i < 1000000; i++) {
    int32_t x = (rand() & ((1 << 29) - 1)) - (1 << 28);
    int32_t y = Tanh::lookup(x);
    double yd = (1 << 24) * tanh(x * (1.0 / (1 << 24)));
    double err = fabs(y - yd);
    if (err > maxerr) {
      cout << "x = " << x << ", y = " << y << ", yd = " << (int)yd << endl;
      maxerr = err;
    }
  }
  cout << "Max error: " << maxerr << endl;
}

void test_pure_accuracy() {
  int32_t worstfreq;
  int32_t worstphase;
  int32_t worsterr = 0;
  double errsum = 0;
  for (int i = 0; i < 1000000; i++) {
    int32_t freq = rand() & 0x7fffff;
    int32_t phase = rand() & 0xffffff;
    int32_t gain = 1 << 24;
    int32_t buf[64];
    FmOpKernel::compute_pure(buf, phase, freq, gain, gain, false);
    int32_t maxerr = 0;
    for (int j = 0; j < 64; j++) {
      double y = gain * sin((phase + j * freq) * (2.0 * M_PI / (1 << 24)));
      int32_t accurate = (int32_t)floor(y + 0.5);
      int32_t err = abs(buf[j] - accurate);
      if (err > maxerr) maxerr = err;
    }
    errsum += maxerr;
    if (maxerr > worsterr) {
      worsterr = maxerr;
      worstfreq = freq;
      worstphase = phase;
    }
    if (i < 10)
      cout << phase << " " << freq << " " << maxerr << endl;
  }
  cout << worstphase << " " << worstfreq << " " << worsterr << endl;
  cout << "Mean: " << (errsum * 1e-6) << endl;
}

void mksaw(double sample_rate) {
  const int n_samples = 400 * 1024;
  WavOut w("/tmp/foo.wav", sample_rate, n_samples);

  Sawtooth s;
  int32_t control_last[1];
  int32_t control[1];

  ResoFilter rf;
  int32_t fc_last[2];
  int32_t fc[2];
  fc[0] = 0;  // TODO
  fc[1] = 4.2 * (1 << 24);
  fc_last[0] = fc[0];
  fc_last[1] = fc[1];

  double ramp = 1e-7;
  double f = ramp * (64 + 1);
  control[0] = (1 << 24) * log(f * sample_rate) / log(2);

  int32_t buf[64];
  int32_t buf2[64];
  int32_t *bufs[1];
  int32_t *bufs2[1];
  bufs[0] = buf;
  bufs2[0] = buf2;
  int32_t phase = 0;
  for (int i = 0; i < n_samples; i += 64) {

    double f = ramp * (i + 64 + 1);
    // f = 44.0 / sample_rate;
    control_last[0] = control[0];
    control[0] = (1 << 24) * log(f * sample_rate) / log(2);
    fc_last[1] = fc[1];
    fc[1] = 4.0 * i * (1 << 24) / n_samples;
    s.process((const int32_t **)0, control, control_last, bufs);
    rf.process((const int32_t **)bufs, fc, fc_last, bufs2);
    for (int j = 0; j < 64; j++) {
      buf2[j] = buf[j] >> 1;
      //phase += 100000;
      //buf2[j] = (Sin::compute(phase) - (int32_t)((1<< 24) * sin(phase * 2 * M_PI / (1 << 24)))) << 12;
    }
    w.write_data(buf2, 64);
  }
  w.close();
}

void mknote(double sample_rate) {
  const int n_samples = 400 * 1024;
  WavOut w("/tmp/foo.wav", sample_rate, n_samples);

  int32_t freq = 150358;
  int32_t phase = 0;

  int rates[4] = {70, 50, 30, 80};
  int levels[4] = {99, 90, 70, 0};
  Env e;
  e.init(rates, levels, 99, 0);

  int rates2[4] = {70, 50, 30, 80};
  int levels2[4] = {99, 90, 70, 0};
  Env e2;
  e2.init(rates, levels, 90, 0);

  int32_t buf[64];

  int32_t gain1, gain2;
  gain2 = 0;
  int32_t gain21, gain22;
  gain22 = 0;
  for (int i = 0; i < n_samples; i += N) {
    gain1 = gain2;
    gain21 = gain22;
    if (i == n_samples / 2) {
      e.keydown(false);
      e2.keydown(false);
    }
    int32_t level = e.getsample();
    gain2 = (1<<8) * pow(2, level * (1.0 / (1 << 24)));
    FmOpKernel::compute_pure(buf, phase, freq, gain1, gain2, false);
    level = e2.getsample();
    gain22 = (1<<8) * pow(2, level * (1.0 / (1 << 24)));
    FmOpKernel::compute(buf, buf, phase, freq, gain21, gain22, false);
    phase += freq << LG_N;
    w.write_data(buf, N);
  }
  w.close();
}

char epiano[] = {
  95, 29, 20, 50, 99, 95, 0, 0, 41, 0, 19, 0, 115, 24, 79, 2, 0, 95, 20, 20,
  50, 99, 95, 0, 0, 0, 0, 0, 0, 3, 0, 99, 2, 0, 95, 29, 20, 50, 99, 95, 0, 0,
  0, 0, 0, 0, 59, 24, 89, 2, 0, 95, 20, 20, 50, 99, 95, 0, 0, 0, 0, 0, 0, 59,
  8, 99, 2, 0, 95, 50, 35, 78, 99, 75, 0, 0, 0, 0, 0, 0, 59, 28, 58, 28, 0, 96,
  25, 25, 67, 99, 75, 0, 0, 0, 0, 0, 0, 83, 8, 99, 2, 0, 94, 67, 95, 60, 50,
  50, 50, 50, 4, 6, 34, 33, 0, 0, 56, 24, 69, 46, 80, 73, 65, 78, 79, 32, 49,
  32
};

void mkdx7note(double sample_rate) {
  const int n_samples = 400 * 1024;
  WavOut w("/tmp/foo.wav", sample_rate, n_samples);

  Dx7Note note;
  char unpacked_patch[156];
  UnpackPatch(epiano, unpacked_patch);
  note.init(unpacked_patch, 57, 64);
  Controllers controllers;
  controllers.values_[kControllerPitch] = 0x2000;
  int32_t buf[N];

  for (int i = 0; i < n_samples; i += N) {
    for (int j = 0; j < N; j++) {
      buf[j] = 0;
    }
    if (i == n_samples / 2) {
      note.keyup();
    }
     note.compute(buf, 0, 0, &controllers);
    for (int j = 0; j < N; j++) {
      buf[j] >>= 2;
    }
    w.write_data(buf, N);
  }
  w.close();
}

void test_ringbuffer();

void test_exp2() {
  for (int32_t i = -16 << 24; i < 6 << 24; i += 123) {
    int32_t result = Exp2::lookup(i);
    int32_t accurate = floor((1<<24) * pow(2, i * 1.0 / (1<<24)) + .5);
    int32_t error = accurate - result;
    if (abs(error) > 1 && abs(error) > accurate / 10000000) {
      std::cout << i << ": " << result << " " << accurate << std::endl;
      // TODO (maybe): hook into automated test runner & report results
    }
  }
}

int main(int argc, char **argv) {
  double sample_rate = 44100.0;
  Freqlut::init(sample_rate);
  Sawtooth::init(sample_rate);
  Sin::init();
  Exp2::init();
  Log2::init();

  //FmCore::dump();
  //test_sin_accuracy();
  test_log_accuracy();
  test_tanh_accuracy();
  //benchmark_fm_op();
  //test_pure_accuracy();
  //benchmark_sin();
  //int32_t freq = atoi(argv[1]);
  //cout << "Logfreq(" << freq << ") = " << Freqlut::lookup(freq) << endl;

  mkdx7note(sample_rate);
  //mksaw(sample_rate);
  //test_ringbuffer();
  test_exp2();
  return 0;
}
