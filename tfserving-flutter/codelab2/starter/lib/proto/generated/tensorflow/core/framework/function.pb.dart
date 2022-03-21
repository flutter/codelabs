///
//  Generated code. Do not modify.
//  source: tensorflow/core/framework/function.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'op_def.pb.dart' as $0;
import 'node_def.pb.dart' as $1;
import 'attr_value.pb.dart' as $2;

class FunctionDefLibrary extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'FunctionDefLibrary',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'tensorflow'),
      createEmptyInstance: create)
    ..pc<FunctionDef>(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'function',
        $pb.PbFieldType.PM,
        subBuilder: FunctionDef.create)
    ..pc<GradientDef>(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'gradient',
        $pb.PbFieldType.PM,
        subBuilder: GradientDef.create)
    ..pc<RegisteredGradient>(
        3,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'registeredGradients',
        $pb.PbFieldType.PM,
        subBuilder: RegisteredGradient.create)
    ..hasRequiredFields = false;

  FunctionDefLibrary._() : super();
  factory FunctionDefLibrary({
    $core.Iterable<FunctionDef>? function,
    $core.Iterable<GradientDef>? gradient,
    $core.Iterable<RegisteredGradient>? registeredGradients,
  }) {
    final _result = create();
    if (function != null) {
      _result.function.addAll(function);
    }
    if (gradient != null) {
      _result.gradient.addAll(gradient);
    }
    if (registeredGradients != null) {
      _result.registeredGradients.addAll(registeredGradients);
    }
    return _result;
  }
  factory FunctionDefLibrary.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory FunctionDefLibrary.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  FunctionDefLibrary clone() => FunctionDefLibrary()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  FunctionDefLibrary copyWith(void Function(FunctionDefLibrary) updates) =>
      super.copyWith((message) => updates(message as FunctionDefLibrary))
          as FunctionDefLibrary; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static FunctionDefLibrary create() => FunctionDefLibrary._();
  FunctionDefLibrary createEmptyInstance() => create();
  static $pb.PbList<FunctionDefLibrary> createRepeated() =>
      $pb.PbList<FunctionDefLibrary>();
  @$core.pragma('dart2js:noInline')
  static FunctionDefLibrary getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<FunctionDefLibrary>(create);
  static FunctionDefLibrary? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<FunctionDef> get function => $_getList(0);

  @$pb.TagNumber(2)
  $core.List<GradientDef> get gradient => $_getList(1);

  @$pb.TagNumber(3)
  $core.List<RegisteredGradient> get registeredGradients => $_getList(2);
}

class FunctionDef_ArgAttrs extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'FunctionDef.ArgAttrs',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'tensorflow'),
      createEmptyInstance: create)
    ..m<$core.String, $2.AttrValue>(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'attr',
        entryClassName: 'FunctionDef.ArgAttrs.AttrEntry',
        keyFieldType: $pb.PbFieldType.OS,
        valueFieldType: $pb.PbFieldType.OM,
        valueCreator: $2.AttrValue.create,
        packageName: const $pb.PackageName('tensorflow'))
    ..hasRequiredFields = false;

  FunctionDef_ArgAttrs._() : super();
  factory FunctionDef_ArgAttrs({
    $core.Map<$core.String, $2.AttrValue>? attr,
  }) {
    final _result = create();
    if (attr != null) {
      _result.attr.addAll(attr);
    }
    return _result;
  }
  factory FunctionDef_ArgAttrs.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory FunctionDef_ArgAttrs.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  FunctionDef_ArgAttrs clone() =>
      FunctionDef_ArgAttrs()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  FunctionDef_ArgAttrs copyWith(void Function(FunctionDef_ArgAttrs) updates) =>
      super.copyWith((message) => updates(message as FunctionDef_ArgAttrs))
          as FunctionDef_ArgAttrs; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static FunctionDef_ArgAttrs create() => FunctionDef_ArgAttrs._();
  FunctionDef_ArgAttrs createEmptyInstance() => create();
  static $pb.PbList<FunctionDef_ArgAttrs> createRepeated() =>
      $pb.PbList<FunctionDef_ArgAttrs>();
  @$core.pragma('dart2js:noInline')
  static FunctionDef_ArgAttrs getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<FunctionDef_ArgAttrs>(create);
  static FunctionDef_ArgAttrs? _defaultInstance;

  @$pb.TagNumber(1)
  $core.Map<$core.String, $2.AttrValue> get attr => $_getMap(0);
}

