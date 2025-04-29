//
//  Generated code. Do not modify.
//  source: tensorflow/core/framework/function.proto
//
// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'attr_value.pb.dart' as $2;
import 'node_def.pb.dart' as $1;
import 'op_def.pb.dart' as $0;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

/// A library is a set of named functions.
class FunctionDefLibrary extends $pb.GeneratedMessage {
  factory FunctionDefLibrary({
    $core.Iterable<FunctionDef>? function,
    $core.Iterable<GradientDef>? gradient,
    $core.Iterable<RegisteredGradient>? registeredGradients,
  }) {
    final $result = create();
    if (function != null) {
      $result.function.addAll(function);
    }
    if (gradient != null) {
      $result.gradient.addAll(gradient);
    }
    if (registeredGradients != null) {
      $result.registeredGradients.addAll(registeredGradients);
    }
    return $result;
  }
  FunctionDefLibrary._() : super();
  factory FunctionDefLibrary.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory FunctionDefLibrary.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'FunctionDefLibrary', package: const $pb.PackageName(_omitMessageNames ? '' : 'tensorflow'), createEmptyInstance: create)
    ..pc<FunctionDef>(1, _omitFieldNames ? '' : 'function', $pb.PbFieldType.PM, subBuilder: FunctionDef.create)
    ..pc<GradientDef>(2, _omitFieldNames ? '' : 'gradient', $pb.PbFieldType.PM, subBuilder: GradientDef.create)
    ..pc<RegisteredGradient>(3, _omitFieldNames ? '' : 'registeredGradients', $pb.PbFieldType.PM, subBuilder: RegisteredGradient.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  FunctionDefLibrary clone() => FunctionDefLibrary()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  FunctionDefLibrary copyWith(void Function(FunctionDefLibrary) updates) => super.copyWith((message) => updates(message as FunctionDefLibrary)) as FunctionDefLibrary;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static FunctionDefLibrary create() => FunctionDefLibrary._();
  FunctionDefLibrary createEmptyInstance() => create();
  static $pb.PbList<FunctionDefLibrary> createRepeated() => $pb.PbList<FunctionDefLibrary>();
  @$core.pragma('dart2js:noInline')
  static FunctionDefLibrary getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<FunctionDefLibrary>(create);
  static FunctionDefLibrary? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<FunctionDef> get function => $_getList(0);

  @$pb.TagNumber(2)
  $pb.PbList<GradientDef> get gradient => $_getList(1);

  @$pb.TagNumber(3)
  $pb.PbList<RegisteredGradient> get registeredGradients => $_getList(2);
}

/// Attributes for function arguments. These attributes are the same set of
/// valid attributes as to _Arg nodes.
class FunctionDef_ArgAttrs extends $pb.GeneratedMessage {
  factory FunctionDef_ArgAttrs({
    $pb.PbMap<$core.String, $2.AttrValue>? attr,
  }) {
    final $result = create();
    if (attr != null) {
      $result.attr.addAll(attr);
    }
    return $result;
  }
  FunctionDef_ArgAttrs._() : super();
  factory FunctionDef_ArgAttrs.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory FunctionDef_ArgAttrs.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'FunctionDef.ArgAttrs', package: const $pb.PackageName(_omitMessageNames ? '' : 'tensorflow'), createEmptyInstance: create)
    ..m<$core.String, $2.AttrValue>(1, _omitFieldNames ? '' : 'attr', entryClassName: 'FunctionDef.ArgAttrs.AttrEntry', keyFieldType: $pb.PbFieldType.OS, valueFieldType: $pb.PbFieldType.OM, valueCreator: $2.AttrValue.create, valueDefaultOrMaker: $2.AttrValue.getDefault, packageName: const $pb.PackageName('tensorflow'))
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  FunctionDef_ArgAttrs clone() => FunctionDef_ArgAttrs()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  FunctionDef_ArgAttrs copyWith(void Function(FunctionDef_ArgAttrs) updates) => super.copyWith((message) => updates(message as FunctionDef_ArgAttrs)) as FunctionDef_ArgAttrs;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static FunctionDef_ArgAttrs create() => FunctionDef_ArgAttrs._();
  FunctionDef_ArgAttrs createEmptyInstance() => create();
  static $pb.PbList<FunctionDef_ArgAttrs> createRepeated() => $pb.PbList<FunctionDef_ArgAttrs>();
  @$core.pragma('dart2js:noInline')
  static FunctionDef_ArgAttrs getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<FunctionDef_ArgAttrs>(create);
  static FunctionDef_ArgAttrs? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbMap<$core.String, $2.AttrValue> get attr => $_getMap(0);
}

