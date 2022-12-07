// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'playback_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PlaybackEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() togglePlayPause,
    required TResult Function(Song song) changeSong,
    required TResult Function(double value) setVolume,
    required TResult Function() toggleMute,
    required TResult Function(double percent) moveToInSong,
    required TResult Function(Duration duration) songProgress,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? togglePlayPause,
    TResult? Function(Song song)? changeSong,
    TResult? Function(double value)? setVolume,
    TResult? Function()? toggleMute,
    TResult? Function(double percent)? moveToInSong,
    TResult? Function(Duration duration)? songProgress,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? togglePlayPause,
    TResult Function(Song song)? changeSong,
    TResult Function(double value)? setVolume,
    TResult Function()? toggleMute,
    TResult Function(double percent)? moveToInSong,
    TResult Function(Duration duration)? songProgress,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TogglePlayPause value) togglePlayPause,
    required TResult Function(ChangeSong value) changeSong,
    required TResult Function(SetVolume value) setVolume,
    required TResult Function(ToggleMute value) toggleMute,
    required TResult Function(MoveToInSong value) moveToInSong,
    required TResult Function(SongProgress value) songProgress,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TogglePlayPause value)? togglePlayPause,
    TResult? Function(ChangeSong value)? changeSong,
    TResult? Function(SetVolume value)? setVolume,
    TResult? Function(ToggleMute value)? toggleMute,
    TResult? Function(MoveToInSong value)? moveToInSong,
    TResult? Function(SongProgress value)? songProgress,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TogglePlayPause value)? togglePlayPause,
    TResult Function(ChangeSong value)? changeSong,
    TResult Function(SetVolume value)? setVolume,
    TResult Function(ToggleMute value)? toggleMute,
    TResult Function(MoveToInSong value)? moveToInSong,
    TResult Function(SongProgress value)? songProgress,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlaybackEventCopyWith<$Res> {
  factory $PlaybackEventCopyWith(
          PlaybackEvent value, $Res Function(PlaybackEvent) then) =
      _$PlaybackEventCopyWithImpl<$Res, PlaybackEvent>;
}

/// @nodoc
class _$PlaybackEventCopyWithImpl<$Res, $Val extends PlaybackEvent>
    implements $PlaybackEventCopyWith<$Res> {
  _$PlaybackEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$TogglePlayPauseCopyWith<$Res> {
  factory _$$TogglePlayPauseCopyWith(
          _$TogglePlayPause value, $Res Function(_$TogglePlayPause) then) =
      __$$TogglePlayPauseCopyWithImpl<$Res>;
}

/// @nodoc
class __$$TogglePlayPauseCopyWithImpl<$Res>
    extends _$PlaybackEventCopyWithImpl<$Res, _$TogglePlayPause>
    implements _$$TogglePlayPauseCopyWith<$Res> {
  __$$TogglePlayPauseCopyWithImpl(
      _$TogglePlayPause _value, $Res Function(_$TogglePlayPause) _then)
      : super(_value, _then);
}

/// @nodoc

class _$TogglePlayPause implements TogglePlayPause {
  const _$TogglePlayPause();

  @override
  String toString() {
    return 'PlaybackEvent.togglePlayPause()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$TogglePlayPause);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() togglePlayPause,
    required TResult Function(Song song) changeSong,
    required TResult Function(double value) setVolume,
    required TResult Function() toggleMute,
    required TResult Function(double percent) moveToInSong,
    required TResult Function(Duration duration) songProgress,
  }) {
    return togglePlayPause();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? togglePlayPause,
    TResult? Function(Song song)? changeSong,
    TResult? Function(double value)? setVolume,
    TResult? Function()? toggleMute,
    TResult? Function(double percent)? moveToInSong,
    TResult? Function(Duration duration)? songProgress,
  }) {
    return togglePlayPause?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? togglePlayPause,
    TResult Function(Song song)? changeSong,
    TResult Function(double value)? setVolume,
    TResult Function()? toggleMute,
    TResult Function(double percent)? moveToInSong,
    TResult Function(Duration duration)? songProgress,
    required TResult orElse(),
  }) {
    if (togglePlayPause != null) {
      return togglePlayPause();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TogglePlayPause value) togglePlayPause,
    required TResult Function(ChangeSong value) changeSong,
    required TResult Function(SetVolume value) setVolume,
    required TResult Function(ToggleMute value) toggleMute,
    required TResult Function(MoveToInSong value) moveToInSong,
    required TResult Function(SongProgress value) songProgress,
  }) {
    return togglePlayPause(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TogglePlayPause value)? togglePlayPause,
    TResult? Function(ChangeSong value)? changeSong,
    TResult? Function(SetVolume value)? setVolume,
    TResult? Function(ToggleMute value)? toggleMute,
    TResult? Function(MoveToInSong value)? moveToInSong,
    TResult? Function(SongProgress value)? songProgress,
  }) {
    return togglePlayPause?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TogglePlayPause value)? togglePlayPause,
    TResult Function(ChangeSong value)? changeSong,
    TResult Function(SetVolume value)? setVolume,
    TResult Function(ToggleMute value)? toggleMute,
    TResult Function(MoveToInSong value)? moveToInSong,
    TResult Function(SongProgress value)? songProgress,
    required TResult orElse(),
  }) {
    if (togglePlayPause != null) {
      return togglePlayPause(this);
    }
    return orElse();
  }
}

