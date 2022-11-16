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

#include <assert.h>
#include <stddef.h>
#include <stdio.h>
#include <time.h>
#include <jni.h>
#include <SLES/OpenSLES.h>
#include <SLES/OpenSLES_Android.h>

#include <android/log.h>
#define LOGI(...) __android_log_print(ANDROID_LOG_INFO, "synth", __VA_ARGS__)

#include "synth.h"
#include "synth_unit.h"

RingBuffer *ring_buffer;
RingBuffer *stats_ring_buffer;
SynthUnit *synth_unit;

const int N_BUFFERS = 2;
const int MAX_BUFFER_SIZE = 1024;
int buffer_size;

int16_t buffer[MAX_BUFFER_SIZE * N_BUFFERS];
int cur_buffer = 0;

// engine interfaces
static SLObjectItf engineObject = NULL;
static SLEngineItf engineEngine;

// output mix interfaces
static SLObjectItf outputMixObject = NULL;

// buffer queue player interfaces
static SLObjectItf bqPlayerObject = NULL;
static SLPlayItf bq_player_play;
static SLAndroidSimpleBufferQueueItf bq_player_buffer_queue;
static SLBufferQueueItf buffer_queue_itf;

static double ts_to_double(const struct timespec *tp) {
  return tp->tv_sec + 1e-9 * tp->tv_nsec;
}

// Roll our own decimal printing to guarantee no allocs
static size_t simple_ftoa(char *buf, double f) {
  size_t i = 0;
  uint32_t intpart = (uint32_t)f;
  uint32_t fracpart = (int)((f - intpart) * 1000000);
  do {
    buf[i++] = '0' + intpart % 10;
    intpart /= 10;
  } while (intpart > 0);
  for (size_t j = 0; j < i >> 1; j++) {
    char tmp = buf[j];
    buf[j] = buf[i - j - 1];
    buf[i - j - 1] = tmp;
  }
  buf[i++] = '.';
  const size_t nfrac = 6;
  for (size_t j = 0; j < nfrac; j++) {
    buf[i + nfrac - 1 - j] = '0' + fracpart % 10;
    fracpart /= 10;
  }
  return i + nfrac;
}

extern "C" void BqPlayerCallback(SLAndroidSimpleBufferQueueItf queueItf,
  void *data) {
  struct timespec tp;
  clock_gettime(CLOCK_MONOTONIC, &tp);
  double start_time = ts_to_double(&tp);
  int16_t *buf_ptr = buffer + buffer_size * cur_buffer;
  synth_unit->GetSamples(buffer_size, buf_ptr);
  char buf[64];
  //uint8_t *mem = new uint8_t[1024];
  //delete[] mem;
  //sprintf(buf, "%.6f", start_time);
  clock_gettime(CLOCK_MONOTONIC, &tp);
  double end_time = ts_to_double(&tp);
  SLresult result = (*queueItf)->Enqueue(bq_player_buffer_queue,
    buf_ptr, buffer_size * 2);
  assert(SL_RESULT_SUCCESS == result);
  cur_buffer = (cur_buffer + 1) % N_BUFFERS;
  size_t i = 0;
  buf[i++] = 't';
  buf[i++] = 's';
  buf[i++] = ' ';
  i += simple_ftoa(buf + i, start_time);
  buf[i++] = ' ';
  i += simple_ftoa(buf + i, end_time);
  buf[i++] = '\n';
  buf[i] = 0;
  if (i <= stats_ring_buffer->WriteBytesAvailable()) {
    stats_ring_buffer->Write((const uint8_t *)buf, i);
  }
  // Could potentially defer writing indication of overrun, but probably
  // not worth it.
}

void CreateEngine() {
SLresult result;
  result = slCreateEngine(&engineObject, 0, NULL, 0, NULL, NULL);
  assert(SL_RESULT_SUCCESS == result);

  result = (*engineObject)->Realize(engineObject, SL_BOOLEAN_FALSE);
  assert(SL_RESULT_SUCCESS == result);

  result = (*engineObject)->GetInterface(engineObject, SL_IID_ENGINE,
      &engineEngine);
  assert(SL_RESULT_SUCCESS == result);

  result = (*engineEngine)->CreateOutputMix(engineEngine, &outputMixObject,
      0, NULL, NULL);
  assert(SL_RESULT_SUCCESS == result);
  result = (*outputMixObject)->Realize(outputMixObject, SL_BOOLEAN_FALSE);
  assert(SL_RESULT_SUCCESS == result);
  LOGI("engine started");
  }

