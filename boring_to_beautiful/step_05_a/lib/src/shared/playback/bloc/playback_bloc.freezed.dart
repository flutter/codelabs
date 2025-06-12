// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'playback_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$PlaybackEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PlaybackEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'PlaybackEvent()';
}


}

/// @nodoc
class $PlaybackEventCopyWith<$Res>  {
$PlaybackEventCopyWith(PlaybackEvent _, $Res Function(PlaybackEvent) __);
}


/// @nodoc


class TogglePlayPause implements PlaybackEvent {
  const TogglePlayPause();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TogglePlayPause);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'PlaybackEvent.togglePlayPause()';
}


}




/// @nodoc


class ChangeSong implements PlaybackEvent {
  const ChangeSong(this.song);
  

 final  Song song;

/// Create a copy of PlaybackEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ChangeSongCopyWith<ChangeSong> get copyWith => _$ChangeSongCopyWithImpl<ChangeSong>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChangeSong&&(identical(other.song, song) || other.song == song));
}


@override
int get hashCode => Object.hash(runtimeType,song);

@override
String toString() {
  return 'PlaybackEvent.changeSong(song: $song)';
}


}

/// @nodoc
abstract mixin class $ChangeSongCopyWith<$Res> implements $PlaybackEventCopyWith<$Res> {
  factory $ChangeSongCopyWith(ChangeSong value, $Res Function(ChangeSong) _then) = _$ChangeSongCopyWithImpl;
@useResult
$Res call({
 Song song
});




}
/// @nodoc
class _$ChangeSongCopyWithImpl<$Res>
    implements $ChangeSongCopyWith<$Res> {
  _$ChangeSongCopyWithImpl(this._self, this._then);

  final ChangeSong _self;
  final $Res Function(ChangeSong) _then;

/// Create a copy of PlaybackEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? song = null,}) {
  return _then(ChangeSong(
null == song ? _self.song : song // ignore: cast_nullable_to_non_nullable
as Song,
  ));
}


}

/// @nodoc


class SetVolume implements PlaybackEvent {
  const SetVolume(this.value);
  

 final  double value;

/// Create a copy of PlaybackEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SetVolumeCopyWith<SetVolume> get copyWith => _$SetVolumeCopyWithImpl<SetVolume>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SetVolume&&(identical(other.value, value) || other.value == value));
}


@override
int get hashCode => Object.hash(runtimeType,value);

@override
String toString() {
  return 'PlaybackEvent.setVolume(value: $value)';
}


}

/// @nodoc
abstract mixin class $SetVolumeCopyWith<$Res> implements $PlaybackEventCopyWith<$Res> {
  factory $SetVolumeCopyWith(SetVolume value, $Res Function(SetVolume) _then) = _$SetVolumeCopyWithImpl;
@useResult
$Res call({
 double value
});




}
/// @nodoc
class _$SetVolumeCopyWithImpl<$Res>
    implements $SetVolumeCopyWith<$Res> {
  _$SetVolumeCopyWithImpl(this._self, this._then);

  final SetVolume _self;
  final $Res Function(SetVolume) _then;

/// Create a copy of PlaybackEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? value = null,}) {
  return _then(SetVolume(
null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}

/// @nodoc


class ToggleMute implements PlaybackEvent {
  const ToggleMute();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ToggleMute);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'PlaybackEvent.toggleMute()';
}


}




/// @nodoc


class MoveToInSong implements PlaybackEvent {
  const MoveToInSong(this.percent);
  

 final  double percent;

/// Create a copy of PlaybackEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MoveToInSongCopyWith<MoveToInSong> get copyWith => _$MoveToInSongCopyWithImpl<MoveToInSong>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MoveToInSong&&(identical(other.percent, percent) || other.percent == percent));
}


@override
int get hashCode => Object.hash(runtimeType,percent);

@override
String toString() {
  return 'PlaybackEvent.moveToInSong(percent: $percent)';
}


}

