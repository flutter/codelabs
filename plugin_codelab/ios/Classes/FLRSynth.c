#include "FLRSynth.h"
#include <AudioToolbox/AudioToolbox.h>
#include <math.h>
#include <stdint.h>

#define SAMPLE_RATE 48000
#define kOutputBus 0
#define kInputBus 1

struct FLRSynth {
  uint64_t count;
  float amp;
  float freq;
  AudioUnit audioUnit;
};

static OSStatus Render(void *inRefCon,
                       AudioUnitRenderActionFlags *ioActionFlags,
                       const AudioTimeStamp *inTimeStamp, UInt32 inBusNumber,
                       UInt32 inNumberFrames, AudioBufferList *ioData) {
  FLRSynthRef synth = inRefCon;
  int16_t *left = (int16_t *)ioData->mBuffers[0].mData;
  int16_t *pos = left;
  float theta = (2.0f * M_PI * synth->freq) / SAMPLE_RATE;
  for (int32_t frame = 0; frame < inNumberFrames; ++frame) {
    *pos++ = (int16_t)(synth->amp * (sinf(synth->count * theta) * SHRT_MAX));
    synth->count += 1;
  }

  memcpy(ioData->mBuffers[1].mData, left, ioData->mBuffers[1].mDataByteSize);

  return noErr;
}

FLRSynthRef FLRSynthCreate(void) {
  FLRSynthRef result = calloc(sizeof(struct FLRSynth), 1);
  result->freq = 440.0f;
  return result;
}

void FLRSynthDestroy(FLRSynthRef synth) {
  if (synth->audioUnit) {
    OSStatus err = AudioOutputUnitStop(synth->audioUnit);
    assert(err == noErr);
    err = AudioComponentInstanceDispose(synth->audioUnit);
    assert(err == noErr);
  }
  free(synth);
}

void FLRSynthStart(FLRSynthRef synth) {
  OSErr err;

  AudioComponentDescription acd = {
      .componentType = kAudioUnitType_Output,
      .componentSubType = kAudioUnitSubType_RemoteIO,
      .componentManufacturer = kAudioUnitManufacturer_Apple,
  };

  AudioComponent output = AudioComponentFindNext(NULL, &acd);
  assert(output);

  AudioUnit audioUnit;
  err = AudioComponentInstanceNew(output, &audioUnit);
  assert(err == noErr);

  UInt32 flag = 1;
  err = AudioUnitSetProperty(audioUnit, kAudioOutputUnitProperty_EnableIO,
                             kAudioUnitScope_Output, kOutputBus, &flag,
                             sizeof(flag));
  assert(err == noErr);

  AudioStreamBasicDescription asbd = {
      .mFormatID = kAudioFormatLinearPCM,
      .mFormatFlags = 0 | kAudioFormatFlagIsSignedInteger |
                      kAudioFormatFlagIsPacked |
                      kAudioFormatFlagIsNonInterleaved,
      .mSampleRate = SAMPLE_RATE,
      .mBitsPerChannel = 16,
      .mChannelsPerFrame = 2,
      .mFramesPerPacket = 1,
      .mBytesPerFrame = 2,
      .mBytesPerPacket = 2,
  };

  err = AudioUnitSetProperty(audioUnit, kAudioUnitProperty_StreamFormat,
                             kAudioUnitScope_Output, kInputBus, &asbd,
                             sizeof(asbd));
  assert(err == noErr);
  err = AudioUnitSetProperty(audioUnit, kAudioUnitProperty_StreamFormat,
                             kAudioUnitScope_Input, kOutputBus, &asbd,
                             sizeof(asbd));
  assert(err == noErr);

  AURenderCallbackStruct callbackStruct;
  callbackStruct.inputProc = Render;
  callbackStruct.inputProcRefCon = synth;
  err = AudioUnitSetProperty(audioUnit, kAudioUnitProperty_SetRenderCallback,
                             kAudioUnitScope_Global, kOutputBus,
                             &callbackStruct, sizeof(callbackStruct));
  assert(err == noErr);

  err = AudioUnitInitialize(audioUnit);
  assert(err == noErr);
  err = AudioOutputUnitStart(audioUnit);
  assert(err == noErr);

  synth->audioUnit = audioUnit;
}

void FLRSynthKeyDown(FLRSynthRef synth, int key) {
  synth->amp = 1.0f;
  synth->freq = powf(1.0594630f, (key - 69)) * 440.0f;
}

void FLRSynthKeyUp(FLRSynthRef synth, int key) { synth->amp = 0.0f; }