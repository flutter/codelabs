part of 'playback_bloc.dart';

@Freezed()
class PlaybackState with _$PlaybackState {
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
class SongWithProgress with _$SongWithProgress {
  const factory SongWithProgress({
    required Duration progress,
    required Song song,
  }) = _SongWithProgress;
}