/// @nodoc
abstract mixin class $MoveToInSongCopyWith<$Res> implements $PlaybackEventCopyWith<$Res> {
  factory $MoveToInSongCopyWith(MoveToInSong value, $Res Function(MoveToInSong) _then) = _$MoveToInSongCopyWithImpl;
@useResult
$Res call({
 double percent
});




}
/// @nodoc
class _$MoveToInSongCopyWithImpl<$Res>
    implements $MoveToInSongCopyWith<$Res> {
  _$MoveToInSongCopyWithImpl(this._self, this._then);

  final MoveToInSong _self;
  final $Res Function(MoveToInSong) _then;

/// Create a copy of PlaybackEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? percent = null,}) {
  return _then(MoveToInSong(
null == percent ? _self.percent : percent // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}

/// @nodoc


class SongProgress implements PlaybackEvent {
  const SongProgress(this.duration);
  

 final  Duration duration;

/// Create a copy of PlaybackEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SongProgressCopyWith<SongProgress> get copyWith => _$SongProgressCopyWithImpl<SongProgress>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SongProgress&&(identical(other.duration, duration) || other.duration == duration));
}


@override
int get hashCode => Object.hash(runtimeType,duration);

@override
String toString() {
  return 'PlaybackEvent.songProgress(duration: $duration)';
}


}

/// @nodoc
abstract mixin class $SongProgressCopyWith<$Res> implements $PlaybackEventCopyWith<$Res> {
  factory $SongProgressCopyWith(SongProgress value, $Res Function(SongProgress) _then) = _$SongProgressCopyWithImpl;
@useResult
$Res call({
 Duration duration
});




}
/// @nodoc
class _$SongProgressCopyWithImpl<$Res>
    implements $SongProgressCopyWith<$Res> {
  _$SongProgressCopyWithImpl(this._self, this._then);

  final SongProgress _self;
  final $Res Function(SongProgress) _then;

/// Create a copy of PlaybackEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? duration = null,}) {
  return _then(SongProgress(
null == duration ? _self.duration : duration // ignore: cast_nullable_to_non_nullable
as Duration,
  ));
}


}

/// @nodoc
mixin _$PlaybackState {

/// Legal values are between 0 and 1.
 double get volume;/// Used to restore the volume after un-muting.
 double? get previousVolume; bool get isMuted; bool get isPlaying; SongWithProgress? get songWithProgress;
/// Create a copy of PlaybackState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PlaybackStateCopyWith<PlaybackState> get copyWith => _$PlaybackStateCopyWithImpl<PlaybackState>(this as PlaybackState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PlaybackState&&(identical(other.volume, volume) || other.volume == volume)&&(identical(other.previousVolume, previousVolume) || other.previousVolume == previousVolume)&&(identical(other.isMuted, isMuted) || other.isMuted == isMuted)&&(identical(other.isPlaying, isPlaying) || other.isPlaying == isPlaying)&&(identical(other.songWithProgress, songWithProgress) || other.songWithProgress == songWithProgress));
}


@override
int get hashCode => Object.hash(runtimeType,volume,previousVolume,isMuted,isPlaying,songWithProgress);

@override
String toString() {
  return 'PlaybackState(volume: $volume, previousVolume: $previousVolume, isMuted: $isMuted, isPlaying: $isPlaying, songWithProgress: $songWithProgress)';
}


}