class FunctionDef extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'FunctionDef',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'tensorflow'),
      createEmptyInstance: create)
    ..aOM<$0.OpDef>(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'signature',
        subBuilder: $0.OpDef.create)
    ..pc<$1.NodeDef>(
        3,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'nodeDef',
        $pb.PbFieldType.PM,
        subBuilder: $1.NodeDef.create)
    ..m<$core.String, $core.String>(
        4,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'ret',
        entryClassName: 'FunctionDef.RetEntry',
        keyFieldType: $pb.PbFieldType.OS,
        valueFieldType: $pb.PbFieldType.OS,
        packageName: const $pb.PackageName('tensorflow'))
    ..m<$core.String, $2.AttrValue>(
        5,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'attr',
        entryClassName: 'FunctionDef.AttrEntry',
        keyFieldType: $pb.PbFieldType.OS,
        valueFieldType: $pb.PbFieldType.OM,
        valueCreator: $2.AttrValue.create,
        packageName: const $pb.PackageName('tensorflow'))
    ..m<$core.String, $core.String>(
        6,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'controlRet',
        entryClassName: 'FunctionDef.ControlRetEntry',
        keyFieldType: $pb.PbFieldType.OS,
        valueFieldType: $pb.PbFieldType.OS,
        packageName: const $pb.PackageName('tensorflow'))
    ..m<$core.int, FunctionDef_ArgAttrs>(
        7,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'argAttr',
        entryClassName: 'FunctionDef.ArgAttrEntry',
        keyFieldType: $pb.PbFieldType.OU3,
        valueFieldType: $pb.PbFieldType.OM,
        valueCreator: FunctionDef_ArgAttrs.create,
        packageName: const $pb.PackageName('tensorflow'))
    ..m<$core.int, $core.int>(
        8,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'resourceArgUniqueId',
        entryClassName: 'FunctionDef.ResourceArgUniqueIdEntry',
        keyFieldType: $pb.PbFieldType.OU3,
        valueFieldType: $pb.PbFieldType.OU3,
        packageName: const $pb.PackageName('tensorflow'))
    ..hasRequiredFields = false;

  FunctionDef._() : super();
  factory FunctionDef({
    $0.OpDef? signature,
    $core.Iterable<$1.NodeDef>? nodeDef,
    $core.Map<$core.String, $core.String>? ret,
    $core.Map<$core.String, $2.AttrValue>? attr,
    $core.Map<$core.String, $core.String>? controlRet,
    $core.Map<$core.int, FunctionDef_ArgAttrs>? argAttr,
    $core.Map<$core.int, $core.int>? resourceArgUniqueId,
  }) {
    final _result = create();
    if (signature != null) {
      _result.signature = signature;
    }
    if (nodeDef != null) {
      _result.nodeDef.addAll(nodeDef);
    }
    if (ret != null) {
      _result.ret.addAll(ret);
    }
    if (attr != null) {
      _result.attr.addAll(attr);
    }
    if (controlRet != null) {
      _result.controlRet.addAll(controlRet);
    }
    if (argAttr != null) {
      _result.argAttr.addAll(argAttr);
    }
    if (resourceArgUniqueId != null) {
      _result.resourceArgUniqueId.addAll(resourceArgUniqueId);
    }
    return _result;
  }
  factory FunctionDef.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory FunctionDef.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  FunctionDef clone() => FunctionDef()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  FunctionDef copyWith(void Function(FunctionDef) updates) =>
      super.copyWith((message) => updates(message as FunctionDef))
          as FunctionDef; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static FunctionDef create() => FunctionDef._();
  FunctionDef createEmptyInstance() => create();
  static $pb.PbList<FunctionDef> createRepeated() => $pb.PbList<FunctionDef>();
  @$core.pragma('dart2js:noInline')
  static FunctionDef getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<FunctionDef>(create);
  static FunctionDef? _defaultInstance;

  @$pb.TagNumber(1)
  $0.OpDef get signature => $_getN(0);
  @$pb.TagNumber(1)
  set signature($0.OpDef v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasSignature() => $_has(0);
  @$pb.TagNumber(1)
  void clearSignature() => clearField(1);
  @$pb.TagNumber(1)
  $0.OpDef ensureSignature() => $_ensure(0);

  @$pb.TagNumber(3)
  $core.List<$1.NodeDef> get nodeDef => $_getList(1);

  @$pb.TagNumber(4)
  $core.Map<$core.String, $core.String> get ret => $_getMap(2);

  @$pb.TagNumber(5)
  $core.Map<$core.String, $2.AttrValue> get attr => $_getMap(3);

  @$pb.TagNumber(6)
  $core.Map<$core.String, $core.String> get controlRet => $_getMap(4);

  @$pb.TagNumber(7)
  $core.Map<$core.int, FunctionDef_ArgAttrs> get argAttr => $_getMap(5);

  @$pb.TagNumber(8)
  $core.Map<$core.int, $core.int> get resourceArgUniqueId => $_getMap(6);
}

