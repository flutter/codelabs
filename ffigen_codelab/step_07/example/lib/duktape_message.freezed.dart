// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'duktape_message.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$DuktapeMessage {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String code) evaluate,
    required TResult Function(String result) response,
    required TResult Function(String log) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String code)? evaluate,
    TResult? Function(String result)? response,
    TResult? Function(String log)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String code)? evaluate,
    TResult Function(String result)? response,
    TResult Function(String log)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DuktapeMessageCode value) evaluate,
    required TResult Function(DuktapeMessageResponse value) response,
    required TResult Function(DuktapeMessageError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DuktapeMessageCode value)? evaluate,
    TResult? Function(DuktapeMessageResponse value)? response,
    TResult? Function(DuktapeMessageError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DuktapeMessageCode value)? evaluate,
    TResult Function(DuktapeMessageResponse value)? response,
    TResult Function(DuktapeMessageError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DuktapeMessageCopyWith<$Res> {
  factory $DuktapeMessageCopyWith(
          DuktapeMessage value, $Res Function(DuktapeMessage) then) =
      _$DuktapeMessageCopyWithImpl<$Res, DuktapeMessage>;
}

/// @nodoc
class _$DuktapeMessageCopyWithImpl<$Res, $Val extends DuktapeMessage>
    implements $DuktapeMessageCopyWith<$Res> {
  _$DuktapeMessageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$DuktapeMessageCodeCopyWith<$Res> {
  factory _$$DuktapeMessageCodeCopyWith(_$DuktapeMessageCode value,
          $Res Function(_$DuktapeMessageCode) then) =
      __$$DuktapeMessageCodeCopyWithImpl<$Res>;
  @useResult
  $Res call({String code});
}

/// @nodoc
class __$$DuktapeMessageCodeCopyWithImpl<$Res>
    extends _$DuktapeMessageCopyWithImpl<$Res, _$DuktapeMessageCode>
    implements _$$DuktapeMessageCodeCopyWith<$Res> {
  __$$DuktapeMessageCodeCopyWithImpl(
      _$DuktapeMessageCode _value, $Res Function(_$DuktapeMessageCode) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
  }) {
    return _then(_$DuktapeMessageCode(
      null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$DuktapeMessageCode implements DuktapeMessageCode {
  _$DuktapeMessageCode(this.code);

  @override
  final String code;

  @override
  String toString() {
    return 'DuktapeMessage.evaluate(code: $code)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DuktapeMessageCode &&
            (identical(other.code, code) || other.code == code));
  }

  @override
  int get hashCode => Object.hash(runtimeType, code);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DuktapeMessageCodeCopyWith<_$DuktapeMessageCode> get copyWith =>
      __$$DuktapeMessageCodeCopyWithImpl<_$DuktapeMessageCode>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String code) evaluate,
    required TResult Function(String result) response,
    required TResult Function(String log) error,
  }) {
    return evaluate(code);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String code)? evaluate,
    TResult? Function(String result)? response,
    TResult? Function(String log)? error,
  }) {
    return evaluate?.call(code);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String code)? evaluate,
    TResult Function(String result)? response,
    TResult Function(String log)? error,
    required TResult orElse(),
  }) {
    if (evaluate != null) {
      return evaluate(code);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DuktapeMessageCode value) evaluate,
    required TResult Function(DuktapeMessageResponse value) response,
    required TResult Function(DuktapeMessageError value) error,
  }) {
    return evaluate(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DuktapeMessageCode value)? evaluate,
    TResult? Function(DuktapeMessageResponse value)? response,
    TResult? Function(DuktapeMessageError value)? error,
  }) {
    return evaluate?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DuktapeMessageCode value)? evaluate,
    TResult Function(DuktapeMessageResponse value)? response,
    TResult Function(DuktapeMessageError value)? error,
    required TResult orElse(),
  }) {
    if (evaluate != null) {
      return evaluate(this);
    }
    return orElse();
  }
}

abstract class DuktapeMessageCode implements DuktapeMessage {
  factory DuktapeMessageCode(final String code) = _$DuktapeMessageCode;

