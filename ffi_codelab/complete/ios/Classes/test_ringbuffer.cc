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

#include <time.h>
#include <pthread.h>
#include <iostream>

#include "ringbuffer.h"

#define kNumIter 100000
#define kBufSize 256

using namespace ::std;

void *consumer_thread(void *arg) {
  RingBuffer *rb = (RingBuffer *)arg;
  uint8_t buf[kBufSize];
  for (int i = 0; i < kNumIter; ++i) {
    int bytes_available = rb->BytesAvailable();
    // cout << "bytes_available = " << bytes_available << endl;
    while (bytes_available < kBufSize) {
      struct timespec sleepTime;
      sleepTime.tv_sec = 0;
      sleepTime.tv_nsec = 1000000;
      nanosleep(&sleepTime, NULL);
      bytes_available = rb->BytesAvailable();
    }
    // cout << "reading..." << endl;
    rb->Read(kBufSize, buf);
    for (int j = 0; j < kBufSize; ++j) {
      int expected = (i + j) & 0xff;
      if (buf[j] != expected) {
        cout << "error at " << i << ", " << j << " expected " << expected <<
          " got " << buf[j] << endl;
      }
    }
  }
  return NULL;
}

void test_ringbuffer() {
  RingBuffer rb;
  uint8_t buf[kBufSize];
  pthread_t thread;
  pthread_attr_t attr;
  pthread_attr_init(&attr);
  pthread_create(&thread, &attr, consumer_thread, (void *)&rb);
  for (int i = 0; i < kNumIter; ++i) {
    for (int j = 0; j < kBufSize; ++j) {
      buf[j] = i + j;
    }
    // cout << "writing..." << rb.BytesAvailable() << endl;
    rb.Write(buf, kBufSize);
  }
  pthread_join(thread, NULL);
}

