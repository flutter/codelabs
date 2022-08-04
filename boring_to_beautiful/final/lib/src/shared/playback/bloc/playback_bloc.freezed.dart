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
abstract class _$$TogglePlayPauseCopyWith<$Res> {
  factory _$$TogglePlayPauseCopyWith(
          _$TogglePlayPause value, $Res Function(_$TogglePlayPause) then) =
      __$$TogglePlayPauseCopyWithImpl<$Res>;
}

/// @nodoc
class __$$TogglePlayPauseCopyWithImpl<$Res>
    extends _$PlaybackEventCopyWithImpl<$Res>
    implements _$$TogglePlayPauseCopyWith<$Res> {
  __$$TogglePlayPauseCopyWithImpl(
      _$TogglePlayPause _value, $Res Function(_$TogglePlayPause) _then)
      : super(_value, (v) => _then(v as _$TogglePlayPause));

  @override
  _$TogglePlayPause get _value => super._value as _$TogglePlayPause;
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
abstract class _$$ChangeSongCopyWith<$Res> {
  factory _$$ChangeSongCopyWith(
          _$ChangeSong value, $Res Function(_$ChangeSong) then) =
      __$$ChangeSongCopyWithImpl<$Res>;
  $Res call({Song song});
}

/// @nodoc
class __$$ChangeSongCopyWithImpl<$Res> extends _$PlaybackEventCopyWithImpl<$Res>
    implements _$$ChangeSongCopyWith<$Res> {
  __$$ChangeSongCopyWithImpl(
      _$ChangeSong _value, $Res Function(_$ChangeSong) _then)
      : super(_value, (v) => _then(v as _$ChangeSong));

  @override
  _$ChangeSong get _value => super._value as _$ChangeSong;

  @override
  $Res call({
    Object? song = freezed,
  }) {
    return _then(_$ChangeSong(
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
            other is _$ChangeSong &&
            const DeepCollectionEquality().equals(other.song, song));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(song));

  @JsonKey(ignore: true)
  @override
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
  $Res call({double value});
}

/// @nodoc
class __$$SetVolumeCopyWithImpl<$Res> extends _$PlaybackEventCopyWithImpl<$Res>
    implements _$$SetVolumeCopyWith<$Res> {
  __$$SetVolumeCopyWithImpl(
      _$SetVolume _value, $Res Function(_$SetVolume) _then)
      : super(_value, (v) => _then(v as _$SetVolume));

  @override
  _$SetVolume get _value => super._value as _$SetVolume;

  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_$SetVolume(
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
            other is _$SetVolume &&
            const DeepCollectionEquality().equals(other.value, value));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(value));

  @JsonKey(ignore: true)
  @override
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
class __$$ToggleMuteCopyWithImpl<$Res> extends _$PlaybackEventCopyWithImpl<$Res>
    implements _$$ToggleMuteCopyWith<$Res> {
  __$$ToggleMuteCopyWithImpl(
      _$ToggleMute _value, $Res Function(_$ToggleMute) _then)
      : super(_value, (v) => _then(v as _$ToggleMute));

  @override
  _$ToggleMute get _value => super._value as _$ToggleMute;
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
abstract class _$$MoveToInSongCopyWith<$Res> {
  factory _$$MoveToInSongCopyWith(
          _$MoveToInSong value, $Res Function(_$MoveToInSong) then) =
      __$$MoveToInSongCopyWithImpl<$Res>;
  $Res call({double percent});
}

/// @nodoc
class __$$MoveToInSongCopyWithImpl<$Res>
    extends _$PlaybackEventCopyWithImpl<$Res>
    implements _$$MoveToInSongCopyWith<$Res> {
  __$$MoveToInSongCopyWithImpl(
      _$MoveToInSong _value, $Res Function(_$MoveToInSong) _then)
      : super(_value, (v) => _then(v as _$MoveToInSong));

  @override
  _$MoveToInSong get _value => super._value as _$MoveToInSong;

  @override
  $Res call({
    Object? percent = freezed,
  }) {
    return _then(_$MoveToInSong(
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
            other is _$MoveToInSong &&
            const DeepCollectionEquality().equals(other.percent, percent));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(percent));

  @JsonKey(ignore: true)
  @override
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
  $Res call({Duration duration});
}

/// @nodoc
class __$$SongProgressCopyWithImpl<$Res>
    extends _$PlaybackEventCopyWithImpl<$Res>
    implements _$$SongProgressCopyWith<$Res> {
  __$$SongProgressCopyWithImpl(
      _$SongProgress _value, $Res Function(_$SongProgress) _then)
      : super(_value, (v) => _then(v as _$SongProgress));

  @override
  _$SongProgress get _value => super._value as _$SongProgress;

  @override
  $Res call({
    Object? duration = freezed,
  }) {
    return _then(_$SongProgress(
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
            other is _$SongProgress &&
            const DeepCollectionEquality().equals(other.duration, duration));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(duration));

  @JsonKey(ignore: true)
  @override
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
abstract class _$$_PlaybackStateCopyWith<$Res>
    implements $PlaybackStateCopyWith<$Res> {
  factory _$$_PlaybackStateCopyWith(
          _$_PlaybackState value, $Res Function(_$_PlaybackState) then) =
      __$$_PlaybackStateCopyWithImpl<$Res>;
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
class __$$_PlaybackStateCopyWithImpl<$Res>
    extends _$PlaybackStateCopyWithImpl<$Res>
    implements _$$_PlaybackStateCopyWith<$Res> {
  __$$_PlaybackStateCopyWithImpl(
      _$_PlaybackState _value, $Res Function(_$_PlaybackState) _then)
      : super(_value, (v) => _then(v as _$_PlaybackState));

  @override
  _$_PlaybackState get _value => super._value as _$_PlaybackState;

  @override
  $Res call({
    Object? volume = freezed,
    Object? previousVolume = freezed,
    Object? isMuted = freezed,
    Object? isPlaying = freezed,
    Object? songWithProgress = freezed,
  }) {
    return _then(_$_PlaybackState(
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
abstract class _$$_SongWithProgressCopyWith<$Res>
    implements $SongWithProgressCopyWith<$Res> {
  factory _$$_SongWithProgressCopyWith(
          _$_SongWithProgress value, $Res Function(_$_SongWithProgress) then) =
      __$$_SongWithProgressCopyWithImpl<$Res>;
  @override
  $Res call({Duration progress, Song song});
}

/// @nodoc
class __$$_SongWithProgressCopyWithImpl<$Res>
    extends _$SongWithProgressCopyWithImpl<$Res>
    implements _$$_SongWithProgressCopyWith<$Res> {
  __$$_SongWithProgressCopyWithImpl(
      _$_SongWithProgress _value, $Res Function(_$_SongWithProgress) _then)
      : super(_value, (v) => _then(v as _$_SongWithProgress));

  @override
  _$_SongWithProgress get _value => super._value as _$_SongWithProgress;

  @override
  $Res call({
    Object? progress = freezed,
    Object? song = freezed,
  }) {
    return _then(_$_SongWithProgress(
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
            other is _$_SongWithProgress &&
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
