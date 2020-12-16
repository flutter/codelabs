#pragma once

struct FLRSynth;
typedef struct FLRSynth* FLRSynthRef;

FLRSynthRef FLRSynthCreate(void);
void FLRSynthDestroy(FLRSynthRef synth);

void FLRSynthStart(FLRSynthRef synth);
void FLRSynthKeyDown(FLRSynthRef synth, int key);
void FLRSynthKeyUp(FLRSynthRef synth, int key);