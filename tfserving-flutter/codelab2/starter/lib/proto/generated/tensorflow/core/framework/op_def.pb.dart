//
//  Generated code. Do not modify.
//  source: tensorflow/core/framework/op_def.proto
//
// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import 'attr_value.pb.dart' as $2;
import 'full_type.pb.dart' as $1;
import 'resource_handle.pb.dart' as $0;
import 'types.pbenum.dart' as $3;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

/// For describing inputs and outputs.
class OpDef_ArgDef extends $pb.GeneratedMessage {
  factory OpDef_ArgDef({
    $core.String? name,
    $core.String? description,
    $3.DataType? type,
    $core.String? typeAttr,
    $core.String? numberAttr,
    $core.String? typeListAttr,
    $core.Iterable<$0.ResourceHandleProto_DtypeAndShape>? handleData,
    $core.bool? isRef,
    $1.FullTypeDef? experimentalFullType,
  }) {
    final $result = create();
    if (name != null) {
      $result.name = name;
    }
    if (description != null) {
      $result.description = description;
    }
    if (type != null) {
      $result.type = type;
    }
    if (typeAttr != null) {
      $result.typeAttr = typeAttr;
    }
    if (numberAttr != null) {
      $result.numberAttr = numberAttr;
    }
    if (typeListAttr != null) {
      $result.typeListAttr = typeListAttr;
    }
    if (handleData != null) {
      $result.handleData.addAll(handleData);
    }
    if (isRef != null) {
      $result.isRef = isRef;
    }
    if (experimentalFullType != null) {
      $result.experimentalFullType = experimentalFullType;
    }
    return $result;
  }
  OpDef_ArgDef._() : super();
  factory OpDef_ArgDef.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory OpDef_ArgDef.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'OpDef.ArgDef',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'tensorflow'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'name')
    ..aOS(2, _omitFieldNames ? '' : 'description')
    ..e<$3.DataType>(3, _omitFieldNames ? '' : 'type', $pb.PbFieldType.OE,
        defaultOrMaker: $3.DataType.DT_INVALID,
        valueOf: $3.DataType.valueOf,
        enumValues: $3.DataType.values)
    ..aOS(4, _omitFieldNames ? '' : 'typeAttr')
    ..aOS(5, _omitFieldNames ? '' : 'numberAttr')
    ..aOS(6, _omitFieldNames ? '' : 'typeListAttr')
    ..pc<$0.ResourceHandleProto_DtypeAndShape>(
        7, _omitFieldNames ? '' : 'handleData', $pb.PbFieldType.PM,
        subBuilder: $0.ResourceHandleProto_DtypeAndShape.create)
    ..aOB(16, _omitFieldNames ? '' : 'isRef')
    ..aOM<$1.FullTypeDef>(17, _omitFieldNames ? '' : 'experimentalFullType',
        subBuilder: $1.FullTypeDef.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  OpDef_ArgDef clone() => OpDef_ArgDef()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  OpDef_ArgDef copyWith(void Function(OpDef_ArgDef) updates) =>
      super.copyWith((message) => updates(message as OpDef_ArgDef))
          as OpDef_ArgDef;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static OpDef_ArgDef create() => OpDef_ArgDef._();
  OpDef_ArgDef createEmptyInstance() => create();
  static $pb.PbList<OpDef_ArgDef> createRepeated() =>
      $pb.PbList<OpDef_ArgDef>();
  @$core.pragma('dart2js:noInline')
  static OpDef_ArgDef getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<OpDef_ArgDef>(create);
  static OpDef_ArgDef? _defaultInstance;

  /// Name for the input/output.  Should match the regexp "[a-z][a-z0-9_]*".
  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => $_clearField(1);

  /// Human readable description.
  @$pb.TagNumber(2)
  $core.String get description => $_getSZ(1);
  @$pb.TagNumber(2)
  set description($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasDescription() => $_has(1);
  @$pb.TagNumber(2)
  void clearDescription() => $_clearField(2);

  /// Describes the type of one or more tensors that are accepted/produced
  /// by this input/output arg.  The only legal combinations are:
  /// * For a single tensor: either the "type" field is set or the
  ///   "type_attr" field is set to the name of an attr with type "type".
  /// * For a sequence of tensors with the same type: the "number_attr"
  ///   field will be set to the name of an attr with type "int", and
  ///   either the "type" or "type_attr" field will be set as for
  ///   single tensors.
  /// * For a sequence of tensors, the "type_list_attr" field will be set
  ///   to the name of an attr with type "list(type)".
  @$pb.TagNumber(3)
  $3.DataType get type => $_getN(2);
  @$pb.TagNumber(3)
  set type($3.DataType v) {
    $_setField(3, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasType() => $_has(2);
  @$pb.TagNumber(3)
  void clearType() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.String get typeAttr => $_getSZ(3);
  @$pb.TagNumber(4)
  set typeAttr($core.String v) {
    $_setString(3, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasTypeAttr() => $_has(3);
  @$pb.TagNumber(4)
  void clearTypeAttr() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.String get numberAttr => $_getSZ(4);
  @$pb.TagNumber(5)
  set numberAttr($core.String v) {
    $_setString(4, v);
  }

  @$pb.TagNumber(5)
  $core.bool hasNumberAttr() => $_has(4);
  @$pb.TagNumber(5)
  void clearNumberAttr() => $_clearField(5);

  /// If specified, attr must have type "list(type)", and none of
  /// type, type_attr, and number_attr may be specified.
  @$pb.TagNumber(6)
  $core.String get typeListAttr => $_getSZ(5);
  @$pb.TagNumber(6)
  set typeListAttr($core.String v) {
    $_setString(5, v);
  }

  @$pb.TagNumber(6)
  $core.bool hasTypeListAttr() => $_has(5);
  @$pb.TagNumber(6)
  void clearTypeListAttr() => $_clearField(6);

  /// The handle data for resource inputs.
  @$pb.TagNumber(7)
  $pb.PbList<$0.ResourceHandleProto_DtypeAndShape> get handleData =>
      $_getList(6);

  /// For inputs: if true, the inputs are required to be refs.
  ///   By default, inputs can be either refs or non-refs.
  /// For outputs: if true, outputs are refs, otherwise they are not.
  @$pb.TagNumber(16)
  $core.bool get isRef => $_getBF(7);
  @$pb.TagNumber(16)
  set isRef($core.bool v) {
    $_setBool(7, v);
  }

  @$pb.TagNumber(16)
  $core.bool hasIsRef() => $_has(7);
  @$pb.TagNumber(16)
  void clearIsRef() => $_clearField(16);

  ///  Experimental. Full type declaration for this argument.
  ///  The full type specification combines type, type_attr, type_list_attr,
  ///  etc. into a unified representation.
  ///  This declaration may contain non-concrete types (for example,
  ///  Tensor<TypeVar<'T'>> is a valid type declaration.
  ///
  ///  Note: this is a transient field. The long-term aim is to represent the
  ///  entire OpDef as a single type: a callable. In that context, this field is
  ///  just the type of a single argument.
  @$pb.TagNumber(17)
  $1.FullTypeDef get experimentalFullType => $_getN(8);
  @$pb.TagNumber(17)
  set experimentalFullType($1.FullTypeDef v) {
    $_setField(17, v);
  }

  @$pb.TagNumber(17)
  $core.bool hasExperimentalFullType() => $_has(8);
  @$pb.TagNumber(17)
  void clearExperimentalFullType() => $_clearField(17);
  @$pb.TagNumber(17)
  $1.FullTypeDef ensureExperimentalFullType() => $_ensure(8);
}

/// Description of the graph-construction-time configuration of this
/// Op.  That is to say, this describes the attr fields that will
/// be specified in the NodeDef.
class OpDef_AttrDef extends $pb.GeneratedMessage {
  factory OpDef_AttrDef({
    $core.String? name,
    $core.String? type,
    $2.AttrValue? defaultValue,
    $core.String? description,
    $core.bool? hasMinimum,
    $fixnum.Int64? minimum_6,
    $2.AttrValue? allowedValues,
  }) {
    final $result = create();
    if (name != null) {
      $result.name = name;
    }
    if (type != null) {
      $result.type = type;
    }
    if (defaultValue != null) {
      $result.defaultValue = defaultValue;
    }
    if (description != null) {
      $result.description = description;
    }
    if (hasMinimum != null) {
      $result.hasMinimum = hasMinimum;
    }
    if (minimum_6 != null) {
      $result.minimum_6 = minimum_6;
    }
    if (allowedValues != null) {
      $result.allowedValues = allowedValues;
    }
    return $result;
  }
  OpDef_AttrDef._() : super();
  factory OpDef_AttrDef.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory OpDef_AttrDef.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'OpDef.AttrDef',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'tensorflow'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'name')
    ..aOS(2, _omitFieldNames ? '' : 'type')
    ..aOM<$2.AttrValue>(3, _omitFieldNames ? '' : 'defaultValue',
        subBuilder: $2.AttrValue.create)
    ..aOS(4, _omitFieldNames ? '' : 'description')
    ..aOB(5, _omitFieldNames ? '' : 'hasMinimum')
    ..aInt64(6, _omitFieldNames ? '' : 'minimum')
    ..aOM<$2.AttrValue>(7, _omitFieldNames ? '' : 'allowedValues',
        subBuilder: $2.AttrValue.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  OpDef_AttrDef clone() => OpDef_AttrDef()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  OpDef_AttrDef copyWith(void Function(OpDef_AttrDef) updates) =>
      super.copyWith((message) => updates(message as OpDef_AttrDef))
          as OpDef_AttrDef;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static OpDef_AttrDef create() => OpDef_AttrDef._();
  OpDef_AttrDef createEmptyInstance() => create();
  static $pb.PbList<OpDef_AttrDef> createRepeated() =>
      $pb.PbList<OpDef_AttrDef>();
  @$core.pragma('dart2js:noInline')
  static OpDef_AttrDef getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<OpDef_AttrDef>(create);
  static OpDef_AttrDef? _defaultInstance;

  /// A descriptive name for the argument.  May be used, e.g. by the
  /// Python client, as a keyword argument name, and so should match
  /// the regexp "[a-z][a-z0-9_]+".
  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => $_clearField(1);

  /// One of the type names from attr_value.proto ("string", "list(string)",
  /// "int", etc.).
  @$pb.TagNumber(2)
  $core.String get type => $_getSZ(1);
  @$pb.TagNumber(2)
  set type($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasType() => $_has(1);
  @$pb.TagNumber(2)
  void clearType() => $_clearField(2);

  /// A reasonable default for this attribute if the user does not supply
  /// a value.  If not specified, the user must supply a value.
  @$pb.TagNumber(3)
  $2.AttrValue get defaultValue => $_getN(2);
  @$pb.TagNumber(3)
  set defaultValue($2.AttrValue v) {
    $_setField(3, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasDefaultValue() => $_has(2);
  @$pb.TagNumber(3)
  void clearDefaultValue() => $_clearField(3);
  @$pb.TagNumber(3)
  $2.AttrValue ensureDefaultValue() => $_ensure(2);

  /// Human-readable description.
  @$pb.TagNumber(4)
  $core.String get description => $_getSZ(3);
  @$pb.TagNumber(4)
  set description($core.String v) {
    $_setString(3, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasDescription() => $_has(3);
  @$pb.TagNumber(4)
  void clearDescription() => $_clearField(4);

  /// For type == "int", this is a minimum value.  For "list(___)"
  /// types, this is the minimum length.
  @$pb.TagNumber(5)
  $core.bool get hasMinimum => $_getBF(4);
  @$pb.TagNumber(5)
  set hasMinimum($core.bool v) {
    $_setBool(4, v);
  }

  @$pb.TagNumber(5)
  $core.bool hasHasMinimum() => $_has(4);
  @$pb.TagNumber(5)
  void clearHasMinimum() => $_clearField(5);

  @$pb.TagNumber(6)
  $fixnum.Int64 get minimum_6 => $_getI64(5);
  @$pb.TagNumber(6)
  set minimum_6($fixnum.Int64 v) {
    $_setInt64(5, v);
  }

  @$pb.TagNumber(6)
  $core.bool hasMinimum_6() => $_has(5);
  @$pb.TagNumber(6)
  void clearMinimum_6() => $_clearField(6);

  /// The set of allowed values.  Has type that is the "list" version
  /// of the "type" field above (uses the "list" field of AttrValue).
  /// If type == "type" or "list(type)" above, then the "type" field
  /// of "allowed_values.list" has the set of allowed DataTypes.
  /// If type == "string" or "list(string)", then the "s" field of
  /// "allowed_values.list" has the set of allowed strings.
  @$pb.TagNumber(7)
  $2.AttrValue get allowedValues => $_getN(6);
  @$pb.TagNumber(7)
  set allowedValues($2.AttrValue v) {
    $_setField(7, v);
  }

  @$pb.TagNumber(7)
  $core.bool hasAllowedValues() => $_has(6);
  @$pb.TagNumber(7)
  void clearAllowedValues() => $_clearField(7);
  @$pb.TagNumber(7)
  $2.AttrValue ensureAllowedValues() => $_ensure(6);
}

/// Defines an operation. A NodeDef in a GraphDef specifies an Op by
/// using the "op" field which should match the name of a OpDef.
/// LINT.IfChange
class OpDef extends $pb.GeneratedMessage {
  factory OpDef({
    $core.String? name,
    $core.Iterable<OpDef_ArgDef>? inputArg,
    $core.Iterable<OpDef_ArgDef>? outputArg,
    $core.Iterable<OpDef_AttrDef>? attr,
    $core.String? summary,
    $core.String? description,
    OpDeprecation? deprecation,
    $core.bool? isAggregate,
    $core.bool? isStateful,
    $core.bool? isCommutative,
    $core.bool? allowsUninitializedInput,
    $core.Iterable<$core.String>? controlOutput,
    $core.bool? isDistributedCommunication,
  }) {
    final $result = create();
    if (name != null) {
      $result.name = name;
    }
    if (inputArg != null) {
      $result.inputArg.addAll(inputArg);
    }
    if (outputArg != null) {
      $result.outputArg.addAll(outputArg);
    }
    if (attr != null) {
      $result.attr.addAll(attr);
    }
    if (summary != null) {
      $result.summary = summary;
    }
    if (description != null) {
      $result.description = description;
    }
    if (deprecation != null) {
      $result.deprecation = deprecation;
    }
    if (isAggregate != null) {
      $result.isAggregate = isAggregate;
    }
    if (isStateful != null) {
      $result.isStateful = isStateful;
    }
    if (isCommutative != null) {
      $result.isCommutative = isCommutative;
    }
    if (allowsUninitializedInput != null) {
      $result.allowsUninitializedInput = allowsUninitializedInput;
    }
    if (controlOutput != null) {
      $result.controlOutput.addAll(controlOutput);
    }
    if (isDistributedCommunication != null) {
      $result.isDistributedCommunication = isDistributedCommunication;
    }
    return $result;
  }
  OpDef._() : super();
  factory OpDef.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory OpDef.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'OpDef',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'tensorflow'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'name')
    ..pc<OpDef_ArgDef>(2, _omitFieldNames ? '' : 'inputArg', $pb.PbFieldType.PM,
        subBuilder: OpDef_ArgDef.create)
    ..pc<OpDef_ArgDef>(
        3, _omitFieldNames ? '' : 'outputArg', $pb.PbFieldType.PM,
        subBuilder: OpDef_ArgDef.create)
    ..pc<OpDef_AttrDef>(4, _omitFieldNames ? '' : 'attr', $pb.PbFieldType.PM,
        subBuilder: OpDef_AttrDef.create)
    ..aOS(5, _omitFieldNames ? '' : 'summary')
    ..aOS(6, _omitFieldNames ? '' : 'description')
    ..aOM<OpDeprecation>(8, _omitFieldNames ? '' : 'deprecation',
        subBuilder: OpDeprecation.create)
    ..aOB(16, _omitFieldNames ? '' : 'isAggregate')
    ..aOB(17, _omitFieldNames ? '' : 'isStateful')
    ..aOB(18, _omitFieldNames ? '' : 'isCommutative')
    ..aOB(19, _omitFieldNames ? '' : 'allowsUninitializedInput')
    ..pPS(20, _omitFieldNames ? '' : 'controlOutput')
    ..aOB(21, _omitFieldNames ? '' : 'isDistributedCommunication')
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  OpDef clone() => OpDef()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  OpDef copyWith(void Function(OpDef) updates) =>
      super.copyWith((message) => updates(message as OpDef)) as OpDef;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static OpDef create() => OpDef._();
  OpDef createEmptyInstance() => create();
  static $pb.PbList<OpDef> createRepeated() => $pb.PbList<OpDef>();
  @$core.pragma('dart2js:noInline')
  static OpDef getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<OpDef>(create);
  static OpDef? _defaultInstance;

  /// Op names starting with an underscore are reserved for internal use.
  /// Names should be CamelCase and match the regexp "[A-Z][a-zA-Z0-9>_]*".
  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => $_clearField(1);

  /// Description of the input(s).
  @$pb.TagNumber(2)
  $pb.PbList<OpDef_ArgDef> get inputArg => $_getList(1);

  /// Description of the output(s).
  @$pb.TagNumber(3)
  $pb.PbList<OpDef_ArgDef> get outputArg => $_getList(2);

  @$pb.TagNumber(4)
  $pb.PbList<OpDef_AttrDef> get attr => $_getList(3);

  /// One-line human-readable description of what the Op does.
  @$pb.TagNumber(5)
  $core.String get summary => $_getSZ(4);
  @$pb.TagNumber(5)
  set summary($core.String v) {
    $_setString(4, v);
  }

  @$pb.TagNumber(5)
  $core.bool hasSummary() => $_has(4);
  @$pb.TagNumber(5)
  void clearSummary() => $_clearField(5);

  /// Additional, longer human-readable description of what the Op does.
  @$pb.TagNumber(6)
  $core.String get description => $_getSZ(5);
  @$pb.TagNumber(6)
  set description($core.String v) {
    $_setString(5, v);
  }

  @$pb.TagNumber(6)
  $core.bool hasDescription() => $_has(5);
  @$pb.TagNumber(6)
  void clearDescription() => $_clearField(6);

  /// Optional deprecation based on GraphDef versions.
  @$pb.TagNumber(8)
  OpDeprecation get deprecation => $_getN(6);
  @$pb.TagNumber(8)
  set deprecation(OpDeprecation v) {
    $_setField(8, v);
  }

  @$pb.TagNumber(8)
  $core.bool hasDeprecation() => $_has(6);
  @$pb.TagNumber(8)
  void clearDeprecation() => $_clearField(8);
  @$pb.TagNumber(8)
  OpDeprecation ensureDeprecation() => $_ensure(6);

  /// If is_aggregate is true, then this operation accepts N >= 2
  /// inputs and produces 1 output all of the same type.  Should be
  /// associative and commutative, and produce output with the same
  /// shape as the input.  The optimizer may replace an aggregate op
  /// taking input from multiple devices with a tree of aggregate ops
  /// that aggregate locally within each device (and possibly within
  /// groups of nearby devices) before communicating.
  /// TODO(josh11b): Implement that optimization.
  @$pb.TagNumber(16)
  $core.bool get isAggregate => $_getBF(7);
  @$pb.TagNumber(16)
  set isAggregate($core.bool v) {
    $_setBool(7, v);
  }

  @$pb.TagNumber(16)
  $core.bool hasIsAggregate() => $_has(7);
  @$pb.TagNumber(16)
  void clearIsAggregate() => $_clearField(16);

  ///  Ops are marked as stateful if their behavior depends on some state beyond
  ///  their input tensors (e.g. variable reading op) or if they have
  ///  a side-effect (e.g. printing or asserting ops). Equivalently, stateless ops
  ///  must always produce the same output for the same input and have
  ///  no side-effects.
  ///
  ///  By default Ops may be moved between devices.  Stateful ops should
  ///  either not be moved, or should only be moved if that state can also
  ///  be moved (e.g. via some sort of save / restore).
  ///  Stateful ops are guaranteed to never be optimized away by Common
  ///  Subexpression Elimination (CSE).
  @$pb.TagNumber(17)
  $core.bool get isStateful => $_getBF(8);
  @$pb.TagNumber(17)
  set isStateful($core.bool v) {
    $_setBool(8, v);
  }

  @$pb.TagNumber(17)
  $core.bool hasIsStateful() => $_has(8);
  @$pb.TagNumber(17)
  void clearIsStateful() => $_clearField(17);

  /// True if the operation is commutative ("op(a,b) == op(b,a)" for all inputs)
  @$pb.TagNumber(18)
  $core.bool get isCommutative => $_getBF(9);
  @$pb.TagNumber(18)
  set isCommutative($core.bool v) {
    $_setBool(9, v);
  }

  @$pb.TagNumber(18)
  $core.bool hasIsCommutative() => $_has(9);
  @$pb.TagNumber(18)
  void clearIsCommutative() => $_clearField(18);

  /// By default, all inputs to an Op must be initialized Tensors.  Ops
  /// that may initialize tensors for the first time should set this
  /// field to true, to allow the Op to take an uninitialized Tensor as
  /// input.
  @$pb.TagNumber(19)
  $core.bool get allowsUninitializedInput => $_getBF(10);
  @$pb.TagNumber(19)
  set allowsUninitializedInput($core.bool v) {
    $_setBool(10, v);
  }

  @$pb.TagNumber(19)
  $core.bool hasAllowsUninitializedInput() => $_has(10);
  @$pb.TagNumber(19)
  void clearAllowsUninitializedInput() => $_clearField(19);

  /// Named control outputs for this operation. Useful only for composite
  /// operations (i.e. functions) which want to name different control outputs.
  @$pb.TagNumber(20)
  $pb.PbList<$core.String> get controlOutput => $_getList(11);

  /// Indicates whether the op implementation uses distributed communication.
  /// If True, the op is allowed to return errors for network disconnection and
  /// trigger TF network failure handling logics.
  @$pb.TagNumber(21)
  $core.bool get isDistributedCommunication => $_getBF(12);
  @$pb.TagNumber(21)
  set isDistributedCommunication($core.bool v) {
    $_setBool(12, v);
  }

  @$pb.TagNumber(21)
  $core.bool hasIsDistributedCommunication() => $_has(12);
  @$pb.TagNumber(21)
  void clearIsDistributedCommunication() => $_clearField(21);
}

/// Information about version-dependent deprecation of an op
class OpDeprecation extends $pb.GeneratedMessage {
  factory OpDeprecation({
    $core.int? version,
    $core.String? explanation,
  }) {
    final $result = create();
    if (version != null) {
      $result.version = version;
    }
    if (explanation != null) {
      $result.explanation = explanation;
    }
    return $result;
  }
  OpDeprecation._() : super();
  factory OpDeprecation.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory OpDeprecation.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'OpDeprecation',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'tensorflow'),
      createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'version', $pb.PbFieldType.O3)
    ..aOS(2, _omitFieldNames ? '' : 'explanation')
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  OpDeprecation clone() => OpDeprecation()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  OpDeprecation copyWith(void Function(OpDeprecation) updates) =>
      super.copyWith((message) => updates(message as OpDeprecation))
          as OpDeprecation;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static OpDeprecation create() => OpDeprecation._();
  OpDeprecation createEmptyInstance() => create();
  static $pb.PbList<OpDeprecation> createRepeated() =>
      $pb.PbList<OpDeprecation>();
  @$core.pragma('dart2js:noInline')
  static OpDeprecation getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<OpDeprecation>(create);
  static OpDeprecation? _defaultInstance;

  /// First GraphDef version at which the op is disallowed.
  @$pb.TagNumber(1)
  $core.int get version => $_getIZ(0);
  @$pb.TagNumber(1)
  set version($core.int v) {
    $_setSignedInt32(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasVersion() => $_has(0);
  @$pb.TagNumber(1)
  void clearVersion() => $_clearField(1);

  /// Explanation of why it was deprecated and what to use instead.
  @$pb.TagNumber(2)
  $core.String get explanation => $_getSZ(1);
  @$pb.TagNumber(2)
  set explanation($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasExplanation() => $_has(1);
  @$pb.TagNumber(2)
  void clearExplanation() => $_clearField(2);
}

/// A collection of OpDefs
class OpList extends $pb.GeneratedMessage {
  factory OpList({
    $core.Iterable<OpDef>? op,
  }) {
    final $result = create();
    if (op != null) {
      $result.op.addAll(op);
    }
    return $result;
  }
  OpList._() : super();
  factory OpList.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory OpList.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'OpList',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'tensorflow'),
      createEmptyInstance: create)
    ..pc<OpDef>(1, _omitFieldNames ? '' : 'op', $pb.PbFieldType.PM,
        subBuilder: OpDef.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  OpList clone() => OpList()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  OpList copyWith(void Function(OpList) updates) =>
      super.copyWith((message) => updates(message as OpList)) as OpList;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static OpList create() => OpList._();
  OpList createEmptyInstance() => create();
  static $pb.PbList<OpList> createRepeated() => $pb.PbList<OpList>();
  @$core.pragma('dart2js:noInline')
  static OpList getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<OpList>(create);
  static OpList? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<OpDef> get op => $_getList(0);
}

const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
