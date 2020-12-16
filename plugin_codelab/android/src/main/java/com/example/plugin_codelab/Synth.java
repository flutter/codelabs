package com.example.plugin_codelab;

import android.media.AudioFormat;
import android.media.AudioManager;
import android.media.AudioTrack;

/** A synthesizer that plays sin waves for Android. */
public class Synth implements Runnable {
  private Thread mThread;
  private boolean mRunning = false;
  private double mFreq = 440.0;
  private double mAmp = 0.0;
  private int mNumKeysDown = 0;

  public void start() {
    mThread = new Thread(this);
    mRunning = true;
    mThread.start();
  }

  public void stop() {
    mRunning = false;
  }

  public int keyDown(int key) {
    mFreq = Math.pow(1.0594630f, (key - 69)) * 440.0;
    mAmp = 1.0;
    mNumKeysDown += 1;
    return mNumKeysDown;
  }

  public int keyUp(int key) {
    mAmp = 0.0;
    mNumKeysDown -= 1;
    return mNumKeysDown;
  }

  public void run() {
    final int sampleRate = 44100;
    final int bufferSize = 1024;
    final short[] buffer = new short[bufferSize];
    final AudioTrack audioTrack =
        new AudioTrack(
            AudioManager.STREAM_MUSIC,
            sampleRate,
            AudioFormat.CHANNEL_OUT_MONO,
            AudioFormat.ENCODING_PCM_16BIT,
            bufferSize,
            AudioTrack.MODE_STREAM);
    final double fSampleRate = sampleRate;
    final double pi2 = 2.0 * Math.PI;
    double counter = 0.0;
    audioTrack.play();
    while (mRunning) {
      double tau = (pi2 * mFreq) / fSampleRate;
      double maxValue = Short.MAX_VALUE * mAmp;
      for (int i = 0; i < bufferSize; ++i) {
        buffer[i] = (short) (Math.sin(tau * counter) * maxValue);
        counter += 1.0;
      }
      audioTrack.write(buffer, 0, bufferSize);
    }
    ;
    audioTrack.stop();
    audioTrack.release();
  }
}