  String get code;
  @JsonKey(ignore: true)
  _$$DuktapeMessageCodeCopyWith<_$DuktapeMessageCode> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DuktapeMessageResponseCopyWith<$Res> {
  factory _$$DuktapeMessageResponseCopyWith(_$DuktapeMessageResponse value,
          $Res Function(_$DuktapeMessageResponse) then) =
      __$$DuktapeMessageResponseCopyWithImpl<$Res>;
  @useResult
  $Res call({String result});
}

/// @nodoc
class __$$DuktapeMessageResponseCopyWithImpl<$Res>
    extends _$DuktapeMessageCopyWithImpl<$Res, _$DuktapeMessageResponse>
    implements _$$DuktapeMessageResponseCopyWith<$Res> {
  __$$DuktapeMessageResponseCopyWithImpl(_$DuktapeMessageResponse _value,
      $Res Function(_$DuktapeMessageResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? result = null,
  }) {
    return _then(_$DuktapeMessageResponse(
      null == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$DuktapeMessageResponse implements DuktapeMessageResponse {
  _$DuktapeMessageResponse(this.result);

  @override
  final String result;

  @override
  String toString() {
    return 'DuktapeMessage.response(result: $result)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DuktapeMessageResponse &&
            (identical(other.result, result) || other.result == result));
  }

  @override
  int get hashCode => Object.hash(runtimeType, result);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DuktapeMessageResponseCopyWith<_$DuktapeMessageResponse> get copyWith =>
      __$$DuktapeMessageResponseCopyWithImpl<_$DuktapeMessageResponse>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String code) evaluate,
    required TResult Function(String result) response,
    required TResult Function(String log) error,
  }) {
    return response(result);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String code)? evaluate,
    TResult? Function(String result)? response,
    TResult? Function(String log)? error,
  }) {
    return response?.call(result);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String code)? evaluate,
    TResult Function(String result)? response,
    TResult Function(String log)? error,
    required TResult orElse(),
  }) {
    if (response != null) {
      return response(result);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DuktapeMessageCode value) evaluate,
    required TResult Function(DuktapeMessageResponse value) response,
    required TResult Function(DuktapeMessageError value) error,
  }) {
    return response(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DuktapeMessageCode value)? evaluate,
    TResult? Function(DuktapeMessageResponse value)? response,
    TResult? Function(DuktapeMessageError value)? error,
  }) {
    return response?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DuktapeMessageCode value)? evaluate,
    TResult Function(DuktapeMessageResponse value)? response,
    TResult Function(DuktapeMessageError value)? error,
    required TResult orElse(),
  }) {
    if (response != null) {
      return response(this);
    }
    return orElse();
  }
}

abstract class DuktapeMessageResponse implements DuktapeMessage {
  factory DuktapeMessageResponse(final String result) =
      _$DuktapeMessageResponse;

  String get result;
  @JsonKey(ignore: true)
  _$$DuktapeMessageResponseCopyWith<_$DuktapeMessageResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DuktapeMessageErrorCopyWith<$Res> {
  factory _$$DuktapeMessageErrorCopyWith(_$DuktapeMessageError value,
          $Res Function(_$DuktapeMessageError) then) =
      __$$DuktapeMessageErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({String log});
}

/// @nodoc
class __$$DuktapeMessageErrorCopyWithImpl<$Res>
    extends _$DuktapeMessageCopyWithImpl<$Res, _$DuktapeMessageError>
    implements _$$DuktapeMessageErrorCopyWith<$Res> {
  __$$DuktapeMessageErrorCopyWithImpl(
      _$DuktapeMessageError _value, $Res Function(_$DuktapeMessageError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? log = null,
  }) {
    return _then(_$DuktapeMessageError(
      null == log
          ? _value.log
          : log // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$DuktapeMessageError implements DuktapeMessageError {
  _$DuktapeMessageError(this.log);

  @override
  final String log;

  @override
  String toString() {
    return 'DuktapeMessage.error(log: $log)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DuktapeMessageError &&
            (identical(other.log, log) || other.log == log));
  }

  @override
  int get hashCode => Object.hash(runtimeType, log);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DuktapeMessageErrorCopyWith<_$DuktapeMessageError> get copyWith =>
      __$$DuktapeMessageErrorCopyWithImpl<_$DuktapeMessageError>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String code) evaluate,
    required TResult Function(String result) response,
    required TResult Function(String log) error,
  }) {
    return error(log);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String code)? evaluate,
    TResult? Function(String result)? response,
    TResult? Function(String log)? error,
  }) {
    return error?.call(log);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String code)? evaluate,
    TResult Function(String result)? response,
    TResult Function(String log)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(log);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DuktapeMessageCode value) evaluate,
    required TResult Function(DuktapeMessageResponse value) response,
    required TResult Function(DuktapeMessageError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DuktapeMessageCode value)? evaluate,
    TResult? Function(DuktapeMessageResponse value)? response,
    TResult? Function(DuktapeMessageError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DuktapeMessageCode value)? evaluate,
    TResult Function(DuktapeMessageResponse value)? response,
    TResult Function(DuktapeMessageError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class DuktapeMessageError implements DuktapeMessage {
  factory DuktapeMessageError(final String log) = _$DuktapeMessageError;

  String get log;
  @JsonKey(ignore: true)
  _$$DuktapeMessageErrorCopyWith<_$DuktapeMessageError> get copyWith =>
      throw _privateConstructorUsedError;
}
