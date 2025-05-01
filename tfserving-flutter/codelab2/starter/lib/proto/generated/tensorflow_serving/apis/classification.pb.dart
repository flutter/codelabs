//
//  Generated code. Do not modify.
//  source: tensorflow_serving/apis/classification.proto
//
// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'input.pb.dart' as $1;
import 'model.pb.dart' as $0;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

/// A single class.
class Class extends $pb.GeneratedMessage {
  factory Class({
    $core.String? label,
    $core.double? score,
  }) {
    final $result = create();
    if (label != null) {
      $result.label = label;
    }
    if (score != null) {
      $result.score = score;
    }
    return $result;
  }
  Class._() : super();
  factory Class.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Class.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Class', package: const $pb.PackageName(_omitMessageNames ? '' : 'tensorflow.serving'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'label')
    ..a<$core.double>(2, _omitFieldNames ? '' : 'score', $pb.PbFieldType.OF)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Class clone() => Class()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Class copyWith(void Function(Class) updates) => super.copyWith((message) => updates(message as Class)) as Class;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Class create() => Class._();
  Class createEmptyInstance() => create();
  static $pb.PbList<Class> createRepeated() => $pb.PbList<Class>();
  @$core.pragma('dart2js:noInline')
  static Class getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Class>(create);
  static Class? _defaultInstance;

