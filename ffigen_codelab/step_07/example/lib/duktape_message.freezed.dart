// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
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