class GradientDef extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'GradientDef',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'tensorflow'),
      createEmptyInstance: create)
    ..aOS(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'functionName')
    ..aOS(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'gradientFunc')
    ..hasRequiredFields = false;

  GradientDef._() : super();
  factory GradientDef({
    $core.String? functionName,
    $core.String? gradientFunc,
  }) {
    final _result = create();
    if (functionName != null) {
      _result.functionName = functionName;
    }
    if (gradientFunc != null) {
      _result.gradientFunc = gradientFunc;
    }
    return _result;
  }
  factory GradientDef.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory GradientDef.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  GradientDef clone() => GradientDef()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  GradientDef copyWith(void Function(GradientDef) updates) =>
      super.copyWith((message) => updates(message as GradientDef))
          as GradientDef; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GradientDef create() => GradientDef._();
  GradientDef createEmptyInstance() => create();
  static $pb.PbList<GradientDef> createRepeated() => $pb.PbList<GradientDef>();
  @$core.pragma('dart2js:noInline')
  static GradientDef getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GradientDef>(create);
  static GradientDef? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get functionName => $_getSZ(0);
  @$pb.TagNumber(1)
  set functionName($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasFunctionName() => $_has(0);
  @$pb.TagNumber(1)
  void clearFunctionName() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get gradientFunc => $_getSZ(1);
  @$pb.TagNumber(2)
  set gradientFunc($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasGradientFunc() => $_has(1);
  @$pb.TagNumber(2)
  void clearGradientFunc() => clearField(2);
}

class RegisteredGradient extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'RegisteredGradient',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'tensorflow'),
      createEmptyInstance: create)
    ..aOS(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'gradientFunc')
    ..aOS(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'registeredOpType')
    ..hasRequiredFields = false;

  RegisteredGradient._() : super();
  factory RegisteredGradient({
    $core.String? gradientFunc,
    $core.String? registeredOpType,
  }) {
    final _result = create();
    if (gradientFunc != null) {
      _result.gradientFunc = gradientFunc;
    }
    if (registeredOpType != null) {
      _result.registeredOpType = registeredOpType;
    }
    return _result;
  }
  factory RegisteredGradient.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory RegisteredGradient.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  RegisteredGradient clone() => RegisteredGradient()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  RegisteredGradient copyWith(void Function(RegisteredGradient) updates) =>
      super.copyWith((message) => updates(message as RegisteredGradient))
          as RegisteredGradient; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RegisteredGradient create() => RegisteredGradient._();
  RegisteredGradient createEmptyInstance() => create();
  static $pb.PbList<RegisteredGradient> createRepeated() =>
      $pb.PbList<RegisteredGradient>();
  @$core.pragma('dart2js:noInline')
  static RegisteredGradient getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<RegisteredGradient>(create);
  static RegisteredGradient? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get gradientFunc => $_getSZ(0);
  @$pb.TagNumber(1)
  set gradientFunc($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasGradientFunc() => $_has(0);
  @$pb.TagNumber(1)
  void clearGradientFunc() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get registeredOpType => $_getSZ(1);
  @$pb.TagNumber(2)
  set registeredOpType($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasRegisteredOpType() => $_has(1);
  @$pb.TagNumber(2)
  void clearRegisteredOpType() => clearField(2);
}
