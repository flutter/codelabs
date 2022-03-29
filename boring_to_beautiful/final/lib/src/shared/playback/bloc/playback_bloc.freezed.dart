// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'playback_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$PlaybackEventTearOff {
  const _$PlaybackEventTearOff();

  TogglePlayPause togglePlayPause() {
    return const TogglePlayPause();
  }

  ChangeSong changeSong(Song song) {
    return ChangeSong(
      song,
    );
  }

  SetVolume setVolume(double value) {
    return SetVolume(
      value,
    );
  }

  ToggleMute toggleMute() {
    return const ToggleMute();
  }

  MoveToInSong moveToInSong(double percent) {
    return MoveToInSong(
      percent,
    );
  }

  SongProgress songProgress(Duration duration) {
    return SongProgress(
      duration,
    );
  }
}

/// @nodoc
const $PlaybackEvent = _$PlaybackEventTearOff();

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
    TResult Function()? togglePlayPause,
    TResult Function(Song song)? changeSong,
    TResult Function(double value)? setVolume,
    TResult Function()? toggleMute,
    TResult Function(double percent)? moveToInSong,
    TResult Function(Duration duration)? songProgress,
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
    TResult Function(TogglePlayPause value)? togglePlayPause,
    TResult Function(ChangeSong value)? changeSong,
    TResult Function(SetVolume value)? setVolume,
    TResult Function(ToggleMute value)? toggleMute,
    TResult Function(MoveToInSong value)? moveToInSong,
    TResult Function(SongProgress value)? songProgress,
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
      _$PlaybackEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$PlaybackEventCopyWithImpl<$Res>
    implements $PlaybackEventCopyWith<$Res> {
  _$PlaybackEventCopyWithImpl(this._value, this._then);

  final PlaybackEvent _value;
  // ignore: unused_field
  final $Res Function(PlaybackEvent) _then;
}

/// @nodoc
abstract class $TogglePlayPauseCopyWith<$Res> {
  factory $TogglePlayPauseCopyWith(
          TogglePlayPause value, $Res Function(TogglePlayPause) then) =
      _$TogglePlayPauseCopyWithImpl<$Res>;
}