///  A function can be instantiated when the runtime can bind every attr
///  with a value. When a GraphDef has a call to a function, it must
///  have binding for every attr defined in the signature.
///
///  TODO(zhifengc):
///    * device spec, etc.
class FunctionDef extends $pb.GeneratedMessage {
  factory FunctionDef({
    $0.OpDef? signature,
    $core.Iterable<$1.NodeDef>? nodeDef,
    $pb.PbMap<$core.String, $core.String>? ret,
    $pb.PbMap<$core.String, $2.AttrValue>? attr,
    $pb.PbMap<$core.String, $core.String>? controlRet,
    $pb.PbMap<$core.int, FunctionDef_ArgAttrs>? argAttr,
    $pb.PbMap<$core.int, $core.int>? resourceArgUniqueId,
  }) {
    final $result = create();
    if (signature != null) {
      $result.signature = signature;
    }
    if (nodeDef != null) {
      $result.nodeDef.addAll(nodeDef);
    }
    if (ret != null) {
      $result.ret.addAll(ret);
    }
    if (attr != null) {
      $result.attr.addAll(attr);
    }
    if (controlRet != null) {
      $result.controlRet.addAll(controlRet);
    }
    if (argAttr != null) {
      $result.argAttr.addAll(argAttr);
    }
    if (resourceArgUniqueId != null) {
      $result.resourceArgUniqueId.addAll(resourceArgUniqueId);
    }
    return $result;
  }
  FunctionDef._() : super();
  factory FunctionDef.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory FunctionDef.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'FunctionDef', package: const $pb.PackageName(_omitMessageNames ? '' : 'tensorflow'), createEmptyInstance: create)
    ..aOM<$0.OpDef>(1, _omitFieldNames ? '' : 'signature', subBuilder: $0.OpDef.create)
    ..pc<$1.NodeDef>(3, _omitFieldNames ? '' : 'nodeDef', $pb.PbFieldType.PM, subBuilder: $1.NodeDef.create)
    ..m<$core.String, $core.String>(4, _omitFieldNames ? '' : 'ret', entryClassName: 'FunctionDef.RetEntry', keyFieldType: $pb.PbFieldType.OS, valueFieldType: $pb.PbFieldType.OS, packageName: const $pb.PackageName('tensorflow'))
    ..m<$core.String, $2.AttrValue>(5, _omitFieldNames ? '' : 'attr', entryClassName: 'FunctionDef.AttrEntry', keyFieldType: $pb.PbFieldType.OS, valueFieldType: $pb.PbFieldType.OM, valueCreator: $2.AttrValue.create, valueDefaultOrMaker: $2.AttrValue.getDefault, packageName: const $pb.PackageName('tensorflow'))
    ..m<$core.String, $core.String>(6, _omitFieldNames ? '' : 'controlRet', entryClassName: 'FunctionDef.ControlRetEntry', keyFieldType: $pb.PbFieldType.OS, valueFieldType: $pb.PbFieldType.OS, packageName: const $pb.PackageName('tensorflow'))
    ..m<$core.int, FunctionDef_ArgAttrs>(7, _omitFieldNames ? '' : 'argAttr', entryClassName: 'FunctionDef.ArgAttrEntry', keyFieldType: $pb.PbFieldType.OU3, valueFieldType: $pb.PbFieldType.OM, valueCreator: FunctionDef_ArgAttrs.create, valueDefaultOrMaker: FunctionDef_ArgAttrs.getDefault, packageName: const $pb.PackageName('tensorflow'))
    ..m<$core.int, $core.int>(8, _omitFieldNames ? '' : 'resourceArgUniqueId', entryClassName: 'FunctionDef.ResourceArgUniqueIdEntry', keyFieldType: $pb.PbFieldType.OU3, valueFieldType: $pb.PbFieldType.OU3, packageName: const $pb.PackageName('tensorflow'))
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  FunctionDef clone() => FunctionDef()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  FunctionDef copyWith(void Function(FunctionDef) updates) => super.copyWith((message) => updates(message as FunctionDef)) as FunctionDef;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static FunctionDef create() => FunctionDef._();
  FunctionDef createEmptyInstance() => create();
  static $pb.PbList<FunctionDef> createRepeated() => $pb.PbList<FunctionDef>();
  @$core.pragma('dart2js:noInline')
  static FunctionDef getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<FunctionDef>(create);
  static FunctionDef? _defaultInstance;

  /// The definition of the function's name, arguments, return values,
  /// attrs etc.
  @$pb.TagNumber(1)
  $0.OpDef get signature => $_getN(0);
  @$pb.TagNumber(1)
  set signature($0.OpDef v) { $_setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasSignature() => $_has(0);
  @$pb.TagNumber(1)
  void clearSignature() => $_clearField(1);
  @$pb.TagNumber(1)
  $0.OpDef ensureSignature() => $_ensure(0);

  /// By convention, "op" in node_def is resolved by consulting with a
  /// user-defined library first. If not resolved, "func" is assumed to
  /// be a builtin op.
  @$pb.TagNumber(3)
  $pb.PbList<$1.NodeDef> get nodeDef => $_getList(1);

  /// A mapping from the output arg names from `signature` to the
  /// outputs from `node_def` that should be returned by the function.
  @$pb.TagNumber(4)
  $pb.PbMap<$core.String, $core.String> get ret => $_getMap(2);

  /// Attributes specific to this function definition.
  @$pb.TagNumber(5)
  $pb.PbMap<$core.String, $2.AttrValue> get attr => $_getMap(3);

  /// A mapping from control output names from `signature` to node names in
  /// `node_def` which should be control outputs of this function.
  @$pb.TagNumber(6)
  $pb.PbMap<$core.String, $core.String> get controlRet => $_getMap(4);

  @$pb.TagNumber(7)
  $pb.PbMap<$core.int, FunctionDef_ArgAttrs> get argAttr => $_getMap(5);

  ///  Unique IDs for each resource argument, used to track aliasing resources. If
  ///  Argument A and Argument B alias each other, then
  ///  resource_arg_unique_ids[A.index] == resource_arg_unique_ids[B.index].
  ///
  ///  If this field is empty, none of the arguments could alias; otherwise, every
  ///  resource argument should have an entry in this field.
  ///
  ///  When instantiated, the unique IDs will be attached to the _Arg nodes'
  ///  "_resource_arg_unique_id" attribute.
  @$pb.TagNumber(8)
  $pb.PbMap<$core.int, $core.int> get resourceArgUniqueId => $_getMap(6);
}

