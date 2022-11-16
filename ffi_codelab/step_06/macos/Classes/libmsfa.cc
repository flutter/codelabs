/*
 * Copyright 2022 Maksim Lin.
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
#include <fstream>
#include <cstdlib>

#include "synth.h"
#include "synth_unit.h"
#include "module.h"
#include "freqlut.h"
#include "sin.h"
#include "sawtooth.h"

#include "../include/libmsfa.h"

//for initial onlytesting
#include "patch.h"

#define MINIAUDIO_IMPLEMENTATION
#include "../include/miniaudio.h"

double sample_rate = 44100.0;

RingBuffer *ring_buffer;
SynthUnit *synth_unit;
ma_device device;

void data_callback(ma_device *pDevice, void *pOutput, const void *pInput, ma_uint32 frameCount) {
  // Use MSFA frames
  synth_unit->GetSamples(frameCount, (int16_t *)pOutput);

  (void)pInput;
}

msfa_result initEngine() {
  ma_result result;
  ma_device_config deviceConfig;

  // Init MSFA engine
  SynthUnit::Init(sample_rate);
  ring_buffer = new RingBuffer();
  synth_unit = new SynthUnit(ring_buffer);


  deviceConfig = ma_device_config_init(ma_device_type_playback);
  deviceConfig.playback.format = ma_format_s16;
  deviceConfig.playback.channels = 1;
  deviceConfig.sampleRate = ma_standard_sample_rate_44100;
  deviceConfig.dataCallback = data_callback;

  if (ma_device_init(NULL, &deviceConfig, &device) != MA_SUCCESS) {
    //printf("Failed to open playback device.\n");
    return MSFA_AUDIO_OPEN_FAILED;
  }

  if (ma_device_start(&device) != MA_SUCCESS) {
    //printf("Failed to start playback device.\n");
    ma_device_uninit(&device);
    return MSFA_AUDIO_START_FAILED;
  }
  return MSFA_SUCCESS;
}

void sendMidi(const uint8_t *bytes, int size) {
  ring_buffer->Write(bytes, size);
}

void shutdownEngine() {
  ma_device_uninit(&device);
}