/// @nodoc
abstract mixin class $PlaybackStateCopyWith<$Res>  {
  factory $PlaybackStateCopyWith(PlaybackState value, $Res Function(PlaybackState) _then) = _$PlaybackStateCopyWithImpl;
@useResult
$Res call({
 double volume, double? previousVolume, bool isMuted, bool isPlaying, SongWithProgress? songWithProgress
});


$SongWithProgressCopyWith<$Res>? get songWithProgress;

}
/// @nodoc
class _$PlaybackStateCopyWithImpl<$Res>
    implements $PlaybackStateCopyWith<$Res> {
  _$PlaybackStateCopyWithImpl(this._self, this._then);

  final PlaybackState _self;
  final $Res Function(PlaybackState) _then;

/// Create a copy of PlaybackState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? volume = null,Object? previousVolume = freezed,Object? isMuted = null,Object? isPlaying = null,Object? songWithProgress = freezed,}) {
  return _then(_self.copyWith(
volume: null == volume ? _self.volume : volume // ignore: cast_nullable_to_non_nullable
as double,previousVolume: freezed == previousVolume ? _self.previousVolume : previousVolume // ignore: cast_nullable_to_non_nullable
as double?,isMuted: null == isMuted ? _self.isMuted : isMuted // ignore: cast_nullable_to_non_nullable
as bool,isPlaying: null == isPlaying ? _self.isPlaying : isPlaying // ignore: cast_nullable_to_non_nullable
as bool,songWithProgress: freezed == songWithProgress ? _self.songWithProgress : songWithProgress // ignore: cast_nullable_to_non_nullable
as SongWithProgress?,
  ));
}
/// Create a copy of PlaybackState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SongWithProgressCopyWith<$Res>? get songWithProgress {
    if (_self.songWithProgress == null) {
    return null;
  }

  return $SongWithProgressCopyWith<$Res>(_self.songWithProgress!, (value) {
    return _then(_self.copyWith(songWithProgress: value));
  });
}
}


/// @nodoc


class _PlaybackState implements PlaybackState {
  const _PlaybackState({this.volume = 0.5, this.previousVolume, this.isMuted = false, this.isPlaying = false, this.songWithProgress});
  

/// Legal values are between 0 and 1.
@override@JsonKey() final  double volume;
/// Used to restore the volume after un-muting.
@override final  double? previousVolume;
@override@JsonKey() final  bool isMuted;
@override@JsonKey() final  bool isPlaying;
@override final  SongWithProgress? songWithProgress;

/// Create a copy of PlaybackState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PlaybackStateCopyWith<_PlaybackState> get copyWith => __$PlaybackStateCopyWithImpl<_PlaybackState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PlaybackState&&(identical(other.volume, volume) || other.volume == volume)&&(identical(other.previousVolume, previousVolume) || other.previousVolume == previousVolume)&&(identical(other.isMuted, isMuted) || other.isMuted == isMuted)&&(identical(other.isPlaying, isPlaying) || other.isPlaying == isPlaying)&&(identical(other.songWithProgress, songWithProgress) || other.songWithProgress == songWithProgress));
}


@override
int get hashCode => Object.hash(runtimeType,volume,previousVolume,isMuted,isPlaying,songWithProgress);

@override
String toString() {
  return 'PlaybackState(volume: $volume, previousVolume: $previousVolume, isMuted: $isMuted, isPlaying: $isPlaying, songWithProgress: $songWithProgress)';
}


}

/// @nodoc
abstract mixin class _$PlaybackStateCopyWith<$Res> implements $PlaybackStateCopyWith<$Res> {
  factory _$PlaybackStateCopyWith(_PlaybackState value, $Res Function(_PlaybackState) _then) = __$PlaybackStateCopyWithImpl;
@override @useResult
$Res call({
 double volume, double? previousVolume, bool isMuted, bool isPlaying, SongWithProgress? songWithProgress
});


@override $SongWithProgressCopyWith<$Res>? get songWithProgress;

}
/// @nodoc
class __$PlaybackStateCopyWithImpl<$Res>
    implements _$PlaybackStateCopyWith<$Res> {
  __$PlaybackStateCopyWithImpl(this._self, this._then);

  final _PlaybackState _self;
  final $Res Function(_PlaybackState) _then;

/// Create a copy of PlaybackState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? volume = null,Object? previousVolume = freezed,Object? isMuted = null,Object? isPlaying = null,Object? songWithProgress = freezed,}) {
  return _then(_PlaybackState(
volume: null == volume ? _self.volume : volume // ignore: cast_nullable_to_non_nullable
as double,previousVolume: freezed == previousVolume ? _self.previousVolume : previousVolume // ignore: cast_nullable_to_non_nullable
as double?,isMuted: null == isMuted ? _self.isMuted : isMuted // ignore: cast_nullable_to_non_nullable
as bool,isPlaying: null == isPlaying ? _self.isPlaying : isPlaying // ignore: cast_nullable_to_non_nullable
as bool,songWithProgress: freezed == songWithProgress ? _self.songWithProgress : songWithProgress // ignore: cast_nullable_to_non_nullable
as SongWithProgress?,
  ));
}

