// Copyright 2022 The Flutter Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

part of 'playback_bloc.dart';

@Freezed()
abstract class PlaybackState with _$PlaybackState {
  const factory PlaybackState({
    /// Legal values are between 0 and 1.
    @Default(0.5) double volume,

    /// Used to restore the volume after un-muting.
    double? previousVolume,
    @Default(false) bool isMuted,
    @Default(false) bool isPlaying,
    SongWithProgress? songWithProgress,
  }) = _PlaybackState;

  factory PlaybackState.initial() => const PlaybackState();
}

/// Helper which enforces our rule that our `song` and `progress` must either
/// both be `null`, or both have a real value.
@Freezed()
abstract class SongWithProgress with _$SongWithProgress {
  const factory SongWithProgress({
    required Duration progress,
    required Song song,
  }) = _SongWithProgress;
}
