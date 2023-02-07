import 'dart:async';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../classes/classes.dart';

part 'playback_event.dart';
part 'playback_state.dart';
part 'playback_bloc.freezed.dart';

class PlaybackBloc extends Bloc<PlaybackEvent, PlaybackState> {
  PlaybackBloc() : super(PlaybackState.initial()) {
    on<PlaybackEvent>(
      (event, emit) => event.map(
        changeSong: (event) => _changeSong(event, emit),
        moveToInSong: (event) => _moveToInSong(event, emit),
        setVolume: (event) => _setVolume(event, emit),
        songProgress: (event) => _songProgress(event, emit),
        toggleMute: (event) => _toggleMute(event, emit),
        togglePlayPause: (event) => _togglePlayPause(event, emit),
      ),
    );
  }

  static const _playbackUpdateInterval = Duration(milliseconds: 100);
  StreamSubscription<Duration>? _currentlyPlayingSubscription;

  Stream<Duration> _startPlayingStream() async* {
    while (state.songWithProgress!.progress <
        state.songWithProgress!.song.length) {
      await Future<void>.delayed(_playbackUpdateInterval);
      yield _playbackUpdateInterval;
      if (state.songWithProgress!.progress >=
          state.songWithProgress!.song.length) {
        add(const PlaybackEvent.togglePlayPause());
        break;
      }
    }
  }

  void _handlePlaybackProgress(Duration progress) => add(
        PlaybackEvent.songProgress(progress),
      );

  void _togglePlayPause(TogglePlayPause event, Emitter<PlaybackState> emit) {
    state.isPlaying ? _pausePlayback() : _resumePlayback();
    emit(state.copyWith(isPlaying: !state.isPlaying));
  }

  void _pausePlayback() => _currentlyPlayingSubscription!.cancel();

  void _resumePlayback() => _currentlyPlayingSubscription =
      _startPlayingStream().listen(_handlePlaybackProgress);

  void _changeSong(ChangeSong event, Emitter<PlaybackState> emit) {
    emit(
      state.copyWith(
        isPlaying: true,
        songWithProgress: SongWithProgress(
          progress: const Duration(),
          song: event.song,
        ),
      ),
    );
    _resumePlayback();
  }

  void _songProgress(SongProgress event, Emitter<PlaybackState> emit) => emit(
        state.copyWith(
          songWithProgress: state.songWithProgress!.copyWith(
            progress: state.songWithProgress!.progress + event.duration,
          ),
        ),
      );
  void _setVolume(SetVolume event, Emitter<PlaybackState> emit) => emit(
        state.copyWith(
          volume: event.value,
          isMuted: false,
          previousVolume: null,
        ),
      );

  void _toggleMute(ToggleMute event, Emitter<PlaybackState> emit) {
    if (state.isMuted) {
      emit(
        state.copyWith(
          isMuted: false,
          volume: state.previousVolume!,
          previousVolume: null,
        ),
      );
    } else {
      emit(
        state.copyWith(
          isMuted: true,
          volume: 0,
          previousVolume: state.volume,
        ),
      );
    }
  }

  void _moveToInSong(MoveToInSong event, Emitter<PlaybackState> emit) {
    _pausePlayback();
    final targetMilliseconds =
        state.songWithProgress!.song.length.inMilliseconds * event.percent;
    emit(
      state.copyWith(
        isPlaying: false,
        songWithProgress: state.songWithProgress!.copyWith(
          progress: Duration(milliseconds: targetMilliseconds.toInt()),
        ),
      ),
    );
  }

  @override
  Future<void> close() async {
    await _currentlyPlayingSubscription?.cancel();
    await super.close();
  }
}
