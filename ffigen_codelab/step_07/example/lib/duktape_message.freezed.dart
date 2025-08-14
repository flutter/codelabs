// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'duktape_message.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$DuktapeMessage {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DuktapeMessage);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'DuktapeMessage()';
}


}

/// @nodoc
class $DuktapeMessageCopyWith<$Res>  {
$DuktapeMessageCopyWith(DuktapeMessage _, $Res Function(DuktapeMessage) __);
}


/// Adds pattern-matching-related methods to [DuktapeMessage].
extension DuktapeMessagePatterns on DuktapeMessage {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( DuktapeMessageCode value)?  evaluate,TResult Function( DuktapeMessageResponse value)?  response,TResult Function( DuktapeMessageError value)?  error,required TResult orElse(),}){
final _that = this;
switch (_that) {
case DuktapeMessageCode() when evaluate != null:
return evaluate(_that);case DuktapeMessageResponse() when response != null:
return response(_that);case DuktapeMessageError() when error != null:
return error(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( DuktapeMessageCode value)  evaluate,required TResult Function( DuktapeMessageResponse value)  response,required TResult Function( DuktapeMessageError value)  error,}){
final _that = this;
switch (_that) {
case DuktapeMessageCode():
return evaluate(_that);case DuktapeMessageResponse():
return response(_that);case DuktapeMessageError():
return error(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( DuktapeMessageCode value)?  evaluate,TResult? Function( DuktapeMessageResponse value)?  response,TResult? Function( DuktapeMessageError value)?  error,}){
final _that = this;
switch (_that) {
case DuktapeMessageCode() when evaluate != null:
return evaluate(_that);case DuktapeMessageResponse() when response != null:
return response(_that);case DuktapeMessageError() when error != null:
return error(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String code)?  evaluate,TResult Function( String result)?  response,TResult Function( String log)?  error,required TResult orElse(),}) {final _that = this;
switch (_that) {
case DuktapeMessageCode() when evaluate != null:
return evaluate(_that.code);case DuktapeMessageResponse() when response != null:
return response(_that.result);case DuktapeMessageError() when error != null:
return error(_that.log);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String code)  evaluate,required TResult Function( String result)  response,required TResult Function( String log)  error,}) {final _that = this;
switch (_that) {
case DuktapeMessageCode():
return evaluate(_that.code);case DuktapeMessageResponse():
return response(_that.result);case DuktapeMessageError():
return error(_that.log);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String code)?  evaluate,TResult? Function( String result)?  response,TResult? Function( String log)?  error,}) {final _that = this;
switch (_that) {
case DuktapeMessageCode() when evaluate != null:
return evaluate(_that.code);case DuktapeMessageResponse() when response != null:
return response(_that.result);case DuktapeMessageError() when error != null:
return error(_that.log);case _:
  return null;

}
}

}

/// @nodoc


class DuktapeMessageCode implements DuktapeMessage {
   DuktapeMessageCode(this.code);
  

 final  String code;

/// Create a copy of DuktapeMessage
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DuktapeMessageCodeCopyWith<DuktapeMessageCode> get copyWith => _$DuktapeMessageCodeCopyWithImpl<DuktapeMessageCode>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DuktapeMessageCode&&(identical(other.code, code) || other.code == code));
}


@override
int get hashCode => Object.hash(runtimeType,code);

@override
String toString() {
  return 'DuktapeMessage.evaluate(code: $code)';
}


}

/// @nodoc
abstract mixin class $DuktapeMessageCodeCopyWith<$Res> implements $DuktapeMessageCopyWith<$Res> {
  factory $DuktapeMessageCodeCopyWith(DuktapeMessageCode value, $Res Function(DuktapeMessageCode) _then) = _$DuktapeMessageCodeCopyWithImpl;
@useResult
$Res call({
 String code
});




}
/// @nodoc
class _$DuktapeMessageCodeCopyWithImpl<$Res>
    implements $DuktapeMessageCodeCopyWith<$Res> {
  _$DuktapeMessageCodeCopyWithImpl(this._self, this._then);

  final DuktapeMessageCode _self;
  final $Res Function(DuktapeMessageCode) _then;

/// Create a copy of DuktapeMessage
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? code = null,}) {
  return _then(DuktapeMessageCode(
null == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class DuktapeMessageResponse implements DuktapeMessage {
   DuktapeMessageResponse(this.result);
  

 final  String result;

/// Create a copy of DuktapeMessage
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DuktapeMessageResponseCopyWith<DuktapeMessageResponse> get copyWith => _$DuktapeMessageResponseCopyWithImpl<DuktapeMessageResponse>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DuktapeMessageResponse&&(identical(other.result, result) || other.result == result));
}


@override
int get hashCode => Object.hash(runtimeType,result);

@override
String toString() {
  return 'DuktapeMessage.response(result: $result)';
}


}

/// @nodoc
abstract mixin class $DuktapeMessageResponseCopyWith<$Res> implements $DuktapeMessageCopyWith<$Res> {
  factory $DuktapeMessageResponseCopyWith(DuktapeMessageResponse value, $Res Function(DuktapeMessageResponse) _then) = _$DuktapeMessageResponseCopyWithImpl;
@useResult
$Res call({
 String result
});




}
/// @nodoc
class _$DuktapeMessageResponseCopyWithImpl<$Res>
    implements $DuktapeMessageResponseCopyWith<$Res> {
  _$DuktapeMessageResponseCopyWithImpl(this._self, this._then);

  final DuktapeMessageResponse _self;
  final $Res Function(DuktapeMessageResponse) _then;

/// Create a copy of DuktapeMessage
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? result = null,}) {
  return _then(DuktapeMessageResponse(
null == result ? _self.result : result // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class DuktapeMessageError implements DuktapeMessage {
   DuktapeMessageError(this.log);
  

 final  String log;

/// Create a copy of DuktapeMessage
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DuktapeMessageErrorCopyWith<DuktapeMessageError> get copyWith => _$DuktapeMessageErrorCopyWithImpl<DuktapeMessageError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DuktapeMessageError&&(identical(other.log, log) || other.log == log));
}


@override
int get hashCode => Object.hash(runtimeType,log);

@override
String toString() {
  return 'DuktapeMessage.error(log: $log)';
}


}

/// @nodoc
abstract mixin class $DuktapeMessageErrorCopyWith<$Res> implements $DuktapeMessageCopyWith<$Res> {
  factory $DuktapeMessageErrorCopyWith(DuktapeMessageError value, $Res Function(DuktapeMessageError) _then) = _$DuktapeMessageErrorCopyWithImpl;
@useResult
$Res call({
 String log
});




}
/// @nodoc
class _$DuktapeMessageErrorCopyWithImpl<$Res>
    implements $DuktapeMessageErrorCopyWith<$Res> {
  _$DuktapeMessageErrorCopyWithImpl(this._self, this._then);

  final DuktapeMessageError _self;
  final $Res Function(DuktapeMessageError) _then;

/// Create a copy of DuktapeMessage
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? log = null,}) {
  return _then(DuktapeMessageError(
null == log ? _self.log : log // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
