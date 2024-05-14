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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

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
abstract class _$$TogglePlayPauseImplCopyWith<$Res> {
  factory _$$TogglePlayPauseImplCopyWith(_$TogglePlayPauseImpl value,
          $Res Function(_$TogglePlayPauseImpl) then) =
      __$$TogglePlayPauseImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$TogglePlayPauseImplCopyWithImpl<$Res>
    extends _$PlaybackEventCopyWithImpl<$Res, _$TogglePlayPauseImpl>
    implements _$$TogglePlayPauseImplCopyWith<$Res> {
  __$$TogglePlayPauseImplCopyWithImpl(
      _$TogglePlayPauseImpl _value, $Res Function(_$TogglePlayPauseImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$TogglePlayPauseImpl implements TogglePlayPause {
  const _$TogglePlayPauseImpl();

  @override
  String toString() {
    return 'PlaybackEvent.togglePlayPause()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$TogglePlayPauseImpl);
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
  const factory TogglePlayPause() = _$TogglePlayPauseImpl;
}

/// @nodoc
abstract class _$$ChangeSongImplCopyWith<$Res> {
  factory _$$ChangeSongImplCopyWith(
          _$ChangeSongImpl value, $Res Function(_$ChangeSongImpl) then) =
      __$$ChangeSongImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Song song});
}

/// @nodoc
class __$$ChangeSongImplCopyWithImpl<$Res>
    extends _$PlaybackEventCopyWithImpl<$Res, _$ChangeSongImpl>
    implements _$$ChangeSongImplCopyWith<$Res> {
  __$$ChangeSongImplCopyWithImpl(
      _$ChangeSongImpl _value, $Res Function(_$ChangeSongImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? song = null,
  }) {
    return _then(_$ChangeSongImpl(
      null == song
          ? _value.song
          : song // ignore: cast_nullable_to_non_nullable
              as Song,
    ));
  }
}

/// @nodoc

class _$ChangeSongImpl implements ChangeSong {
  const _$ChangeSongImpl(this.song);

  @override
  final Song song;

  @override
  String toString() {
    return 'PlaybackEvent.changeSong(song: $song)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangeSongImpl &&
            (identical(other.song, song) || other.song == song));
  }

  @override
  int get hashCode => Object.hash(runtimeType, song);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangeSongImplCopyWith<_$ChangeSongImpl> get copyWith =>
      __$$ChangeSongImplCopyWithImpl<_$ChangeSongImpl>(this, _$identity);

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
  const factory ChangeSong(final Song song) = _$ChangeSongImpl;

  Song get song;
  @JsonKey(ignore: true)
  _$$ChangeSongImplCopyWith<_$ChangeSongImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SetVolumeImplCopyWith<$Res> {
  factory _$$SetVolumeImplCopyWith(
          _$SetVolumeImpl value, $Res Function(_$SetVolumeImpl) then) =
      __$$SetVolumeImplCopyWithImpl<$Res>;
  @useResult
  $Res call({double value});
}

/// @nodoc
class __$$SetVolumeImplCopyWithImpl<$Res>
    extends _$PlaybackEventCopyWithImpl<$Res, _$SetVolumeImpl>
    implements _$$SetVolumeImplCopyWith<$Res> {
  __$$SetVolumeImplCopyWithImpl(
      _$SetVolumeImpl _value, $Res Function(_$SetVolumeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_$SetVolumeImpl(
      null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$SetVolumeImpl implements SetVolume {
  const _$SetVolumeImpl(this.value);

  @override
  final double value;

  @override
  String toString() {
    return 'PlaybackEvent.setVolume(value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SetVolumeImpl &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SetVolumeImplCopyWith<_$SetVolumeImpl> get copyWith =>
      __$$SetVolumeImplCopyWithImpl<_$SetVolumeImpl>(this, _$identity);

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
  const factory SetVolume(final double value) = _$SetVolumeImpl;

  double get value;
  @JsonKey(ignore: true)
  _$$SetVolumeImplCopyWith<_$SetVolumeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ToggleMuteImplCopyWith<$Res> {
  factory _$$ToggleMuteImplCopyWith(
          _$ToggleMuteImpl value, $Res Function(_$ToggleMuteImpl) then) =
      __$$ToggleMuteImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ToggleMuteImplCopyWithImpl<$Res>
    extends _$PlaybackEventCopyWithImpl<$Res, _$ToggleMuteImpl>
    implements _$$ToggleMuteImplCopyWith<$Res> {
  __$$ToggleMuteImplCopyWithImpl(
      _$ToggleMuteImpl _value, $Res Function(_$ToggleMuteImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ToggleMuteImpl implements ToggleMute {
  const _$ToggleMuteImpl();

  @override
  String toString() {
    return 'PlaybackEvent.toggleMute()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ToggleMuteImpl);
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
  const factory ToggleMute() = _$ToggleMuteImpl;
}

/// @nodoc
abstract class _$$MoveToInSongImplCopyWith<$Res> {
  factory _$$MoveToInSongImplCopyWith(
          _$MoveToInSongImpl value, $Res Function(_$MoveToInSongImpl) then) =
      __$$MoveToInSongImplCopyWithImpl<$Res>;
  @useResult
  $Res call({double percent});
}

/// @nodoc
class __$$MoveToInSongImplCopyWithImpl<$Res>
    extends _$PlaybackEventCopyWithImpl<$Res, _$MoveToInSongImpl>
    implements _$$MoveToInSongImplCopyWith<$Res> {
  __$$MoveToInSongImplCopyWithImpl(
      _$MoveToInSongImpl _value, $Res Function(_$MoveToInSongImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? percent = null,
  }) {
    return _then(_$MoveToInSongImpl(
      null == percent
          ? _value.percent
          : percent // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$MoveToInSongImpl implements MoveToInSong {
  const _$MoveToInSongImpl(this.percent);

  @override
  final double percent;

  @override
  String toString() {
    return 'PlaybackEvent.moveToInSong(percent: $percent)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MoveToInSongImpl &&
            (identical(other.percent, percent) || other.percent == percent));
  }

  @override
  int get hashCode => Object.hash(runtimeType, percent);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MoveToInSongImplCopyWith<_$MoveToInSongImpl> get copyWith =>
      __$$MoveToInSongImplCopyWithImpl<_$MoveToInSongImpl>(this, _$identity);

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
  const factory MoveToInSong(final double percent) = _$MoveToInSongImpl;

  double get percent;
  @JsonKey(ignore: true)
  _$$MoveToInSongImplCopyWith<_$MoveToInSongImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SongProgressImplCopyWith<$Res> {
  factory _$$SongProgressImplCopyWith(
          _$SongProgressImpl value, $Res Function(_$SongProgressImpl) then) =
      __$$SongProgressImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Duration duration});
}

/// @nodoc
class __$$SongProgressImplCopyWithImpl<$Res>
    extends _$PlaybackEventCopyWithImpl<$Res, _$SongProgressImpl>
    implements _$$SongProgressImplCopyWith<$Res> {
  __$$SongProgressImplCopyWithImpl(
      _$SongProgressImpl _value, $Res Function(_$SongProgressImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? duration = null,
  }) {
    return _then(_$SongProgressImpl(
      null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as Duration,
    ));
  }
}

/// @nodoc

class _$SongProgressImpl implements SongProgress {
  const _$SongProgressImpl(this.duration);

  @override
  final Duration duration;

  @override
  String toString() {
    return 'PlaybackEvent.songProgress(duration: $duration)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SongProgressImpl &&
            (identical(other.duration, duration) ||
                other.duration == duration));
  }

  @override
  int get hashCode => Object.hash(runtimeType, duration);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SongProgressImplCopyWith<_$SongProgressImpl> get copyWith =>
      __$$SongProgressImplCopyWithImpl<_$SongProgressImpl>(this, _$identity);

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
  const factory SongProgress(final Duration duration) = _$SongProgressImpl;

  Duration get duration;
  @JsonKey(ignore: true)
  _$$SongProgressImplCopyWith<_$SongProgressImpl> get copyWith =>
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
abstract class _$$PlaybackStateImplCopyWith<$Res>
    implements $PlaybackStateCopyWith<$Res> {
  factory _$$PlaybackStateImplCopyWith(
          _$PlaybackStateImpl value, $Res Function(_$PlaybackStateImpl) then) =
      __$$PlaybackStateImplCopyWithImpl<$Res>;
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
class __$$PlaybackStateImplCopyWithImpl<$Res>
    extends _$PlaybackStateCopyWithImpl<$Res, _$PlaybackStateImpl>
    implements _$$PlaybackStateImplCopyWith<$Res> {
  __$$PlaybackStateImplCopyWithImpl(
      _$PlaybackStateImpl _value, $Res Function(_$PlaybackStateImpl) _then)
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
    return _then(_$PlaybackStateImpl(
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

class _$PlaybackStateImpl implements _PlaybackState {
  const _$PlaybackStateImpl(
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
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlaybackStateImpl &&
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
  _$$PlaybackStateImplCopyWith<_$PlaybackStateImpl> get copyWith =>
      __$$PlaybackStateImplCopyWithImpl<_$PlaybackStateImpl>(this, _$identity);
}

abstract class _PlaybackState implements PlaybackState {
  const factory _PlaybackState(
      {final double volume,
      final double? previousVolume,
      final bool isMuted,
      final bool isPlaying,
      final SongWithProgress? songWithProgress}) = _$PlaybackStateImpl;

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
  _$$PlaybackStateImplCopyWith<_$PlaybackStateImpl> get copyWith =>
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
abstract class _$$SongWithProgressImplCopyWith<$Res>
    implements $SongWithProgressCopyWith<$Res> {
  factory _$$SongWithProgressImplCopyWith(_$SongWithProgressImpl value,
          $Res Function(_$SongWithProgressImpl) then) =
      __$$SongWithProgressImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Duration progress, Song song});
}

/// @nodoc
class __$$SongWithProgressImplCopyWithImpl<$Res>
    extends _$SongWithProgressCopyWithImpl<$Res, _$SongWithProgressImpl>
    implements _$$SongWithProgressImplCopyWith<$Res> {
  __$$SongWithProgressImplCopyWithImpl(_$SongWithProgressImpl _value,
      $Res Function(_$SongWithProgressImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? progress = null,
    Object? song = null,
  }) {
    return _then(_$SongWithProgressImpl(
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

class _$SongWithProgressImpl implements _SongWithProgress {
  const _$SongWithProgressImpl({required this.progress, required this.song});

  @override
  final Duration progress;
  @override
  final Song song;

  @override
  String toString() {
    return 'SongWithProgress(progress: $progress, song: $song)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SongWithProgressImpl &&
            (identical(other.progress, progress) ||
                other.progress == progress) &&
            (identical(other.song, song) || other.song == song));
  }

  @override
  int get hashCode => Object.hash(runtimeType, progress, song);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SongWithProgressImplCopyWith<_$SongWithProgressImpl> get copyWith =>
      __$$SongWithProgressImplCopyWithImpl<_$SongWithProgressImpl>(
          this, _$identity);
}

abstract class _SongWithProgress implements SongWithProgress {
  const factory _SongWithProgress(
      {required final Duration progress,
      required final Song song}) = _$SongWithProgressImpl;

  @override
  Duration get progress;
  @override
  Song get song;
  @override
  @JsonKey(ignore: true)
  _$$SongWithProgressImplCopyWith<_$SongWithProgressImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
