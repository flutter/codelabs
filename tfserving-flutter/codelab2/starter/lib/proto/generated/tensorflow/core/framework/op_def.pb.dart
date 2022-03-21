///
//  Generated code. Do not modify.
//  source: tensorflow/core/framework/op_def.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import 'resource_handle.pb.dart' as $0;
import 'full_type.pb.dart' as $1;
import 'attr_value.pb.dart' as $2;

import 'types.pbenum.dart' as $3;

class OpDef_ArgDef extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'OpDef.ArgDef',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'tensorflow'),
      createEmptyInstance: create)
    ..aOS(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'name')
    ..aOS(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'description')
    ..e<$3.DataType>(
        3,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'type',
        $pb.PbFieldType.OE,
        defaultOrMaker: $3.DataType.DT_INVALID,
        valueOf: $3.DataType.valueOf,
        enumValues: $3.DataType.values)
    ..aOS(
        4,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'typeAttr')
    ..aOS(
        5,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'numberAttr')
    ..aOS(
        6,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'typeListAttr')
    ..pc<$0.ResourceHandleProto_DtypeAndShape>(
        7,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'handleData',
        $pb.PbFieldType.PM,
        subBuilder: $0.ResourceHandleProto_DtypeAndShape.create)
    ..aOB(
        16,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'isRef')
    ..aOM<$1.FullTypeDef>(
        17,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'experimentalFullType',
        subBuilder: $1.FullTypeDef.create)
    ..hasRequiredFields = false;

  OpDef_ArgDef._() : super();
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
    final _result = create();
    if (name != null) {
      _result.name = name;
    }
    if (description != null) {
      _result.description = description;
    }
    if (type != null) {
      _result.type = type;
    }
    if (typeAttr != null) {
      _result.typeAttr = typeAttr;
    }
    if (numberAttr != null) {
      _result.numberAttr = numberAttr;
    }
    if (typeListAttr != null) {
      _result.typeListAttr = typeListAttr;
    }
    if (handleData != null) {
      _result.handleData.addAll(handleData);
    }
    if (isRef != null) {
      _result.isRef = isRef;
    }
    if (experimentalFullType != null) {
      _result.experimentalFullType = experimentalFullType;
    }
    return _result;
  }
  factory OpDef_ArgDef.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory OpDef_ArgDef.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  OpDef_ArgDef clone() => OpDef_ArgDef()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  OpDef_ArgDef copyWith(void Function(OpDef_ArgDef) updates) =>
      super.copyWith((message) => updates(message as OpDef_ArgDef))
          as OpDef_ArgDef; // ignore: deprecated_member_use
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

  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get description => $_getSZ(1);
  @$pb.TagNumber(2)
  set description($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasDescription() => $_has(1);
  @$pb.TagNumber(2)
  void clearDescription() => clearField(2);

  @$pb.TagNumber(3)
  $3.DataType get type => $_getN(2);
  @$pb.TagNumber(3)
  set type($3.DataType v) {
    setField(3, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasType() => $_has(2);
  @$pb.TagNumber(3)
  void clearType() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get typeAttr => $_getSZ(3);
  @$pb.TagNumber(4)
  set typeAttr($core.String v) {
    $_setString(3, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasTypeAttr() => $_has(3);
  @$pb.TagNumber(4)
  void clearTypeAttr() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get numberAttr => $_getSZ(4);
  @$pb.TagNumber(5)
  set numberAttr($core.String v) {
    $_setString(4, v);
  }

  @$pb.TagNumber(5)
  $core.bool hasNumberAttr() => $_has(4);
  @$pb.TagNumber(5)
  void clearNumberAttr() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get typeListAttr => $_getSZ(5);
  @$pb.TagNumber(6)
  set typeListAttr($core.String v) {
    $_setString(5, v);
  }

  @$pb.TagNumber(6)
  $core.bool hasTypeListAttr() => $_has(5);
  @$pb.TagNumber(6)
  void clearTypeListAttr() => clearField(6);

  @$pb.TagNumber(7)
  $core.List<$0.ResourceHandleProto_DtypeAndShape> get handleData =>
      $_getList(6);

  @$pb.TagNumber(16)
  $core.bool get isRef => $_getBF(7);
  @$pb.TagNumber(16)
  set isRef($core.bool v) {
    $_setBool(7, v);
  }

  @$pb.TagNumber(16)
  $core.bool hasIsRef() => $_has(7);
  @$pb.TagNumber(16)
  void clearIsRef() => clearField(16);

  @$pb.TagNumber(17)
  $1.FullTypeDef get experimentalFullType => $_getN(8);
  @$pb.TagNumber(17)
  set experimentalFullType($1.FullTypeDef v) {
    setField(17, v);
  }

  @$pb.TagNumber(17)
  $core.bool hasExperimentalFullType() => $_has(8);
  @$pb.TagNumber(17)
  void clearExperimentalFullType() => clearField(17);
  @$pb.TagNumber(17)
  $1.FullTypeDef ensureExperimentalFullType() => $_ensure(8);
}

class OpDef_AttrDef extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'OpDef.AttrDef',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'tensorflow'),
      createEmptyInstance: create)
    ..aOS(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'name')
    ..aOS(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'type')
    ..aOM<$2.AttrValue>(
        3,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'defaultValue',
        subBuilder: $2.AttrValue.create)
    ..aOS(
        4,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'description')
    ..aOB(
        5,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'hasMinimum')
    ..aInt64(
        6,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'minimum')
    ..aOM<$2.AttrValue>(
        7,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'allowedValues',
        subBuilder: $2.AttrValue.create)
    ..hasRequiredFields = false;

  OpDef_AttrDef._() : super();
  factory OpDef_AttrDef({
    $core.String? name,
    $core.String? type,
    $2.AttrValue? defaultValue,
    $core.String? description,
    $core.bool? hasMinimum,
    $fixnum.Int64? minimum_6,
    $2.AttrValue? allowedValues,
  }) {
    final _result = create();
    if (name != null) {
      _result.name = name;
    }
    if (type != null) {
      _result.type = type;
    }
    if (defaultValue != null) {
      _result.defaultValue = defaultValue;
    }
    if (description != null) {
      _result.description = description;
    }
    if (hasMinimum != null) {
      _result.hasMinimum = hasMinimum;
    }
    if (minimum_6 != null) {
      _result.minimum_6 = minimum_6;
    }
    if (allowedValues != null) {
      _result.allowedValues = allowedValues;
    }
    return _result;
  }
  factory OpDef_AttrDef.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory OpDef_AttrDef.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  OpDef_AttrDef clone() => OpDef_AttrDef()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  OpDef_AttrDef copyWith(void Function(OpDef_AttrDef) updates) =>
      super.copyWith((message) => updates(message as OpDef_AttrDef))
          as OpDef_AttrDef; // ignore: deprecated_member_use
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

  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get type => $_getSZ(1);
  @$pb.TagNumber(2)
  set type($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasType() => $_has(1);
  @$pb.TagNumber(2)
  void clearType() => clearField(2);

  @$pb.TagNumber(3)
  $2.AttrValue get defaultValue => $_getN(2);
  @$pb.TagNumber(3)
  set defaultValue($2.AttrValue v) {
    setField(3, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasDefaultValue() => $_has(2);
  @$pb.TagNumber(3)
  void clearDefaultValue() => clearField(3);
  @$pb.TagNumber(3)
  $2.AttrValue ensureDefaultValue() => $_ensure(2);

  @$pb.TagNumber(4)
  $core.String get description => $_getSZ(3);
  @$pb.TagNumber(4)
  set description($core.String v) {
    $_setString(3, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasDescription() => $_has(3);
  @$pb.TagNumber(4)
  void clearDescription() => clearField(4);

  @$pb.TagNumber(5)
  $core.bool get hasMinimum => $_getBF(4);
  @$pb.TagNumber(5)
  set hasMinimum($core.bool v) {
    $_setBool(4, v);
  }

  @$pb.TagNumber(5)
  $core.bool hasHasMinimum() => $_has(4);
  @$pb.TagNumber(5)
  void clearHasMinimum() => clearField(5);

  @$pb.TagNumber(6)
  $fixnum.Int64 get minimum_6 => $_getI64(5);
  @$pb.TagNumber(6)
  set minimum_6($fixnum.Int64 v) {
    $_setInt64(5, v);
  }

  @$pb.TagNumber(6)
  $core.bool hasMinimum_6() => $_has(5);
  @$pb.TagNumber(6)
  void clearMinimum_6() => clearField(6);

  @$pb.TagNumber(7)
  $2.AttrValue get allowedValues => $_getN(6);
  @$pb.TagNumber(7)
  set allowedValues($2.AttrValue v) {
    setField(7, v);
  }

  @$pb.TagNumber(7)
  $core.bool hasAllowedValues() => $_has(6);
  @$pb.TagNumber(7)
  void clearAllowedValues() => clearField(7);
  @$pb.TagNumber(7)
  $2.AttrValue ensureAllowedValues() => $_ensure(6);
}

class OpDef extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'OpDef',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'tensorflow'),
      createEmptyInstance: create)
    ..aOS(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'name')
    ..pc<OpDef_ArgDef>(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'inputArg',
        $pb.PbFieldType.PM,
        subBuilder: OpDef_ArgDef.create)
    ..pc<OpDef_ArgDef>(
        3,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'outputArg',
        $pb.PbFieldType.PM,
        subBuilder: OpDef_ArgDef.create)
    ..pc<OpDef_AttrDef>(
        4,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'attr',
        $pb.PbFieldType.PM,
        subBuilder: OpDef_AttrDef.create)
    ..aOS(
        5,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'summary')
    ..aOS(
        6,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'description')
    ..aOM<OpDeprecation>(
        8,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'deprecation',
        subBuilder: OpDeprecation.create)
    ..aOB(
        16,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'isAggregate')
    ..aOB(
        17,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'isStateful')
    ..aOB(
        18,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'isCommutative')
    ..aOB(
        19,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'allowsUninitializedInput')
    ..pPS(
        20,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'controlOutput')
    ..aOB(
        21,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'isDistributedCommunication')
    ..hasRequiredFields = false;

  OpDef._() : super();
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
    final _result = create();
    if (name != null) {
      _result.name = name;
    }
    if (inputArg != null) {
      _result.inputArg.addAll(inputArg);
    }
    if (outputArg != null) {
      _result.outputArg.addAll(outputArg);
    }
    if (attr != null) {
      _result.attr.addAll(attr);
    }
    if (summary != null) {
      _result.summary = summary;
    }
    if (description != null) {
      _result.description = description;
    }
    if (deprecation != null) {
      _result.deprecation = deprecation;
    }
    if (isAggregate != null) {
      _result.isAggregate = isAggregate;
    }
    if (isStateful != null) {
      _result.isStateful = isStateful;
    }
    if (isCommutative != null) {
      _result.isCommutative = isCommutative;
    }
    if (allowsUninitializedInput != null) {
      _result.allowsUninitializedInput = allowsUninitializedInput;
    }
    if (controlOutput != null) {
      _result.controlOutput.addAll(controlOutput);
    }
    if (isDistributedCommunication != null) {
      _result.isDistributedCommunication = isDistributedCommunication;
    }
    return _result;
  }
  factory OpDef.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory OpDef.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  OpDef clone() => OpDef()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  OpDef copyWith(void Function(OpDef) updates) =>
      super.copyWith((message) => updates(message as OpDef))
          as OpDef; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static OpDef create() => OpDef._();
  OpDef createEmptyInstance() => create();
  static $pb.PbList<OpDef> createRepeated() => $pb.PbList<OpDef>();
  @$core.pragma('dart2js:noInline')
  static OpDef getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<OpDef>(create);
  static OpDef? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<OpDef_ArgDef> get inputArg => $_getList(1);

  @$pb.TagNumber(3)
  $core.List<OpDef_ArgDef> get outputArg => $_getList(2);

  @$pb.TagNumber(4)
  $core.List<OpDef_AttrDef> get attr => $_getList(3);

  @$pb.TagNumber(5)
  $core.String get summary => $_getSZ(4);
  @$pb.TagNumber(5)
  set summary($core.String v) {
    $_setString(4, v);
  }

  @$pb.TagNumber(5)
  $core.bool hasSummary() => $_has(4);
  @$pb.TagNumber(5)
  void clearSummary() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get description => $_getSZ(5);
  @$pb.TagNumber(6)
  set description($core.String v) {
    $_setString(5, v);
  }

  @$pb.TagNumber(6)
  $core.bool hasDescription() => $_has(5);
  @$pb.TagNumber(6)
  void clearDescription() => clearField(6);

  @$pb.TagNumber(8)
  OpDeprecation get deprecation => $_getN(6);
  @$pb.TagNumber(8)
  set deprecation(OpDeprecation v) {
    setField(8, v);
  }

  @$pb.TagNumber(8)
  $core.bool hasDeprecation() => $_has(6);
  @$pb.TagNumber(8)
  void clearDeprecation() => clearField(8);
  @$pb.TagNumber(8)
  OpDeprecation ensureDeprecation() => $_ensure(6);

  @$pb.TagNumber(16)
  $core.bool get isAggregate => $_getBF(7);
  @$pb.TagNumber(16)
  set isAggregate($core.bool v) {
    $_setBool(7, v);
  }

  @$pb.TagNumber(16)
  $core.bool hasIsAggregate() => $_has(7);
  @$pb.TagNumber(16)
  void clearIsAggregate() => clearField(16);

  @$pb.TagNumber(17)
  $core.bool get isStateful => $_getBF(8);
  @$pb.TagNumber(17)
  set isStateful($core.bool v) {
    $_setBool(8, v);
  }

  @$pb.TagNumber(17)
  $core.bool hasIsStateful() => $_has(8);
  @$pb.TagNumber(17)
  void clearIsStateful() => clearField(17);

  @$pb.TagNumber(18)
  $core.bool get isCommutative => $_getBF(9);
  @$pb.TagNumber(18)
  set isCommutative($core.bool v) {
    $_setBool(9, v);
  }

  @$pb.TagNumber(18)
  $core.bool hasIsCommutative() => $_has(9);
  @$pb.TagNumber(18)
  void clearIsCommutative() => clearField(18);

  @$pb.TagNumber(19)
  $core.bool get allowsUninitializedInput => $_getBF(10);
  @$pb.TagNumber(19)
  set allowsUninitializedInput($core.bool v) {
    $_setBool(10, v);
  }

  @$pb.TagNumber(19)
  $core.bool hasAllowsUninitializedInput() => $_has(10);
  @$pb.TagNumber(19)
  void clearAllowsUninitializedInput() => clearField(19);

  @$pb.TagNumber(20)
  $core.List<$core.String> get controlOutput => $_getList(11);

  @$pb.TagNumber(21)
  $core.bool get isDistributedCommunication => $_getBF(12);
  @$pb.TagNumber(21)
  set isDistributedCommunication($core.bool v) {
    $_setBool(12, v);
  }

  @$pb.TagNumber(21)
  $core.bool hasIsDistributedCommunication() => $_has(12);
  @$pb.TagNumber(21)
  void clearIsDistributedCommunication() => clearField(21);
}

class OpDeprecation extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'OpDeprecation',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'tensorflow'),
      createEmptyInstance: create)
    ..a<$core.int>(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'version',
        $pb.PbFieldType.O3)
    ..aOS(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'explanation')
    ..hasRequiredFields = false;

  OpDeprecation._() : super();
  factory OpDeprecation({
    $core.int? version,
    $core.String? explanation,
  }) {
    final _result = create();
    if (version != null) {
      _result.version = version;
    }
    if (explanation != null) {
      _result.explanation = explanation;
    }
    return _result;
  }
  factory OpDeprecation.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory OpDeprecation.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  OpDeprecation clone() => OpDeprecation()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  OpDeprecation copyWith(void Function(OpDeprecation) updates) =>
      super.copyWith((message) => updates(message as OpDeprecation))
          as OpDeprecation; // ignore: deprecated_member_use
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

  @$pb.TagNumber(1)
  $core.int get version => $_getIZ(0);
  @$pb.TagNumber(1)
  set version($core.int v) {
    $_setSignedInt32(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasVersion() => $_has(0);
  @$pb.TagNumber(1)
  void clearVersion() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get explanation => $_getSZ(1);
  @$pb.TagNumber(2)
  set explanation($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasExplanation() => $_has(1);
  @$pb.TagNumber(2)
  void clearExplanation() => clearField(2);
}

class OpList extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'OpList',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'tensorflow'),
      createEmptyInstance: create)
    ..pc<OpDef>(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'op',
        $pb.PbFieldType.PM,
        subBuilder: OpDef.create)
    ..hasRequiredFields = false;

  OpList._() : super();
  factory OpList({
    $core.Iterable<OpDef>? op,
  }) {
    final _result = create();
    if (op != null) {
      _result.op.addAll(op);
    }
    return _result;
  }
  factory OpList.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory OpList.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  OpList clone() => OpList()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  OpList copyWith(void Function(OpList) updates) =>
      super.copyWith((message) => updates(message as OpList))
          as OpList; // ignore: deprecated_member_use
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
  $core.List<OpDef> get op => $_getList(0);
}