  /// Label or name of the class.
  @$pb.TagNumber(1)
  $core.String get label => $_getSZ(0);
  @$pb.TagNumber(1)
  set label($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasLabel() => $_has(0);
  @$pb.TagNumber(1)
  void clearLabel() => $_clearField(1);

  /// Score for this class (e.g., the probability the item belongs to this
  /// class). As per the proto3 default-value semantics, if the score is missing,
  /// it should be treated as 0.
  @$pb.TagNumber(2)
  $core.double get score => $_getN(1);
  @$pb.TagNumber(2)
  set score($core.double v) { $_setFloat(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasScore() => $_has(1);
  @$pb.TagNumber(2)
  void clearScore() => $_clearField(2);
}

/// List of classes for a single item (tensorflow.Example).
class Classifications extends $pb.GeneratedMessage {
  factory Classifications({
    $core.Iterable<Class>? classes,
  }) {
    final $result = create();
    if (classes != null) {
      $result.classes.addAll(classes);
    }
    return $result;
  }
  Classifications._() : super();
  factory Classifications.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Classifications.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Classifications', package: const $pb.PackageName(_omitMessageNames ? '' : 'tensorflow.serving'), createEmptyInstance: create)
    ..pc<Class>(1, _omitFieldNames ? '' : 'classes', $pb.PbFieldType.PM, subBuilder: Class.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Classifications clone() => Classifications()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Classifications copyWith(void Function(Classifications) updates) => super.copyWith((message) => updates(message as Classifications)) as Classifications;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Classifications create() => Classifications._();
  Classifications createEmptyInstance() => create();
  static $pb.PbList<Classifications> createRepeated() => $pb.PbList<Classifications>();
  @$core.pragma('dart2js:noInline')
  static Classifications getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Classifications>(create);
  static Classifications? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<Class> get classes => $_getList(0);
}

/// Contains one result per input example, in the same order as the input in
/// ClassificationRequest.
class ClassificationResult extends $pb.GeneratedMessage {
  factory ClassificationResult({
    $core.Iterable<Classifications>? classifications,
  }) {
    final $result = create();
    if (classifications != null) {
      $result.classifications.addAll(classifications);
    }
    return $result;
  }
  ClassificationResult._() : super();
  factory ClassificationResult.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ClassificationResult.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ClassificationResult', package: const $pb.PackageName(_omitMessageNames ? '' : 'tensorflow.serving'), createEmptyInstance: create)
    ..pc<Classifications>(1, _omitFieldNames ? '' : 'classifications', $pb.PbFieldType.PM, subBuilder: Classifications.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ClassificationResult clone() => ClassificationResult()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ClassificationResult copyWith(void Function(ClassificationResult) updates) => super.copyWith((message) => updates(message as ClassificationResult)) as ClassificationResult;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ClassificationResult create() => ClassificationResult._();
  ClassificationResult createEmptyInstance() => create();
  static $pb.PbList<ClassificationResult> createRepeated() => $pb.PbList<ClassificationResult>();
  @$core.pragma('dart2js:noInline')
  static ClassificationResult getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ClassificationResult>(create);
  static ClassificationResult? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<Classifications> get classifications => $_getList(0);
}

class ClassificationRequest extends $pb.GeneratedMessage {
  factory ClassificationRequest({
    $0.ModelSpec? modelSpec,
    $1.Input? input,
  }) {
    final $result = create();
    if (modelSpec != null) {
      $result.modelSpec = modelSpec;
    }
    if (input != null) {
      $result.input = input;
    }
    return $result;
  }
  ClassificationRequest._() : super();
  factory ClassificationRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ClassificationRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ClassificationRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'tensorflow.serving'), createEmptyInstance: create)
    ..aOM<$0.ModelSpec>(1, _omitFieldNames ? '' : 'modelSpec', subBuilder: $0.ModelSpec.create)
    ..aOM<$1.Input>(2, _omitFieldNames ? '' : 'input', subBuilder: $1.Input.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ClassificationRequest clone() => ClassificationRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ClassificationRequest copyWith(void Function(ClassificationRequest) updates) => super.copyWith((message) => updates(message as ClassificationRequest)) as ClassificationRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ClassificationRequest create() => ClassificationRequest._();
  ClassificationRequest createEmptyInstance() => create();
  static $pb.PbList<ClassificationRequest> createRepeated() => $pb.PbList<ClassificationRequest>();
  @$core.pragma('dart2js:noInline')
  static ClassificationRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ClassificationRequest>(create);
  static ClassificationRequest? _defaultInstance;

  /// Model Specification. If version is not specified, will use the latest
  /// (numerical) version.
  @$pb.TagNumber(1)
  $0.ModelSpec get modelSpec => $_getN(0);
  @$pb.TagNumber(1)
  set modelSpec($0.ModelSpec v) { $_setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasModelSpec() => $_has(0);
  @$pb.TagNumber(1)
  void clearModelSpec() => $_clearField(1);
  @$pb.TagNumber(1)
  $0.ModelSpec ensureModelSpec() => $_ensure(0);

  /// Input data.
  @$pb.TagNumber(2)
  $1.Input get input => $_getN(1);
  @$pb.TagNumber(2)
  set input($1.Input v) { $_setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasInput() => $_has(1);
  @$pb.TagNumber(2)
  void clearInput() => $_clearField(2);
  @$pb.TagNumber(2)
  $1.Input ensureInput() => $_ensure(1);
}

class ClassificationResponse extends $pb.GeneratedMessage {
  factory ClassificationResponse({
    ClassificationResult? result,
    $0.ModelSpec? modelSpec,
  }) {
    final $result = create();
    if (result != null) {
      $result.result = result;
    }
    if (modelSpec != null) {
      $result.modelSpec = modelSpec;
    }
    return $result;
  }
  ClassificationResponse._() : super();
  factory ClassificationResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ClassificationResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ClassificationResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'tensorflow.serving'), createEmptyInstance: create)
    ..aOM<ClassificationResult>(1, _omitFieldNames ? '' : 'result', subBuilder: ClassificationResult.create)
    ..aOM<$0.ModelSpec>(2, _omitFieldNames ? '' : 'modelSpec', subBuilder: $0.ModelSpec.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ClassificationResponse clone() => ClassificationResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ClassificationResponse copyWith(void Function(ClassificationResponse) updates) => super.copyWith((message) => updates(message as ClassificationResponse)) as ClassificationResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ClassificationResponse create() => ClassificationResponse._();
  ClassificationResponse createEmptyInstance() => create();
  static $pb.PbList<ClassificationResponse> createRepeated() => $pb.PbList<ClassificationResponse>();
  @$core.pragma('dart2js:noInline')
  static ClassificationResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ClassificationResponse>(create);
  static ClassificationResponse? _defaultInstance;

  /// Result of the classification.
  @$pb.TagNumber(1)
  ClassificationResult get result => $_getN(0);
  @$pb.TagNumber(1)
  set result(ClassificationResult v) { $_setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasResult() => $_has(0);
  @$pb.TagNumber(1)
  void clearResult() => $_clearField(1);
  @$pb.TagNumber(1)
  ClassificationResult ensureResult() => $_ensure(0);

  /// Effective Model Specification used for classification.
  @$pb.TagNumber(2)
  $0.ModelSpec get modelSpec => $_getN(1);
  @$pb.TagNumber(2)
  set modelSpec($0.ModelSpec v) { $_setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasModelSpec() => $_has(1);
  @$pb.TagNumber(2)
  void clearModelSpec() => $_clearField(2);
  @$pb.TagNumber(2)
  $0.ModelSpec ensureModelSpec() => $_ensure(1);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