abstract class TogglePlayPause implements PlaybackEvent {
  const factory TogglePlayPause() = _$TogglePlayPause;
}

/// @nodoc
abstract class _$$ChangeSongCopyWith<$Res> {
  factory _$$ChangeSongCopyWith(
          _$ChangeSong value, $Res Function(_$ChangeSong) then) =
      __$$ChangeSongCopyWithImpl<$Res>;
  @useResult
  $Res call({Song song});
}

/// @nodoc
class __$$ChangeSongCopyWithImpl<$Res>
    extends _$PlaybackEventCopyWithImpl<$Res, _$ChangeSong>
    implements _$$ChangeSongCopyWith<$Res> {
  __$$ChangeSongCopyWithImpl(
      _$ChangeSong _value, $Res Function(_$ChangeSong) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? song = null,
  }) {
    return _then(_$ChangeSong(
      null == song
          ? _value.song
          : song // ignore: cast_nullable_to_non_nullable
              as Song,
    ));
  }
}

/// @nodoc

class _$ChangeSong implements ChangeSong {
  const _$ChangeSong(this.song);

  @override
  final Song song;

  @override
  String toString() {
    return 'PlaybackEvent.changeSong(song: $song)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangeSong &&
            (identical(other.song, song) || other.song == song));
  }

  @override
  int get hashCode => Object.hash(runtimeType, song);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangeSongCopyWith<_$ChangeSong> get copyWith =>
      __$$ChangeSongCopyWithImpl<_$ChangeSong>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() togglePlayPause,
    required TResult Function(Song song) changeSong,
    required TResult Function(double value) setVolume,
    required TResult Function() toggleMute,
    required TResult Function(double percent) moveToInSong,
    required TResult Function(Duration duration) songProgress,
  }) {
    return changeSong(song);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? togglePlayPause,
    TResult? Function(Song song)? changeSong,
    TResult? Function(double value)? setVolume,
    TResult? Function()? toggleMute,
    TResult? Function(double percent)? moveToInSong,
    TResult? Function(Duration duration)? songProgress,
  }) {
    return changeSong?.call(song);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? togglePlayPause,
    TResult Function(Song song)? changeSong,
    TResult Function(double value)? setVolume,
    TResult Function()? toggleMute,
    TResult Function(double percent)? moveToInSong,
    TResult Function(Duration duration)? songProgress,
    required TResult orElse(),
  }) {
    if (changeSong != null) {
      return changeSong(song);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TogglePlayPause value) togglePlayPause,
    required TResult Function(ChangeSong value) changeSong,
    required TResult Function(SetVolume value) setVolume,
    required TResult Function(ToggleMute value) toggleMute,
    required TResult Function(MoveToInSong value) moveToInSong,
    required TResult Function(SongProgress value) songProgress,
  }) {
    return changeSong(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TogglePlayPause value)? togglePlayPause,
    TResult? Function(ChangeSong value)? changeSong,
    TResult? Function(SetVolume value)? setVolume,
    TResult? Function(ToggleMute value)? toggleMute,
    TResult? Function(MoveToInSong value)? moveToInSong,
    TResult? Function(SongProgress value)? songProgress,
  }) {
    return changeSong?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TogglePlayPause value)? togglePlayPause,
    TResult Function(ChangeSong value)? changeSong,
    TResult Function(SetVolume value)? setVolume,
    TResult Function(ToggleMute value)? toggleMute,
    TResult Function(MoveToInSong value)? moveToInSong,
    TResult Function(SongProgress value)? songProgress,
    required TResult orElse(),
  }) {
    if (changeSong != null) {
      return changeSong(this);
    }
    return orElse();
  }
}