///  GradientDef defines the gradient function of a function defined in
///  a function library.
///
///  A gradient function g (specified by gradient_func) for a function f
///  (specified by function_name) must follow the following:
///
///  The function 'f' must be a numerical function which takes N inputs
///  and produces M outputs. Its gradient function 'g', which is a
///  function taking N + M inputs and produces N outputs.
///
///  I.e. if we have
///     (y1, y2, ..., y_M) = f(x1, x2, ..., x_N),
///  then, g is
///     (dL/dx1, dL/dx2, ..., dL/dx_N) = g(x1, x2, ..., x_N,
///                                       dL/dy1, dL/dy2, ..., dL/dy_M),
///  where L is a scalar-value function of (x1, x2, ..., xN) (e.g., the
///  loss function). dL/dx_i is the partial derivative of L with respect
///  to x_i.
class GradientDef extends $pb.GeneratedMessage {
  factory GradientDef({
    $core.String? functionName,
    $core.String? gradientFunc,
  }) {
    final $result = create();
    if (functionName != null) {
      $result.functionName = functionName;
    }
    if (gradientFunc != null) {
      $result.gradientFunc = gradientFunc;
    }
    return $result;
  }
  GradientDef._() : super();
  factory GradientDef.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GradientDef.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GradientDef', package: const $pb.PackageName(_omitMessageNames ? '' : 'tensorflow'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'functionName')
    ..aOS(2, _omitFieldNames ? '' : 'gradientFunc')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GradientDef clone() => GradientDef()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GradientDef copyWith(void Function(GradientDef) updates) => super.copyWith((message) => updates(message as GradientDef)) as GradientDef;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GradientDef create() => GradientDef._();
  GradientDef createEmptyInstance() => create();
  static $pb.PbList<GradientDef> createRepeated() => $pb.PbList<GradientDef>();
  @$core.pragma('dart2js:noInline')
  static GradientDef getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GradientDef>(create);
  static GradientDef? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get functionName => $_getSZ(0);
  @$pb.TagNumber(1)
  set functionName($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasFunctionName() => $_has(0);
  @$pb.TagNumber(1)
  void clearFunctionName() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get gradientFunc => $_getSZ(1);
  @$pb.TagNumber(2)
  set gradientFunc($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasGradientFunc() => $_has(1);
  @$pb.TagNumber(2)
  void clearGradientFunc() => $_clearField(2);
}

/// RegisteredGradient stores a gradient function that is registered in the
/// gradients library and used in the ops of a function in the function library.
/// Unlike GradientDef, these gradients are identified by op type, and not
/// directly linked to any function.
class RegisteredGradient extends $pb.GeneratedMessage {
  factory RegisteredGradient({
    $core.String? gradientFunc,
    $core.String? registeredOpType,
  }) {
    final $result = create();
    if (gradientFunc != null) {
      $result.gradientFunc = gradientFunc;
    }
    if (registeredOpType != null) {
      $result.registeredOpType = registeredOpType;
    }
    return $result;
  }
  RegisteredGradient._() : super();
  factory RegisteredGradient.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RegisteredGradient.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'RegisteredGradient', package: const $pb.PackageName(_omitMessageNames ? '' : 'tensorflow'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'gradientFunc')
    ..aOS(2, _omitFieldNames ? '' : 'registeredOpType')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RegisteredGradient clone() => RegisteredGradient()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RegisteredGradient copyWith(void Function(RegisteredGradient) updates) => super.copyWith((message) => updates(message as RegisteredGradient)) as RegisteredGradient;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RegisteredGradient create() => RegisteredGradient._();
  RegisteredGradient createEmptyInstance() => create();
  static $pb.PbList<RegisteredGradient> createRepeated() => $pb.PbList<RegisteredGradient>();
  @$core.pragma('dart2js:noInline')
  static RegisteredGradient getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RegisteredGradient>(create);
  static RegisteredGradient? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get gradientFunc => $_getSZ(0);
  @$pb.TagNumber(1)
  set gradientFunc($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasGradientFunc() => $_has(0);
  @$pb.TagNumber(1)
  void clearGradientFunc() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get registeredOpType => $_getSZ(1);
  @$pb.TagNumber(2)
  set registeredOpType($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasRegisteredOpType() => $_has(1);
  @$pb.TagNumber(2)
  void clearRegisteredOpType() => $_clearField(2);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
