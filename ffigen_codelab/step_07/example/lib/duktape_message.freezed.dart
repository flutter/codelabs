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
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$DuktapeMessage {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String code) evaluate,
    required TResult Function(String result) response,
    required TResult Function(String log) error,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String code)? evaluate,
    TResult? Function(String result)? response,
    TResult? Function(String log)? error,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String code)? evaluate,
    TResult Function(String result)? response,
    TResult Function(String log)? error,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DuktapeMessageCode value) evaluate,
    required TResult Function(DuktapeMessageResponse value) response,
    required TResult Function(DuktapeMessageError value) error,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DuktapeMessageCode value)? evaluate,
    TResult? Function(DuktapeMessageResponse value)? response,
    TResult? Function(DuktapeMessageError value)? error,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DuktapeMessageCode value)? evaluate,
    TResult Function(DuktapeMessageResponse value)? response,
    TResult Function(DuktapeMessageError value)? error,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DuktapeMessageCopyWith<$Res> {
  factory $DuktapeMessageCopyWith(
    DuktapeMessage value,
    $Res Function(DuktapeMessage) then,
  ) = _$DuktapeMessageCopyWithImpl<$Res, DuktapeMessage>;
}

/// @nodoc
class _$DuktapeMessageCopyWithImpl<$Res, $Val extends DuktapeMessage>
    implements $DuktapeMessageCopyWith<$Res> {
  _$DuktapeMessageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DuktapeMessage
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$DuktapeMessageCodeImplCopyWith<$Res> {
  factory _$$DuktapeMessageCodeImplCopyWith(
    _$DuktapeMessageCodeImpl value,
    $Res Function(_$DuktapeMessageCodeImpl) then,
  ) = __$$DuktapeMessageCodeImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String code});
}

/// @nodoc
class __$$DuktapeMessageCodeImplCopyWithImpl<$Res>
    extends _$DuktapeMessageCopyWithImpl<$Res, _$DuktapeMessageCodeImpl>
    implements _$$DuktapeMessageCodeImplCopyWith<$Res> {
  __$$DuktapeMessageCodeImplCopyWithImpl(
    _$DuktapeMessageCodeImpl _value,
    $Res Function(_$DuktapeMessageCodeImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of DuktapeMessage
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? code = null}) {
    return _then(
      _$DuktapeMessageCodeImpl(
        null == code
            ? _value.code
            : code // ignore: cast_nullable_to_non_nullable
                as String,
      ),
    );
  }
}

/// @nodoc

class _$DuktapeMessageCodeImpl implements DuktapeMessageCode {
  _$DuktapeMessageCodeImpl(this.code);

  @override
  final String code;

  @override
  String toString() {
    return 'DuktapeMessage.evaluate(code: $code)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DuktapeMessageCodeImpl &&
            (identical(other.code, code) || other.code == code));
  }

  @override
  int get hashCode => Object.hash(runtimeType, code);

  /// Create a copy of DuktapeMessage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DuktapeMessageCodeImplCopyWith<_$DuktapeMessageCodeImpl> get copyWith =>
      __$$DuktapeMessageCodeImplCopyWithImpl<_$DuktapeMessageCodeImpl>(
        this,
        _$identity,
      );

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
  factory DuktapeMessageCode(final String code) = _$DuktapeMessageCodeImpl;

  String get code;

  /// Create a copy of DuktapeMessage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DuktapeMessageCodeImplCopyWith<_$DuktapeMessageCodeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DuktapeMessageResponseImplCopyWith<$Res> {
  factory _$$DuktapeMessageResponseImplCopyWith(
    _$DuktapeMessageResponseImpl value,
    $Res Function(_$DuktapeMessageResponseImpl) then,
  ) = __$$DuktapeMessageResponseImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String result});
}

/// @nodoc
class __$$DuktapeMessageResponseImplCopyWithImpl<$Res>
    extends _$DuktapeMessageCopyWithImpl<$Res, _$DuktapeMessageResponseImpl>
    implements _$$DuktapeMessageResponseImplCopyWith<$Res> {
  __$$DuktapeMessageResponseImplCopyWithImpl(
    _$DuktapeMessageResponseImpl _value,
    $Res Function(_$DuktapeMessageResponseImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of DuktapeMessage
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? result = null}) {
    return _then(
      _$DuktapeMessageResponseImpl(
        null == result
            ? _value.result
            : result // ignore: cast_nullable_to_non_nullable
                as String,
      ),
    );
  }
}

/// @nodoc

class _$DuktapeMessageResponseImpl implements DuktapeMessageResponse {
  _$DuktapeMessageResponseImpl(this.result);

  @override
  final String result;

  @override
  String toString() {
    return 'DuktapeMessage.response(result: $result)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DuktapeMessageResponseImpl &&
            (identical(other.result, result) || other.result == result));
  }

  @override
  int get hashCode => Object.hash(runtimeType, result);

  /// Create a copy of DuktapeMessage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DuktapeMessageResponseImplCopyWith<_$DuktapeMessageResponseImpl>
  get copyWith =>
      __$$DuktapeMessageResponseImplCopyWithImpl<_$DuktapeMessageResponseImpl>(
        this,
        _$identity,
      );

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
      _$DuktapeMessageResponseImpl;

  String get result;

  /// Create a copy of DuktapeMessage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DuktapeMessageResponseImplCopyWith<_$DuktapeMessageResponseImpl>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DuktapeMessageErrorImplCopyWith<$Res> {
  factory _$$DuktapeMessageErrorImplCopyWith(
    _$DuktapeMessageErrorImpl value,
    $Res Function(_$DuktapeMessageErrorImpl) then,
  ) = __$$DuktapeMessageErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String log});
}

/// @nodoc
class __$$DuktapeMessageErrorImplCopyWithImpl<$Res>
    extends _$DuktapeMessageCopyWithImpl<$Res, _$DuktapeMessageErrorImpl>
    implements _$$DuktapeMessageErrorImplCopyWith<$Res> {
  __$$DuktapeMessageErrorImplCopyWithImpl(
    _$DuktapeMessageErrorImpl _value,
    $Res Function(_$DuktapeMessageErrorImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of DuktapeMessage
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? log = null}) {
    return _then(
      _$DuktapeMessageErrorImpl(
        null == log
            ? _value.log
            : log // ignore: cast_nullable_to_non_nullable
                as String,
      ),
    );
  }
}

/// @nodoc

class _$DuktapeMessageErrorImpl implements DuktapeMessageError {
  _$DuktapeMessageErrorImpl(this.log);

  @override
  final String log;

  @override
  String toString() {
    return 'DuktapeMessage.error(log: $log)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DuktapeMessageErrorImpl &&
            (identical(other.log, log) || other.log == log));
  }

  @override
  int get hashCode => Object.hash(runtimeType, log);

  /// Create a copy of DuktapeMessage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DuktapeMessageErrorImplCopyWith<_$DuktapeMessageErrorImpl> get copyWith =>
      __$$DuktapeMessageErrorImplCopyWithImpl<_$DuktapeMessageErrorImpl>(
        this,
        _$identity,
      );

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
  factory DuktapeMessageError(final String log) = _$DuktapeMessageErrorImpl;

  String get log;

  /// Create a copy of DuktapeMessage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DuktapeMessageErrorImplCopyWith<_$DuktapeMessageErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