/// @nodoc
class _$TogglePlayPauseCopyWithImpl<$Res>
    extends _$PlaybackEventCopyWithImpl<$Res>
    implements $TogglePlayPauseCopyWith<$Res> {
  _$TogglePlayPauseCopyWithImpl(
      TogglePlayPause _value, $Res Function(TogglePlayPause) _then)
      : super(_value, (v) => _then(v as TogglePlayPause));

  @override
  TogglePlayPause get _value => super._value as TogglePlayPause;
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
        (other.runtimeType == runtimeType && other is TogglePlayPause);
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
    TResult Function()? togglePlayPause,
    TResult Function(Song song)? changeSong,
    TResult Function(double value)? setVolume,
    TResult Function()? toggleMute,
    TResult Function(double percent)? moveToInSong,
    TResult Function(Duration duration)? songProgress,
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
    TResult Function(TogglePlayPause value)? togglePlayPause,
    TResult Function(ChangeSong value)? changeSong,
    TResult Function(SetVolume value)? setVolume,
    TResult Function(ToggleMute value)? toggleMute,
    TResult Function(MoveToInSong value)? moveToInSong,
    TResult Function(SongProgress value)? songProgress,
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
abstract class $ChangeSongCopyWith<$Res> {
  factory $ChangeSongCopyWith(
          ChangeSong value, $Res Function(ChangeSong) then) =
      _$ChangeSongCopyWithImpl<$Res>;
  $Res call({Song song});
}

/// @nodoc
class _$ChangeSongCopyWithImpl<$Res> extends _$PlaybackEventCopyWithImpl<$Res>
    implements $ChangeSongCopyWith<$Res> {
  _$ChangeSongCopyWithImpl(ChangeSong _value, $Res Function(ChangeSong) _then)
      : super(_value, (v) => _then(v as ChangeSong));

  @override
  ChangeSong get _value => super._value as ChangeSong;

  @override
  $Res call({
    Object? song = freezed,
  }) {
    return _then(ChangeSong(
      song == freezed
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
            other is ChangeSong &&
            const DeepCollectionEquality().equals(other.song, song));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(song));

  @JsonKey(ignore: true)
  @override
  $ChangeSongCopyWith<ChangeSong> get copyWith =>
      _$ChangeSongCopyWithImpl<ChangeSong>(this, _$identity);

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
    TResult Function()? togglePlayPause,
    TResult Function(Song song)? changeSong,
    TResult Function(double value)? setVolume,
    TResult Function()? toggleMute,
    TResult Function(double percent)? moveToInSong,
    TResult Function(Duration duration)? songProgress,
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
    TResult Function(TogglePlayPause value)? togglePlayPause,
    TResult Function(ChangeSong value)? changeSong,
    TResult Function(SetVolume value)? setVolume,
    TResult Function(ToggleMute value)? toggleMute,
    TResult Function(MoveToInSong value)? moveToInSong,
    TResult Function(SongProgress value)? songProgress,
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
  const factory ChangeSong(Song song) = _$ChangeSong;

  Song get song;
  @JsonKey(ignore: true)
  $ChangeSongCopyWith<ChangeSong> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SetVolumeCopyWith<$Res> {
  factory $SetVolumeCopyWith(SetVolume value, $Res Function(SetVolume) then) =
      _$SetVolumeCopyWithImpl<$Res>;
  $Res call({double value});
}

/// @nodoc
class _$SetVolumeCopyWithImpl<$Res> extends _$PlaybackEventCopyWithImpl<$Res>
    implements $SetVolumeCopyWith<$Res> {
  _$SetVolumeCopyWithImpl(SetVolume _value, $Res Function(SetVolume) _then)
      : super(_value, (v) => _then(v as SetVolume));

  @override
  SetVolume get _value => super._value as SetVolume;

  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(SetVolume(
      value == freezed
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
            other is SetVolume &&
            const DeepCollectionEquality().equals(other.value, value));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(value));

  @JsonKey(ignore: true)
  @override
  $SetVolumeCopyWith<SetVolume> get copyWith =>
      _$SetVolumeCopyWithImpl<SetVolume>(this, _$identity);

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
    TResult Function()? togglePlayPause,
    TResult Function(Song song)? changeSong,
    TResult Function(double value)? setVolume,
    TResult Function()? toggleMute,
    TResult Function(double percent)? moveToInSong,
    TResult Function(Duration duration)? songProgress,
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
    TResult Function(TogglePlayPause value)? togglePlayPause,
    TResult Function(ChangeSong value)? changeSong,
    TResult Function(SetVolume value)? setVolume,
    TResult Function(ToggleMute value)? toggleMute,
    TResult Function(MoveToInSong value)? moveToInSong,
    TResult Function(SongProgress value)? songProgress,
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
  const factory SetVolume(double value) = _$SetVolume;

  double get value;
  @JsonKey(ignore: true)
  $SetVolumeCopyWith<SetVolume> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ToggleMuteCopyWith<$Res> {
  factory $ToggleMuteCopyWith(
          ToggleMute value, $Res Function(ToggleMute) then) =
      _$ToggleMuteCopyWithImpl<$Res>;
}

/// @nodoc
class _$ToggleMuteCopyWithImpl<$Res> extends _$PlaybackEventCopyWithImpl<$Res>
    implements $ToggleMuteCopyWith<$Res> {
  _$ToggleMuteCopyWithImpl(ToggleMute _value, $Res Function(ToggleMute) _then)
      : super(_value, (v) => _then(v as ToggleMute));

  @override
  ToggleMute get _value => super._value as ToggleMute;
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
        (other.runtimeType == runtimeType && other is ToggleMute);
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
    TResult Function()? togglePlayPause,
    TResult Function(Song song)? changeSong,
    TResult Function(double value)? setVolume,
    TResult Function()? toggleMute,
    TResult Function(double percent)? moveToInSong,
    TResult Function(Duration duration)? songProgress,
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
    TResult Function(TogglePlayPause value)? togglePlayPause,
    TResult Function(ChangeSong value)? changeSong,
    TResult Function(SetVolume value)? setVolume,
    TResult Function(ToggleMute value)? toggleMute,
    TResult Function(MoveToInSong value)? moveToInSong,
    TResult Function(SongProgress value)? songProgress,
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
abstract class $MoveToInSongCopyWith<$Res> {
  factory $MoveToInSongCopyWith(
          MoveToInSong value, $Res Function(MoveToInSong) then) =
      _$MoveToInSongCopyWithImpl<$Res>;
  $Res call({double percent});
}

/// @nodoc
class _$MoveToInSongCopyWithImpl<$Res> extends _$PlaybackEventCopyWithImpl<$Res>
    implements $MoveToInSongCopyWith<$Res> {
  _$MoveToInSongCopyWithImpl(
      MoveToInSong _value, $Res Function(MoveToInSong) _then)
      : super(_value, (v) => _then(v as MoveToInSong));

  @override
  MoveToInSong get _value => super._value as MoveToInSong;

  @override
  $Res call({
    Object? percent = freezed,
  }) {
    return _then(MoveToInSong(
      percent == freezed
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
            other is MoveToInSong &&
            const DeepCollectionEquality().equals(other.percent, percent));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(percent));

  @JsonKey(ignore: true)
  @override
  $MoveToInSongCopyWith<MoveToInSong> get copyWith =>
      _$MoveToInSongCopyWithImpl<MoveToInSong>(this, _$identity);

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
    TResult Function()? togglePlayPause,
    TResult Function(Song song)? changeSong,
    TResult Function(double value)? setVolume,
    TResult Function()? toggleMute,
    TResult Function(double percent)? moveToInSong,
    TResult Function(Duration duration)? songProgress,
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
    TResult Function(TogglePlayPause value)? togglePlayPause,
    TResult Function(ChangeSong value)? changeSong,
    TResult Function(SetVolume value)? setVolume,
    TResult Function(ToggleMute value)? toggleMute,
    TResult Function(MoveToInSong value)? moveToInSong,
    TResult Function(SongProgress value)? songProgress,
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
  const factory MoveToInSong(double percent) = _$MoveToInSong;

  double get percent;
  @JsonKey(ignore: true)
  $MoveToInSongCopyWith<MoveToInSong> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SongProgressCopyWith<$Res> {
  factory $SongProgressCopyWith(
          SongProgress value, $Res Function(SongProgress) then) =
      _$SongProgressCopyWithImpl<$Res>;
  $Res call({Duration duration});
}

/// @nodoc
class _$SongProgressCopyWithImpl<$Res> extends _$PlaybackEventCopyWithImpl<$Res>
    implements $SongProgressCopyWith<$Res> {
  _$SongProgressCopyWithImpl(
      SongProgress _value, $Res Function(SongProgress) _then)
      : super(_value, (v) => _then(v as SongProgress));

  @override
  SongProgress get _value => super._value as SongProgress;

  @override
  $Res call({
    Object? duration = freezed,
  }) {
    return _then(SongProgress(
      duration == freezed
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
            other is SongProgress &&
            const DeepCollectionEquality().equals(other.duration, duration));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(duration));

  @JsonKey(ignore: true)
  @override
  $SongProgressCopyWith<SongProgress> get copyWith =>
      _$SongProgressCopyWithImpl<SongProgress>(this, _$identity);

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
    TResult Function()? togglePlayPause,
    TResult Function(Song song)? changeSong,
    TResult Function(double value)? setVolume,
    TResult Function()? toggleMute,
    TResult Function(double percent)? moveToInSong,
    TResult Function(Duration duration)? songProgress,
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
    TResult Function(TogglePlayPause value)? togglePlayPause,
    TResult Function(ChangeSong value)? changeSong,
    TResult Function(SetVolume value)? setVolume,
    TResult Function(ToggleMute value)? toggleMute,
    TResult Function(MoveToInSong value)? moveToInSong,
    TResult Function(SongProgress value)? songProgress,
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
  const factory SongProgress(Duration duration) = _$SongProgress;

  Duration get duration;
  @JsonKey(ignore: true)
  $SongProgressCopyWith<SongProgress> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$PlaybackStateTearOff {
  const _$PlaybackStateTearOff();

  _PlaybackState call(
      {double volume = 0.5,
      double? previousVolume,
      bool isMuted = false,
      bool isPlaying = false,
      SongWithProgress? songWithProgress}) {
    return _PlaybackState(
      volume: volume,
      previousVolume: previousVolume,
      isMuted: isMuted,
      isPlaying: isPlaying,
      songWithProgress: songWithProgress,
    );
  }
}

/// @nodoc
const $PlaybackState = _$PlaybackStateTearOff();

/// @nodoc
mixin _$PlaybackState {
  /// Legla values are between 0 and 1.
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
      _$PlaybackStateCopyWithImpl<$Res>;
  $Res call(
      {double volume,
      double? previousVolume,
      bool isMuted,
      bool isPlaying,
      SongWithProgress? songWithProgress});

  $SongWithProgressCopyWith<$Res>? get songWithProgress;
}

/// @nodoc
class _$PlaybackStateCopyWithImpl<$Res>
    implements $PlaybackStateCopyWith<$Res> {
  _$PlaybackStateCopyWithImpl(this._value, this._then);

  final PlaybackState _value;
  // ignore: unused_field
  final $Res Function(PlaybackState) _then;

  @override
  $Res call({
    Object? volume = freezed,
    Object? previousVolume = freezed,
    Object? isMuted = freezed,
    Object? isPlaying = freezed,
    Object? songWithProgress = freezed,
  }) {
    return _then(_value.copyWith(
      volume: volume == freezed
          ? _value.volume
          : volume // ignore: cast_nullable_to_non_nullable
              as double,
      previousVolume: previousVolume == freezed
          ? _value.previousVolume
          : previousVolume // ignore: cast_nullable_to_non_nullable
              as double?,
      isMuted: isMuted == freezed
          ? _value.isMuted
          : isMuted // ignore: cast_nullable_to_non_nullable
              as bool,
      isPlaying: isPlaying == freezed
          ? _value.isPlaying
          : isPlaying // ignore: cast_nullable_to_non_nullable
              as bool,
      songWithProgress: songWithProgress == freezed
          ? _value.songWithProgress
          : songWithProgress // ignore: cast_nullable_to_non_nullable
              as SongWithProgress?,
    ));
  }

  @override
  $SongWithProgressCopyWith<$Res>? get songWithProgress {
    if (_value.songWithProgress == null) {
      return null;
    }

    return $SongWithProgressCopyWith<$Res>(_value.songWithProgress!, (value) {
      return _then(_value.copyWith(songWithProgress: value));
    });
  }
}

/// @nodoc
abstract class _$PlaybackStateCopyWith<$Res>
    implements $PlaybackStateCopyWith<$Res> {
  factory _$PlaybackStateCopyWith(
          _PlaybackState value, $Res Function(_PlaybackState) then) =
      __$PlaybackStateCopyWithImpl<$Res>;
  @override
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
class __$PlaybackStateCopyWithImpl<$Res>
    extends _$PlaybackStateCopyWithImpl<$Res>
    implements _$PlaybackStateCopyWith<$Res> {
  __$PlaybackStateCopyWithImpl(
      _PlaybackState _value, $Res Function(_PlaybackState) _then)
      : super(_value, (v) => _then(v as _PlaybackState));

  @override
  _PlaybackState get _value => super._value as _PlaybackState;

  @override
  $Res call({
    Object? volume = freezed,
    Object? previousVolume = freezed,
    Object? isMuted = freezed,
    Object? isPlaying = freezed,
    Object? songWithProgress = freezed,
  }) {
    return _then(_PlaybackState(
      volume: volume == freezed
          ? _value.volume
          : volume // ignore: cast_nullable_to_non_nullable
              as double,
      previousVolume: previousVolume == freezed
          ? _value.previousVolume
          : previousVolume // ignore: cast_nullable_to_non_nullable
              as double?,
      isMuted: isMuted == freezed
          ? _value.isMuted
          : isMuted // ignore: cast_nullable_to_non_nullable
              as bool,
      isPlaying: isPlaying == freezed
          ? _value.isPlaying
          : isPlaying // ignore: cast_nullable_to_non_nullable
              as bool,
      songWithProgress: songWithProgress == freezed
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

  @JsonKey()
  @override

  /// Legla values are between 0 and 1.
  final double volume;
  @override

  /// Used to restore the volume after un-muting.
  final double? previousVolume;
  @JsonKey()
  @override
  final bool isMuted;
  @JsonKey()
  @override
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
            other is _PlaybackState &&
            const DeepCollectionEquality().equals(other.volume, volume) &&
            const DeepCollectionEquality()
                .equals(other.previousVolume, previousVolume) &&
            const DeepCollectionEquality().equals(other.isMuted, isMuted) &&
            const DeepCollectionEquality().equals(other.isPlaying, isPlaying) &&
            const DeepCollectionEquality()
                .equals(other.songWithProgress, songWithProgress));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(volume),
      const DeepCollectionEquality().hash(previousVolume),
      const DeepCollectionEquality().hash(isMuted),
      const DeepCollectionEquality().hash(isPlaying),
      const DeepCollectionEquality().hash(songWithProgress));

  @JsonKey(ignore: true)
  @override
  _$PlaybackStateCopyWith<_PlaybackState> get copyWith =>
      __$PlaybackStateCopyWithImpl<_PlaybackState>(this, _$identity);
}

abstract class _PlaybackState implements PlaybackState {
  const factory _PlaybackState(
      {double volume,
      double? previousVolume,
      bool isMuted,
      bool isPlaying,
      SongWithProgress? songWithProgress}) = _$_PlaybackState;

  @override

  /// Legla values are between 0 and 1.
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
  _$PlaybackStateCopyWith<_PlaybackState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$SongWithProgressTearOff {
  const _$SongWithProgressTearOff();

  _SongWithProgress call({required Duration progress, required Song song}) {
    return _SongWithProgress(
      progress: progress,
      song: song,
    );
  }
}

/// @nodoc
const $SongWithProgress = _$SongWithProgressTearOff();

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
      _$SongWithProgressCopyWithImpl<$Res>;
  $Res call({Duration progress, Song song});
}

/// @nodoc
class _$SongWithProgressCopyWithImpl<$Res>
    implements $SongWithProgressCopyWith<$Res> {
  _$SongWithProgressCopyWithImpl(this._value, this._then);

  final SongWithProgress _value;
  // ignore: unused_field
  final $Res Function(SongWithProgress) _then;

  @override
  $Res call({
    Object? progress = freezed,
    Object? song = freezed,
  }) {
    return _then(_value.copyWith(
      progress: progress == freezed
          ? _value.progress
          : progress // ignore: cast_nullable_to_non_nullable
              as Duration,
      song: song == freezed
          ? _value.song
          : song // ignore: cast_nullable_to_non_nullable
              as Song,
    ));
  }
}

/// @nodoc
abstract class _$SongWithProgressCopyWith<$Res>
    implements $SongWithProgressCopyWith<$Res> {
  factory _$SongWithProgressCopyWith(
          _SongWithProgress value, $Res Function(_SongWithProgress) then) =
      __$SongWithProgressCopyWithImpl<$Res>;
  @override
  $Res call({Duration progress, Song song});
}

/// @nodoc
class __$SongWithProgressCopyWithImpl<$Res>
    extends _$SongWithProgressCopyWithImpl<$Res>
    implements _$SongWithProgressCopyWith<$Res> {
  __$SongWithProgressCopyWithImpl(
      _SongWithProgress _value, $Res Function(_SongWithProgress) _then)
      : super(_value, (v) => _then(v as _SongWithProgress));

  @override
  _SongWithProgress get _value => super._value as _SongWithProgress;

  @override
  $Res call({
    Object? progress = freezed,
    Object? song = freezed,
  }) {
    return _then(_SongWithProgress(
      progress: progress == freezed
          ? _value.progress
          : progress // ignore: cast_nullable_to_non_nullable
              as Duration,
      song: song == freezed
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
            other is _SongWithProgress &&
            const DeepCollectionEquality().equals(other.progress, progress) &&
            const DeepCollectionEquality().equals(other.song, song));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(progress),
      const DeepCollectionEquality().hash(song));

  @JsonKey(ignore: true)
  @override
  _$SongWithProgressCopyWith<_SongWithProgress> get copyWith =>
      __$SongWithProgressCopyWithImpl<_SongWithProgress>(this, _$identity);
}

abstract class _SongWithProgress implements SongWithProgress {
  const factory _SongWithProgress(
      {required Duration progress, required Song song}) = _$_SongWithProgress;

  @override
  Duration get progress;
  @override
  Song get song;
  @override
  @JsonKey(ignore: true)
  _$SongWithProgressCopyWith<_SongWithProgress> get copyWith =>
      throw _privateConstructorUsedError;
}