abstract class ChangeSong implements PlaybackEvent {
  const factory ChangeSong(final Song song) = _$ChangeSong;

  Song get song;
  @JsonKey(ignore: true)
  _$$ChangeSongCopyWith<_$ChangeSong> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SetVolumeCopyWith<$Res> {
  factory _$$SetVolumeCopyWith(
          _$SetVolume value, $Res Function(_$SetVolume) then) =
      __$$SetVolumeCopyWithImpl<$Res>;
  @useResult
  $Res call({double value});
}

/// @nodoc
class __$$SetVolumeCopyWithImpl<$Res>
    extends _$PlaybackEventCopyWithImpl<$Res, _$SetVolume>
    implements _$$SetVolumeCopyWith<$Res> {
  __$$SetVolumeCopyWithImpl(
      _$SetVolume _value, $Res Function(_$SetVolume) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_$SetVolume(
      null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$SetVolume implements SetVolume {
  const _$SetVolume(this.value);

  @override
  final double value;

  @override
  String toString() {
    return 'PlaybackEvent.setVolume(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SetVolume &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SetVolumeCopyWith<_$SetVolume> get copyWith =>
      __$$SetVolumeCopyWithImpl<_$SetVolume>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() togglePlayPause,
    required TResult Function(Song song) changeSong,
    required TResult Function(double value) setVolume,
    required TResult Function() toggleMute,
    required TResult Function(double percent) moveToInSong,
    required TResult Function(Duration duration) songProgress,
  }) {
    return setVolume(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? togglePlayPause,
    TResult? Function(Song song)? changeSong,
    TResult? Function(double value)? setVolume,
    TResult? Function()? toggleMute,
    TResult? Function(double percent)? moveToInSong,
    TResult? Function(Duration duration)? songProgress,
  }) {
    return setVolume?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? togglePlayPause,
    TResult Function(Song song)? changeSong,
    TResult Function(double value)? setVolume,
    TResult Function()? toggleMute,
    TResult Function(double percent)? moveToInSong,
    TResult Function(Duration duration)? songProgress,
    required TResult orElse(),
  }) {
    if (setVolume != null) {
      return setVolume(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TogglePlayPause value) togglePlayPause,
    required TResult Function(ChangeSong value) changeSong,
    required TResult Function(SetVolume value) setVolume,
    required TResult Function(ToggleMute value) toggleMute,
    required TResult Function(MoveToInSong value) moveToInSong,
    required TResult Function(SongProgress value) songProgress,
  }) {
    return setVolume(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TogglePlayPause value)? togglePlayPause,
    TResult? Function(ChangeSong value)? changeSong,
    TResult? Function(SetVolume value)? setVolume,
    TResult? Function(ToggleMute value)? toggleMute,
    TResult? Function(MoveToInSong value)? moveToInSong,
    TResult? Function(SongProgress value)? songProgress,
  }) {
    return setVolume?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TogglePlayPause value)? togglePlayPause,
    TResult Function(ChangeSong value)? changeSong,
    TResult Function(SetVolume value)? setVolume,
    TResult Function(ToggleMute value)? toggleMute,
    TResult Function(MoveToInSong value)? moveToInSong,
    TResult Function(SongProgress value)? songProgress,
    required TResult orElse(),
  }) {
    if (setVolume != null) {
      return setVolume(this);
    }
    return orElse();
  }
}

