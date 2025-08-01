// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
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


/// Adds pattern-matching-related methods to [PlaybackEvent].
extension PlaybackEventPatterns on PlaybackEvent {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( TogglePlayPause value)?  togglePlayPause,TResult Function( ChangeSong value)?  changeSong,TResult Function( SetVolume value)?  setVolume,TResult Function( ToggleMute value)?  toggleMute,TResult Function( MoveToInSong value)?  moveToInSong,TResult Function( SongProgress value)?  songProgress,required TResult orElse(),}){
final _that = this;
switch (_that) {
case TogglePlayPause() when togglePlayPause != null:
return togglePlayPause(_that);case ChangeSong() when changeSong != null:
return changeSong(_that);case SetVolume() when setVolume != null:
return setVolume(_that);case ToggleMute() when toggleMute != null:
return toggleMute(_that);case MoveToInSong() when moveToInSong != null:
return moveToInSong(_that);case SongProgress() when songProgress != null:
return songProgress(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( TogglePlayPause value)  togglePlayPause,required TResult Function( ChangeSong value)  changeSong,required TResult Function( SetVolume value)  setVolume,required TResult Function( ToggleMute value)  toggleMute,required TResult Function( MoveToInSong value)  moveToInSong,required TResult Function( SongProgress value)  songProgress,}){
final _that = this;
switch (_that) {
case TogglePlayPause():
return togglePlayPause(_that);case ChangeSong():
return changeSong(_that);case SetVolume():
return setVolume(_that);case ToggleMute():
return toggleMute(_that);case MoveToInSong():
return moveToInSong(_that);case SongProgress():
return songProgress(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( TogglePlayPause value)?  togglePlayPause,TResult? Function( ChangeSong value)?  changeSong,TResult? Function( SetVolume value)?  setVolume,TResult? Function( ToggleMute value)?  toggleMute,TResult? Function( MoveToInSong value)?  moveToInSong,TResult? Function( SongProgress value)?  songProgress,}){
final _that = this;
switch (_that) {
case TogglePlayPause() when togglePlayPause != null:
return togglePlayPause(_that);case ChangeSong() when changeSong != null:
return changeSong(_that);case SetVolume() when setVolume != null:
return setVolume(_that);case ToggleMute() when toggleMute != null:
return toggleMute(_that);case MoveToInSong() when moveToInSong != null:
return moveToInSong(_that);case SongProgress() when songProgress != null:
return songProgress(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  togglePlayPause,TResult Function( Song song)?  changeSong,TResult Function( double value)?  setVolume,TResult Function()?  toggleMute,TResult Function( double percent)?  moveToInSong,TResult Function( Duration duration)?  songProgress,required TResult orElse(),}) {final _that = this;
switch (_that) {
case TogglePlayPause() when togglePlayPause != null:
return togglePlayPause();case ChangeSong() when changeSong != null:
return changeSong(_that.song);case SetVolume() when setVolume != null:
return setVolume(_that.value);case ToggleMute() when toggleMute != null:
return toggleMute();case MoveToInSong() when moveToInSong != null:
return moveToInSong(_that.percent);case SongProgress() when songProgress != null:
return songProgress(_that.duration);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  togglePlayPause,required TResult Function( Song song)  changeSong,required TResult Function( double value)  setVolume,required TResult Function()  toggleMute,required TResult Function( double percent)  moveToInSong,required TResult Function( Duration duration)  songProgress,}) {final _that = this;
switch (_that) {
case TogglePlayPause():
return togglePlayPause();case ChangeSong():
return changeSong(_that.song);case SetVolume():
return setVolume(_that.value);case ToggleMute():
return toggleMute();case MoveToInSong():
return moveToInSong(_that.percent);case SongProgress():
return songProgress(_that.duration);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  togglePlayPause,TResult? Function( Song song)?  changeSong,TResult? Function( double value)?  setVolume,TResult? Function()?  toggleMute,TResult? Function( double percent)?  moveToInSong,TResult? Function( Duration duration)?  songProgress,}) {final _that = this;
switch (_that) {
case TogglePlayPause() when togglePlayPause != null:
return togglePlayPause();case ChangeSong() when changeSong != null:
return changeSong(_that.song);case SetVolume() when setVolume != null:
return setVolume(_that.value);case ToggleMute() when toggleMute != null:
return toggleMute();case MoveToInSong() when moveToInSong != null:
return moveToInSong(_that.percent);case SongProgress() when songProgress != null:
return songProgress(_that.duration);case _:
  return null;

}
}

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


/// Adds pattern-matching-related methods to [PlaybackState].
extension PlaybackStatePatterns on PlaybackState {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PlaybackState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PlaybackState() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PlaybackState value)  $default,){
final _that = this;
switch (_that) {
case _PlaybackState():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PlaybackState value)?  $default,){
final _that = this;
switch (_that) {
case _PlaybackState() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( double volume,  double? previousVolume,  bool isMuted,  bool isPlaying,  SongWithProgress? songWithProgress)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PlaybackState() when $default != null:
return $default(_that.volume,_that.previousVolume,_that.isMuted,_that.isPlaying,_that.songWithProgress);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( double volume,  double? previousVolume,  bool isMuted,  bool isPlaying,  SongWithProgress? songWithProgress)  $default,) {final _that = this;
switch (_that) {
case _PlaybackState():
return $default(_that.volume,_that.previousVolume,_that.isMuted,_that.isPlaying,_that.songWithProgress);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( double volume,  double? previousVolume,  bool isMuted,  bool isPlaying,  SongWithProgress? songWithProgress)?  $default,) {final _that = this;
switch (_that) {
case _PlaybackState() when $default != null:
return $default(_that.volume,_that.previousVolume,_that.isMuted,_that.isPlaying,_that.songWithProgress);case _:
  return null;

}
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


/// Adds pattern-matching-related methods to [SongWithProgress].
extension SongWithProgressPatterns on SongWithProgress {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SongWithProgress value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SongWithProgress() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SongWithProgress value)  $default,){
final _that = this;
switch (_that) {
case _SongWithProgress():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SongWithProgress value)?  $default,){
final _that = this;
switch (_that) {
case _SongWithProgress() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( Duration progress,  Song song)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SongWithProgress() when $default != null:
return $default(_that.progress,_that.song);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( Duration progress,  Song song)  $default,) {final _that = this;
switch (_that) {
case _SongWithProgress():
return $default(_that.progress,_that.song);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( Duration progress,  Song song)?  $default,) {final _that = this;
switch (_that) {
case _SongWithProgress() when $default != null:
return $default(_that.progress,_that.song);case _:
  return null;

}
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
