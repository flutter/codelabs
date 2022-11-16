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

// Create a WAV file

#include "wavout.h"

using namespace std;

void w32le(char *buf, int offset, int32_t val) {
  buf[offset + 0] = val & 0xff;
  buf[offset + 1] = (val >> 8) & 0xff;
  buf[offset + 2] = (val >> 16) & 0xff;
  buf[offset + 3] = (val >> 24) & 0xff;
}

void w16le(char *buf, int offset, int val) {
  buf[offset + 0] = val & 0xff;
  buf[offset + 1] = (val >> 8) & 0xff;
}

void w4cc(char *buf, int offset, const char *s) {
  for (int i = 0; i < 4; i++) {
    buf[offset + i] = s[i];
  }
}

WavOut::WavOut(const char *filename, double sample_rate, int n_samples) {
  char header[44];
  fs = new fstream(filename, fstream::out | fstream::trunc | fstream::binary);
  w4cc(header, 0, "RIFF");
  w32le(header, 4, 36 + 2 * n_samples);
  w4cc(header, 8, "WAVE");
  w4cc(header, 12, "fmt ");
  w32le(header, 16, 16);
  w16le(header, 20, 1);  // AudioFormat
  w16le(header, 22, 1);  // NumChannels
  w32le(header, 24, (int32_t)sample_rate);
  w32le(header, 28, 2 * (int32_t)sample_rate);
  w16le(header, 32, 2);  // BlockAlign
  w16le(header, 34, 16);  // BitsPerSample
  w4cc(header, 36, "data");
  w32le(header, 40, 2 * n_samples);
  fs->write(header, 44);
}

void WavOut::write_data(const int32_t *buf, int n) {
  int32_t delta = 0x100;
  for (int i = 0; i < n; i++) {
    int32_t val = buf[i];
    int clip_val = val < -(1 << 24) ? 0x8000 : (val >= (1 << 24) ? 0x7fff :
                                                (val + delta) >> 9);
    delta = (delta + val) & 0x1ff;
    sample_buf[i * 2] = clip_val & 0xff;
    sample_buf[i * 2 + 1] = (clip_val >> 8) & 0xff;
  }
  fs->write(sample_buf, n * 2);
}

void WavOut::close() {
  fs->close();
}