abstract class SetVolume implements PlaybackEvent {
  const factory SetVolume(final double value) = _$SetVolume;

  double get value;
  @JsonKey(ignore: true)
  _$$SetVolumeCopyWith<_$SetVolume> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ToggleMuteCopyWith<$Res> {
  factory _$$ToggleMuteCopyWith(
          _$ToggleMute value, $Res Function(_$ToggleMute) then) =
      __$$ToggleMuteCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ToggleMuteCopyWithImpl<$Res>
    extends _$PlaybackEventCopyWithImpl<$Res, _$ToggleMute>
    implements _$$ToggleMuteCopyWith<$Res> {
  __$$ToggleMuteCopyWithImpl(
      _$ToggleMute _value, $Res Function(_$ToggleMute) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ToggleMute implements ToggleMute {
  const _$ToggleMute();

  @override
  String toString() {
    return 'PlaybackEvent.toggleMute()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ToggleMute);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() togglePlayPause,
    required TResult Function(Song song) changeSong,
    required TResult Function(double value) setVolume,
    required TResult Function() toggleMute,
    required TResult Function(double percent) moveToInSong,
    required TResult Function(Duration duration) songProgress,
  }) {
    return toggleMute();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? togglePlayPause,
    TResult? Function(Song song)? changeSong,
    TResult? Function(double value)? setVolume,
    TResult? Function()? toggleMute,
    TResult? Function(double percent)? moveToInSong,
    TResult? Function(Duration duration)? songProgress,
  }) {
    return toggleMute?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? togglePlayPause,
    TResult Function(Song song)? changeSong,
    TResult Function(double value)? setVolume,
    TResult Function()? toggleMute,
    TResult Function(double percent)? moveToInSong,
    TResult Function(Duration duration)? songProgress,
    required TResult orElse(),
  }) {
    if (toggleMute != null) {
      return toggleMute();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TogglePlayPause value) togglePlayPause,
    required TResult Function(ChangeSong value) changeSong,
    required TResult Function(SetVolume value) setVolume,
    required TResult Function(ToggleMute value) toggleMute,
    required TResult Function(MoveToInSong value) moveToInSong,
    required TResult Function(SongProgress value) songProgress,
  }) {
    return toggleMute(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TogglePlayPause value)? togglePlayPause,
    TResult? Function(ChangeSong value)? changeSong,
    TResult? Function(SetVolume value)? setVolume,
    TResult? Function(ToggleMute value)? toggleMute,
    TResult? Function(MoveToInSong value)? moveToInSong,
    TResult? Function(SongProgress value)? songProgress,
  }) {
    return toggleMute?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TogglePlayPause value)? togglePlayPause,
    TResult Function(ChangeSong value)? changeSong,
    TResult Function(SetVolume value)? setVolume,
    TResult Function(ToggleMute value)? toggleMute,
    TResult Function(MoveToInSong value)? moveToInSong,
    TResult Function(SongProgress value)? songProgress,
    required TResult orElse(),
  }) {
    if (toggleMute != null) {
      return toggleMute(this);
    }
    return orElse();
  }
}

abstract class ToggleMute implements PlaybackEvent {
  const factory ToggleMute() = _$ToggleMute;
}

/// @nodoc
abstract class _$$MoveToInSongCopyWith<$Res> {
  factory _$$MoveToInSongCopyWith(
          _$MoveToInSong value, $Res Function(_$MoveToInSong) then) =
      __$$MoveToInSongCopyWithImpl<$Res>;
  @useResult
  $Res call({double percent});
}