extern "C" JNIEXPORT void JNICALL
Java_com_manichord_synthesizer_android_AndroidGlue_start(JNIEnv *env,
    jobject thiz, jint sample_rate, jint buf_size) {
  CreateEngine();
  SLDataLocator_AndroidSimpleBufferQueue loc_bufq =
    {SL_DATALOCATOR_ANDROIDSIMPLEBUFFERQUEUE, N_BUFFERS};
  SLDataFormat_PCM format_pcm = {
    SL_DATAFORMAT_PCM, 1, sample_rate * 1000,
    SL_PCMSAMPLEFORMAT_FIXED_16, SL_PCMSAMPLEFORMAT_FIXED_16,
    SL_SPEAKER_FRONT_CENTER, SL_BYTEORDER_LITTLEENDIAN
      // TODO: compute real endianness
  };
  SLDataSource audio_src = {&loc_bufq, &format_pcm};
  SLDataLocator_OutputMix loc_outmix = {SL_DATALOCATOR_OUTPUTMIX,
    outputMixObject};
  SLDataSink audio_sink = {&loc_outmix, NULL};
  const SLInterfaceID ids[2] = {SL_IID_BUFFERQUEUE, SL_IID_VOLUME};
  const SLboolean req[2] = {SL_BOOLEAN_TRUE, SL_BOOLEAN_TRUE};
  SLresult result;
  result = (*engineEngine)->CreateAudioPlayer(engineEngine, &bqPlayerObject,
      &audio_src, &audio_sink, 2, ids, req);
  assert(SL_RESULT_SUCCESS == result);
  result = (*bqPlayerObject)->Realize(bqPlayerObject, SL_BOOLEAN_FALSE);
  assert(SL_RESULT_SUCCESS == result);
  result = (*bqPlayerObject)->GetInterface(bqPlayerObject, SL_IID_PLAY,
      &bq_player_play);
  assert(SL_RESULT_SUCCESS == result);
  result = (*bqPlayerObject)->GetInterface(bqPlayerObject, SL_IID_BUFFERQUEUE,
      &bq_player_buffer_queue);
  assert(SL_RESULT_SUCCESS == result);

  result = (*bq_player_buffer_queue)->RegisterCallback(bq_player_buffer_queue,
        &BqPlayerCallback, NULL);
  assert(SL_RESULT_SUCCESS == result);

  buffer_size = buf_size;
  SynthUnit::Init(sample_rate);
  ring_buffer = new RingBuffer();
  stats_ring_buffer = new RingBuffer();
  synth_unit = new SynthUnit(ring_buffer);
  for (int i = 0; i < N_BUFFERS - 1; ++i) {
    BqPlayerCallback(bq_player_buffer_queue, NULL);
  }

  result = (*bq_player_play)->SetPlayState(bq_player_play,
      SL_PLAYSTATE_PLAYING);
  assert(SL_RESULT_SUCCESS == result);
}

extern "C" JNIEXPORT void JNICALL
Java_com_manichord_synthesizer_android_AndroidGlue_shutdown(JNIEnv *env,
    jobject thiz) {
  LOGI("shutting down engine");
  if (bqPlayerObject != NULL) {
    (*bqPlayerObject)->Destroy(bqPlayerObject);
    bqPlayerObject = NULL;
    bq_player_play = NULL;
    bq_player_buffer_queue = NULL;
  }
  if (outputMixObject != NULL) {
    (*outputMixObject)->Destroy(outputMixObject);
    outputMixObject = NULL;
  }
  if (engineObject != NULL) {
    (*engineObject)->Destroy(engineObject);
    engineObject = NULL;
    engineEngine = NULL;
  }
  delete ring_buffer;
  ring_buffer = NULL;
  delete stats_ring_buffer;
  stats_ring_buffer = NULL;
  delete synth_unit;
  synth_unit = NULL;
}

extern "C" JNIEXPORT void JNICALL
Java_com_manichord_synthesizer_android_AndroidGlue_sendMidi(JNIEnv *env,
    jobject thiz, jbyteArray jb) {
  uint8_t *data = (uint8_t *)env->GetByteArrayElements(jb, NULL);
  if (data != NULL) {
    ring_buffer->Write(data, env->GetArrayLength(jb));
    env->ReleaseByteArrayElements(jb, (jbyte *)data, JNI_ABORT);
  }
}

extern "C" JNIEXPORT void JNICALL
Java_com_manichord_synthesizer_android_AndroidGlue_setPlayState(JNIEnv *env,
    jobject thiz, jboolean isPlaying) {
  SLresult result = (*bq_player_play)->SetPlayState(bq_player_play,
      isPlaying ? SL_PLAYSTATE_PLAYING : SL_PLAYSTATE_PAUSED);
  assert(SL_RESULT_SUCCESS == result);
}

extern "C" JNIEXPORT jint JNICALL
Java_com_levien_synthesizer_android_AndroidGlue_statsBytesAvailable(
    JNIEnv *env, jobject thiz) {
  return stats_ring_buffer->BytesAvailable();
}

extern "C" JNIEXPORT jint JNICALL
Java_com_levien_synthesizer_android_AndroidGlue_readStatsBytes(
    JNIEnv *env, jobject thiz, jbyteArray jb, jint off, jint len) {
  int bytes_available = stats_ring_buffer->BytesAvailable();
  int n = min(bytes_available, len);
  if (n) {
    size_t uoff = off;
    size_t ulen = len;
    if (off >= 0 && len >= 0 && uoff + ulen <= env->GetArrayLength(jb)) {
      uint8_t *buf = (uint8_t *)env->GetByteArrayElements(jb, NULL);
      stats_ring_buffer->Read(n, buf + uoff);
      env->ReleaseByteArrayElements(jb, (jbyte *)buf, 0);
    } else {
      env->ThrowNew(env->FindClass("java/lang/ArrayIndexOutOfBoundsException"),
        "out of bounds in AndroidGlue.readStatsBytes");
    }
  }
  return n;
}