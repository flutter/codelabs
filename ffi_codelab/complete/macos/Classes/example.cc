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
#include <unistd.h>

#include "../include/libmsfa.h"

//for initial onlytesting
#include "patch.h"

char epiano[] = {
  95, 29, 20, 50, 99, 95, 0, 0, 41, 0, 19, 0, 115, 24, 79, 2, 0, 95, 20, 20,
  50, 99, 95, 0, 0, 0, 0, 0, 0, 3, 0, 99, 2, 0, 95, 29, 20, 50, 99, 95, 0, 0,
  0, 0, 0, 0, 59, 24, 89, 2, 0, 95, 20, 20, 50, 99, 95, 0, 0, 0, 0, 0, 0, 59,
  8, 99, 2, 0, 95, 50, 35, 78, 99, 75, 0, 0, 0, 0, 0, 0, 59, 28, 58, 28, 0, 96,
  25, 25, 67, 99, 75, 0, 0, 0, 0, 0, 0, 83, 8, 99, 2, 0, 94, 67, 95, 60, 50,
  50, 50, 50, 4, 6, 34, 33, 0, 0, 56, 24, 69, 46, 80, 73, 65, 78, 79, 32, 49,
  32
};

// read a syx patch bank file from filename path and load it into the synth engine
int load(const char *filename) {
  uint8_t syx_data[4104];
  std::ifstream fp_in;
  fp_in.open(filename, std::ifstream::in);
  if (fp_in.fail()) {
    std::cerr << "error opening file" << std::endl;
    return 1;
  }
  fp_in.read((char *)syx_data, 4104);
  if (fp_in.fail()) {
    std::cerr << "error reading file" << std::endl;
    return 1;
  }
  sendMidi(syx_data, 4104);
  return 0;
}

int main(int argc, char **argv)
{
  printf("libmsfa sample...\n");

  if (initEngine() != MSFA_SUCCESS) {
    printf("Failed to initialise MSFA engine\n");
    return 1;
  }
 
  const char *fn = "../data/rom1a.syx";
  load(fn);

  uint8_t midiNoteNumber = 0x4c;
  uint8_t midiNoteDown[] = {0x90, midiNoteNumber, 0x57};
  uint8_t midiNoteUp[] = {0x90, midiNoteNumber, 0x00};
  
  sleep(1);
  sendMidi(midiNoteDown, 3);
  sleep(3);
 
  sendMidi(midiNoteUp, 3);

  printf("Press Enter to quit...");
  getchar();

  shutdownEngine();

  return 0;
}