/// @nodoc
class __$$MoveToInSongCopyWithImpl<$Res>
    extends _$PlaybackEventCopyWithImpl<$Res, _$MoveToInSong>
    implements _$$MoveToInSongCopyWith<$Res> {
  __$$MoveToInSongCopyWithImpl(
      _$MoveToInSong _value, $Res Function(_$MoveToInSong) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? percent = null,
  }) {
    return _then(_$MoveToInSong(
      null == percent
          ? _value.percent
          : percent // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$MoveToInSong implements MoveToInSong {
  const _$MoveToInSong(this.percent);

  @override
  final double percent;

  @override
  String toString() {
    return 'PlaybackEvent.moveToInSong(percent: $percent)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MoveToInSong &&
            (identical(other.percent, percent) || other.percent == percent));
  }

  @override
  int get hashCode => Object.hash(runtimeType, percent);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MoveToInSongCopyWith<_$MoveToInSong> get copyWith =>
      __$$MoveToInSongCopyWithImpl<_$MoveToInSong>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() togglePlayPause,
    required TResult Function(Song song) changeSong,
    required TResult Function(double value) setVolume,
    required TResult Function() toggleMute,
    required TResult Function(double percent) moveToInSong,
    required TResult Function(Duration duration) songProgress,
  }) {
    return moveToInSong(percent);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? togglePlayPause,
    TResult? Function(Song song)? changeSong,
    TResult? Function(double value)? setVolume,
    TResult? Function()? toggleMute,
    TResult? Function(double percent)? moveToInSong,
    TResult? Function(Duration duration)? songProgress,
  }) {
    return moveToInSong?.call(percent);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? togglePlayPause,
    TResult Function(Song song)? changeSong,
    TResult Function(double value)? setVolume,
    TResult Function()? toggleMute,
    TResult Function(double percent)? moveToInSong,
    TResult Function(Duration duration)? songProgress,
    required TResult orElse(),
  }) {
    if (moveToInSong != null) {
      return moveToInSong(percent);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TogglePlayPause value) togglePlayPause,
    required TResult Function(ChangeSong value) changeSong,
    required TResult Function(SetVolume value) setVolume,
    required TResult Function(ToggleMute value) toggleMute,
    required TResult Function(MoveToInSong value) moveToInSong,
    required TResult Function(SongProgress value) songProgress,
  }) {
    return moveToInSong(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TogglePlayPause value)? togglePlayPause,
    TResult? Function(ChangeSong value)? changeSong,
    TResult? Function(SetVolume value)? setVolume,
    TResult? Function(ToggleMute value)? toggleMute,
    TResult? Function(MoveToInSong value)? moveToInSong,
    TResult? Function(SongProgress value)? songProgress,
  }) {
    return moveToInSong?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TogglePlayPause value)? togglePlayPause,
    TResult Function(ChangeSong value)? changeSong,
    TResult Function(SetVolume value)? setVolume,
    TResult Function(ToggleMute value)? toggleMute,
    TResult Function(MoveToInSong value)? moveToInSong,
    TResult Function(SongProgress value)? songProgress,
    required TResult orElse(),
  }) {
    if (moveToInSong != null) {
      return moveToInSong(this);
    }
    return orElse();
  }
}

abstract class MoveToInSong implements PlaybackEvent {
  const factory MoveToInSong(final double percent) = _$MoveToInSong;

  double get percent;
  @JsonKey(ignore: true)
  _$$MoveToInSongCopyWith<_$MoveToInSong> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SongProgressCopyWith<$Res> {
  factory _$$SongProgressCopyWith(
          _$SongProgress value, $Res Function(_$SongProgress) then) =
      __$$SongProgressCopyWithImpl<$Res>;
  @useResult
  $Res call({Duration duration});
}

/// @nodoc
class __$$SongProgressCopyWithImpl<$Res>
    extends _$PlaybackEventCopyWithImpl<$Res, _$SongProgress>
    implements _$$SongProgressCopyWith<$Res> {
  __$$SongProgressCopyWithImpl(
      _$SongProgress _value, $Res Function(_$SongProgress) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? duration = null,
  }) {
    return _then(_$SongProgress(
      null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as Duration,
    ));
  }
}

/// @nodoc

class _$SongProgress implements SongProgress {
  const _$SongProgress(this.duration);

  @override
  final Duration duration;

