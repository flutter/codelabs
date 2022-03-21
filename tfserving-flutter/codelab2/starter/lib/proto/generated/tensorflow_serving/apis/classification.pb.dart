///
//  Generated code. Do not modify.
//  source: tensorflow_serving/apis/classification.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'model.pb.dart' as $0;
import 'input.pb.dart' as $1;

class Class extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'Class',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'tensorflow.serving'),
      createEmptyInstance: create)
    ..aOS(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'label')
    ..a<$core.double>(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'score',
        $pb.PbFieldType.OF)
    ..hasRequiredFields = false;

  Class._() : super();
  factory Class({
    $core.String? label,
    $core.double? score,
  }) {
    final _result = create();
    if (label != null) {
      _result.label = label;
    }
    if (score != null) {
      _result.score = score;
    }
    return _result;
  }
  factory Class.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory Class.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  Class clone() => Class()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  Class copyWith(void Function(Class) updates) =>
      super.copyWith((message) => updates(message as Class))
          as Class; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Class create() => Class._();
  Class createEmptyInstance() => create();
  static $pb.PbList<Class> createRepeated() => $pb.PbList<Class>();
  @$core.pragma('dart2js:noInline')
  static Class getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Class>(create);
  static Class? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get label => $_getSZ(0);
  @$pb.TagNumber(1)
  set label($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasLabel() => $_has(0);
  @$pb.TagNumber(1)
  void clearLabel() => clearField(1);

  @$pb.TagNumber(2)
  $core.double get score => $_getN(1);
  @$pb.TagNumber(2)
  set score($core.double v) {
    $_setFloat(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasScore() => $_has(1);
  @$pb.TagNumber(2)
  void clearScore() => clearField(2);
}

class Classifications extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'Classifications',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'tensorflow.serving'),
      createEmptyInstance: create)
    ..pc<Class>(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'classes',
        $pb.PbFieldType.PM,
        subBuilder: Class.create)
    ..hasRequiredFields = false;

  Classifications._() : super();
  factory Classifications({
    $core.Iterable<Class>? classes,
  }) {
    final _result = create();
    if (classes != null) {
      _result.classes.addAll(classes);
    }
    return _result;
  }
  factory Classifications.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory Classifications.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  Classifications clone() => Classifications()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  Classifications copyWith(void Function(Classifications) updates) =>
      super.copyWith((message) => updates(message as Classifications))
          as Classifications; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Classifications create() => Classifications._();
  Classifications createEmptyInstance() => create();
  static $pb.PbList<Classifications> createRepeated() =>
      $pb.PbList<Classifications>();
  @$core.pragma('dart2js:noInline')
  static Classifications getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<Classifications>(create);
  static Classifications? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<Class> get classes => $_getList(0);
}

class ClassificationResult extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'ClassificationResult',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'tensorflow.serving'),
      createEmptyInstance: create)
    ..pc<Classifications>(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'classifications',
        $pb.PbFieldType.PM,
        subBuilder: Classifications.create)
    ..hasRequiredFields = false;

  ClassificationResult._() : super();
  factory ClassificationResult({
    $core.Iterable<Classifications>? classifications,
  }) {
    final _result = create();
    if (classifications != null) {
      _result.classifications.addAll(classifications);
    }
    return _result;
  }
  factory ClassificationResult.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ClassificationResult.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  ClassificationResult clone() =>
      ClassificationResult()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  ClassificationResult copyWith(void Function(ClassificationResult) updates) =>
      super.copyWith((message) => updates(message as ClassificationResult))
          as ClassificationResult; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ClassificationResult create() => ClassificationResult._();
  ClassificationResult createEmptyInstance() => create();
  static $pb.PbList<ClassificationResult> createRepeated() =>
      $pb.PbList<ClassificationResult>();
  @$core.pragma('dart2js:noInline')
  static ClassificationResult getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ClassificationResult>(create);
  static ClassificationResult? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<Classifications> get classifications => $_getList(0);
}

class ClassificationRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'ClassificationRequest',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'tensorflow.serving'),
      createEmptyInstance: create)
    ..aOM<$0.ModelSpec>(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'modelSpec',
        subBuilder: $0.ModelSpec.create)
    ..aOM<$1.Input>(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'input',
        subBuilder: $1.Input.create)
    ..hasRequiredFields = false;

  ClassificationRequest._() : super();
  factory ClassificationRequest({
    $0.ModelSpec? modelSpec,
    $1.Input? input,
  }) {
    final _result = create();
    if (modelSpec != null) {
      _result.modelSpec = modelSpec;
    }
    if (input != null) {
      _result.input = input;
    }
    return _result;
  }
  factory ClassificationRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ClassificationRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  ClassificationRequest clone() =>
      ClassificationRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  ClassificationRequest copyWith(
          void Function(ClassificationRequest) updates) =>
      super.copyWith((message) => updates(message as ClassificationRequest))
          as ClassificationRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ClassificationRequest create() => ClassificationRequest._();
  ClassificationRequest createEmptyInstance() => create();
  static $pb.PbList<ClassificationRequest> createRepeated() =>
      $pb.PbList<ClassificationRequest>();
  @$core.pragma('dart2js:noInline')
  static ClassificationRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ClassificationRequest>(create);
  static ClassificationRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $0.ModelSpec get modelSpec => $_getN(0);
  @$pb.TagNumber(1)
  set modelSpec($0.ModelSpec v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasModelSpec() => $_has(0);
  @$pb.TagNumber(1)
  void clearModelSpec() => clearField(1);
  @$pb.TagNumber(1)
  $0.ModelSpec ensureModelSpec() => $_ensure(0);

  @$pb.TagNumber(2)
  $1.Input get input => $_getN(1);
  @$pb.TagNumber(2)
  set input($1.Input v) {
    setField(2, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasInput() => $_has(1);
  @$pb.TagNumber(2)
  void clearInput() => clearField(2);
  @$pb.TagNumber(2)
  $1.Input ensureInput() => $_ensure(1);
}

class ClassificationResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'ClassificationResponse',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'tensorflow.serving'),
      createEmptyInstance: create)
    ..aOM<ClassificationResult>(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'result',
        subBuilder: ClassificationResult.create)
    ..aOM<$0.ModelSpec>(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'modelSpec',
        subBuilder: $0.ModelSpec.create)
    ..hasRequiredFields = false;

  ClassificationResponse._() : super();
  factory ClassificationResponse({
    ClassificationResult? result,
    $0.ModelSpec? modelSpec,
  }) {
    final _result = create();
    if (result != null) {
      _result.result = result;
    }
    if (modelSpec != null) {
      _result.modelSpec = modelSpec;
    }
    return _result;
  }
  factory ClassificationResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ClassificationResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  ClassificationResponse clone() =>
      ClassificationResponse()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  ClassificationResponse copyWith(
          void Function(ClassificationResponse) updates) =>
      super.copyWith((message) => updates(message as ClassificationResponse))
          as ClassificationResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ClassificationResponse create() => ClassificationResponse._();
  ClassificationResponse createEmptyInstance() => create();
  static $pb.PbList<ClassificationResponse> createRepeated() =>
      $pb.PbList<ClassificationResponse>();
  @$core.pragma('dart2js:noInline')
  static ClassificationResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ClassificationResponse>(create);
  static ClassificationResponse? _defaultInstance;

  @$pb.TagNumber(1)
  ClassificationResult get result => $_getN(0);
  @$pb.TagNumber(1)
  set result(ClassificationResult v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasResult() => $_has(0);
  @$pb.TagNumber(1)
  void clearResult() => clearField(1);
  @$pb.TagNumber(1)
  ClassificationResult ensureResult() => $_ensure(0);

  @$pb.TagNumber(2)
  $0.ModelSpec get modelSpec => $_getN(1);
  @$pb.TagNumber(2)
  set modelSpec($0.ModelSpec v) {
    setField(2, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasModelSpec() => $_has(1);
  @$pb.TagNumber(2)
  void clearModelSpec() => clearField(2);
  @$pb.TagNumber(2)
  $0.ModelSpec ensureModelSpec() => $_ensure(1);
}