/// Create a copy of PlaybackState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SongWithProgressCopyWith<$Res>? get songWithProgress {
    if (_self.songWithProgress == null) {
    return null;
  }

  return $SongWithProgressCopyWith<$Res>(_self.songWithProgress!, (value) {
    return _then(_self.copyWith(songWithProgress: value));
  });
}
}

/// @nodoc
mixin _$SongWithProgress {

 Duration get progress; Song get song;
/// Create a copy of SongWithProgress
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SongWithProgressCopyWith<SongWithProgress> get copyWith => _$SongWithProgressCopyWithImpl<SongWithProgress>(this as SongWithProgress, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SongWithProgress&&(identical(other.progress, progress) || other.progress == progress)&&(identical(other.song, song) || other.song == song));
}


@override
int get hashCode => Object.hash(runtimeType,progress,song);

@override
String toString() {
  return 'SongWithProgress(progress: $progress, song: $song)';
}


}

/// @nodoc
abstract mixin class $SongWithProgressCopyWith<$Res>  {
  factory $SongWithProgressCopyWith(SongWithProgress value, $Res Function(SongWithProgress) _then) = _$SongWithProgressCopyWithImpl;
@useResult
$Res call({
 Duration progress, Song song
});




}
/// @nodoc
class _$SongWithProgressCopyWithImpl<$Res>
    implements $SongWithProgressCopyWith<$Res> {
  _$SongWithProgressCopyWithImpl(this._self, this._then);

  final SongWithProgress _self;
  final $Res Function(SongWithProgress) _then;

/// Create a copy of SongWithProgress
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? progress = null,Object? song = null,}) {
  return _then(_self.copyWith(
progress: null == progress ? _self.progress : progress // ignore: cast_nullable_to_non_nullable
as Duration,song: null == song ? _self.song : song // ignore: cast_nullable_to_non_nullable
as Song,
  ));
}

}


/// @nodoc


class _SongWithProgress implements SongWithProgress {
  const _SongWithProgress({required this.progress, required this.song});
  

@override final  Duration progress;
@override final  Song song;

/// Create a copy of SongWithProgress
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SongWithProgressCopyWith<_SongWithProgress> get copyWith => __$SongWithProgressCopyWithImpl<_SongWithProgress>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SongWithProgress&&(identical(other.progress, progress) || other.progress == progress)&&(identical(other.song, song) || other.song == song));
}


@override
int get hashCode => Object.hash(runtimeType,progress,song);

@override
String toString() {
  return 'SongWithProgress(progress: $progress, song: $song)';
}


}

/// @nodoc
abstract mixin class _$SongWithProgressCopyWith<$Res> implements $SongWithProgressCopyWith<$Res> {
  factory _$SongWithProgressCopyWith(_SongWithProgress value, $Res Function(_SongWithProgress) _then) = __$SongWithProgressCopyWithImpl;
@override @useResult
$Res call({
 Duration progress, Song song
});




}
/// @nodoc
class __$SongWithProgressCopyWithImpl<$Res>
    implements _$SongWithProgressCopyWith<$Res> {
  __$SongWithProgressCopyWithImpl(this._self, this._then);

  final _SongWithProgress _self;
  final $Res Function(_SongWithProgress) _then;

/// Create a copy of SongWithProgress
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? progress = null,Object? song = null,}) {
  return _then(_SongWithProgress(
progress: null == progress ? _self.progress : progress // ignore: cast_nullable_to_non_nullable
as Duration,song: null == song ? _self.song : song // ignore: cast_nullable_to_non_nullable
as Song,
  ));
}


}

// dart format on