  @override
  String toString() {
    return 'PlaybackEvent.songProgress(duration: $duration)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SongProgress &&
            (identical(other.duration, duration) ||
                other.duration == duration));
  }

  @override
  int get hashCode => Object.hash(runtimeType, duration);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SongProgressCopyWith<_$SongProgress> get copyWith =>
      __$$SongProgressCopyWithImpl<_$SongProgress>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() togglePlayPause,
    required TResult Function(Song song) changeSong,
    required TResult Function(double value) setVolume,
    required TResult Function() toggleMute,
    required TResult Function(double percent) moveToInSong,
    required TResult Function(Duration duration) songProgress,
  }) {
    return songProgress(duration);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? togglePlayPause,
    TResult? Function(Song song)? changeSong,
    TResult? Function(double value)? setVolume,
    TResult? Function()? toggleMute,
    TResult? Function(double percent)? moveToInSong,
    TResult? Function(Duration duration)? songProgress,
  }) {
    return songProgress?.call(duration);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? togglePlayPause,
    TResult Function(Song song)? changeSong,
    TResult Function(double value)? setVolume,
    TResult Function()? toggleMute,
    TResult Function(double percent)? moveToInSong,
    TResult Function(Duration duration)? songProgress,
    required TResult orElse(),
  }) {
    if (songProgress != null) {
      return songProgress(duration);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TogglePlayPause value) togglePlayPause,
    required TResult Function(ChangeSong value) changeSong,
    required TResult Function(SetVolume value) setVolume,
    required TResult Function(ToggleMute value) toggleMute,
    required TResult Function(MoveToInSong value) moveToInSong,
    required TResult Function(SongProgress value) songProgress,
  }) {
    return songProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TogglePlayPause value)? togglePlayPause,
    TResult? Function(ChangeSong value)? changeSong,
    TResult? Function(SetVolume value)? setVolume,
    TResult? Function(ToggleMute value)? toggleMute,
    TResult? Function(MoveToInSong value)? moveToInSong,
    TResult? Function(SongProgress value)? songProgress,
  }) {
    return songProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TogglePlayPause value)? togglePlayPause,
    TResult Function(ChangeSong value)? changeSong,
    TResult Function(SetVolume value)? setVolume,
    TResult Function(ToggleMute value)? toggleMute,
    TResult Function(MoveToInSong value)? moveToInSong,
    TResult Function(SongProgress value)? songProgress,
    required TResult orElse(),
  }) {
    if (songProgress != null) {
      return songProgress(this);
    }
    return orElse();
  }
}

abstract class SongProgress implements PlaybackEvent {
  const factory SongProgress(final Duration duration) = _$SongProgress;

  Duration get duration;
  @JsonKey(ignore: true)
  _$$SongProgressCopyWith<_$SongProgress> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$PlaybackState {
  /// Legal values are between 0 and 1.
  double get volume => throw _privateConstructorUsedError;

  /// Used to restore the volume after un-muting.
  double? get previousVolume => throw _privateConstructorUsedError;
  bool get isMuted => throw _privateConstructorUsedError;
  bool get isPlaying => throw _privateConstructorUsedError;
  SongWithProgress? get songWithProgress => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PlaybackStateCopyWith<PlaybackState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlaybackStateCopyWith<$Res> {
  factory $PlaybackStateCopyWith(
          PlaybackState value, $Res Function(PlaybackState) then) =
      _$PlaybackStateCopyWithImpl<$Res, PlaybackState>;
  @useResult
  $Res call(
      {double volume,
      double? previousVolume,
      bool isMuted,
      bool isPlaying,
      SongWithProgress? songWithProgress});

  $SongWithProgressCopyWith<$Res>? get songWithProgress;
}

/// @nodoc
class _$PlaybackStateCopyWithImpl<$Res, $Val extends PlaybackState>
    implements $PlaybackStateCopyWith<$Res> {
  _$PlaybackStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? volume = null,
    Object? previousVolume = freezed,
    Object? isMuted = null,
    Object? isPlaying = null,
    Object? songWithProgress = freezed,
  }) {
    return _then(_value.copyWith(
      volume: null == volume
          ? _value.volume
          : volume // ignore: cast_nullable_to_non_nullable
              as double,
      previousVolume: freezed == previousVolume
          ? _value.previousVolume
          : previousVolume // ignore: cast_nullable_to_non_nullable
              as double?,
      isMuted: null == isMuted
          ? _value.isMuted
          : isMuted // ignore: cast_nullable_to_non_nullable
              as bool,
      isPlaying: null == isPlaying
          ? _value.isPlaying
          : isPlaying // ignore: cast_nullable_to_non_nullable
              as bool,
      songWithProgress: freezed == songWithProgress
          ? _value.songWithProgress
          : songWithProgress // ignore: cast_nullable_to_non_nullable
              as SongWithProgress?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $SongWithProgressCopyWith<$Res>? get songWithProgress {
    if (_value.songWithProgress == null) {
      return null;
    }

    return $SongWithProgressCopyWith<$Res>(_value.songWithProgress!, (value) {
      return _then(_value.copyWith(songWithProgress: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_PlaybackStateCopyWith<$Res>
    implements $PlaybackStateCopyWith<$Res> {
  factory _$$_PlaybackStateCopyWith(
          _$_PlaybackState value, $Res Function(_$_PlaybackState) then) =
      __$$_PlaybackStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {double volume,
      double? previousVolume,
      bool isMuted,
      bool isPlaying,
      SongWithProgress? songWithProgress});

  @override
  $SongWithProgressCopyWith<$Res>? get songWithProgress;
}

/// @nodoc
class __$$_PlaybackStateCopyWithImpl<$Res>
    extends _$PlaybackStateCopyWithImpl<$Res, _$_PlaybackState>
    implements _$$_PlaybackStateCopyWith<$Res> {
  __$$_PlaybackStateCopyWithImpl(
      _$_PlaybackState _value, $Res Function(_$_PlaybackState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? volume = null,
    Object? previousVolume = freezed,
    Object? isMuted = null,
    Object? isPlaying = null,
    Object? songWithProgress = freezed,
  }) {
    return _then(_$_PlaybackState(
      volume: null == volume
          ? _value.volume
          : volume // ignore: cast_nullable_to_non_nullable
              as double,
      previousVolume: freezed == previousVolume
          ? _value.previousVolume
          : previousVolume // ignore: cast_nullable_to_non_nullable
              as double?,
      isMuted: null == isMuted
          ? _value.isMuted
          : isMuted // ignore: cast_nullable_to_non_nullable
              as bool,
      isPlaying: null == isPlaying
          ? _value.isPlaying
          : isPlaying // ignore: cast_nullable_to_non_nullable
              as bool,
      songWithProgress: freezed == songWithProgress
          ? _value.songWithProgress
          : songWithProgress // ignore: cast_nullable_to_non_nullable
              as SongWithProgress?,
    ));
  }
}

/// @nodoc

class _$_PlaybackState implements _PlaybackState {
  const _$_PlaybackState(
      {this.volume = 0.5,
      this.previousVolume,
      this.isMuted = false,
      this.isPlaying = false,
      this.songWithProgress});

  /// Legal values are between 0 and 1.
  @override
  @JsonKey()
  final double volume;

  /// Used to restore the volume after un-muting.
  @override
  final double? previousVolume;
  @override
  @JsonKey()
  final bool isMuted;
  @override
  @JsonKey()
  final bool isPlaying;
  @override
  final SongWithProgress? songWithProgress;

  @override
  String toString() {
    return 'PlaybackState(volume: $volume, previousVolume: $previousVolume, isMuted: $isMuted, isPlaying: $isPlaying, songWithProgress: $songWithProgress)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PlaybackState &&
            (identical(other.volume, volume) || other.volume == volume) &&
            (identical(other.previousVolume, previousVolume) ||
                other.previousVolume == previousVolume) &&
            (identical(other.isMuted, isMuted) || other.isMuted == isMuted) &&
            (identical(other.isPlaying, isPlaying) ||
                other.isPlaying == isPlaying) &&
            (identical(other.songWithProgress, songWithProgress) ||
                other.songWithProgress == songWithProgress));
  }

  @override
  int get hashCode => Object.hash(runtimeType, volume, previousVolume, isMuted,
      isPlaying, songWithProgress);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PlaybackStateCopyWith<_$_PlaybackState> get copyWith =>
      __$$_PlaybackStateCopyWithImpl<_$_PlaybackState>(this, _$identity);
}

abstract class _PlaybackState implements PlaybackState {
  const factory _PlaybackState(
      {final double volume,
      final double? previousVolume,
      final bool isMuted,
      final bool isPlaying,
      final SongWithProgress? songWithProgress}) = _$_PlaybackState;

  @override

  /// Legal values are between 0 and 1.
  double get volume;
  @override

  /// Used to restore the volume after un-muting.
  double? get previousVolume;
  @override
  bool get isMuted;
  @override
  bool get isPlaying;
  @override
  SongWithProgress? get songWithProgress;
  @override
  @JsonKey(ignore: true)
  _$$_PlaybackStateCopyWith<_$_PlaybackState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SongWithProgress {
  Duration get progress => throw _privateConstructorUsedError;
  Song get song => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SongWithProgressCopyWith<SongWithProgress> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SongWithProgressCopyWith<$Res> {
  factory $SongWithProgressCopyWith(
          SongWithProgress value, $Res Function(SongWithProgress) then) =
      _$SongWithProgressCopyWithImpl<$Res, SongWithProgress>;
  @useResult
  $Res call({Duration progress, Song song});
}

/// @nodoc
class _$SongWithProgressCopyWithImpl<$Res, $Val extends SongWithProgress>
    implements $SongWithProgressCopyWith<$Res> {
  _$SongWithProgressCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? progress = null,
    Object? song = null,
  }) {
    return _then(_value.copyWith(
      progress: null == progress
          ? _value.progress
          : progress // ignore: cast_nullable_to_non_nullable
              as Duration,
      song: null == song
          ? _value.song
          : song // ignore: cast_nullable_to_non_nullable
              as Song,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SongWithProgressCopyWith<$Res>
    implements $SongWithProgressCopyWith<$Res> {
  factory _$$_SongWithProgressCopyWith(
          _$_SongWithProgress value, $Res Function(_$_SongWithProgress) then) =
      __$$_SongWithProgressCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Duration progress, Song song});
}

/// @nodoc
class __$$_SongWithProgressCopyWithImpl<$Res>
    extends _$SongWithProgressCopyWithImpl<$Res, _$_SongWithProgress>
    implements _$$_SongWithProgressCopyWith<$Res> {
  __$$_SongWithProgressCopyWithImpl(
      _$_SongWithProgress _value, $Res Function(_$_SongWithProgress) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? progress = null,
    Object? song = null,
  }) {
    return _then(_$_SongWithProgress(
      progress: null == progress
          ? _value.progress
          : progress // ignore: cast_nullable_to_non_nullable
              as Duration,
      song: null == song
          ? _value.song
          : song // ignore: cast_nullable_to_non_nullable
              as Song,
    ));
  }
}

/// @nodoc

class _$_SongWithProgress implements _SongWithProgress {
  const _$_SongWithProgress({required this.progress, required this.song});

  @override
  final Duration progress;
  @override
  final Song song;

  @override
  String toString() {
    return 'SongWithProgress(progress: $progress, song: $song)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SongWithProgress &&
            (identical(other.progress, progress) ||
                other.progress == progress) &&
            (identical(other.song, song) || other.song == song));
  }

  @override
  int get hashCode => Object.hash(runtimeType, progress, song);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SongWithProgressCopyWith<_$_SongWithProgress> get copyWith =>
      __$$_SongWithProgressCopyWithImpl<_$_SongWithProgress>(this, _$identity);
}

abstract class _SongWithProgress implements SongWithProgress {
  const factory _SongWithProgress(
      {required final Duration progress,
      required final Song song}) = _$_SongWithProgress;

  @override
  Duration get progress;
  @override
  Song get song;
  @override
  @JsonKey(ignore: true)
  _$$_SongWithProgressCopyWith<_$_SongWithProgress> get copyWith =>
      throw _privateConstructorUsedError;
}
