///
//  Generated code. Do not modify.
//  source: tensorflow/core/protobuf/saved_object_graph.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import 'trackable_object_graph.pb.dart' as $0;
import '../../../google/protobuf/any.pb.dart' as $1;
import '../framework/versions.pb.dart' as $2;
import 'struct.pb.dart' as $3;
import '../framework/tensor_shape.pb.dart' as $4;

import '../framework/types.pbenum.dart' as $5;
import '../framework/variable.pbenum.dart' as $6;
import 'saved_object_graph.pbenum.dart';

export 'saved_object_graph.pbenum.dart';

class SavedObjectGraph extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'SavedObjectGraph',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'tensorflow'),
      createEmptyInstance: create)
    ..pc<SavedObject>(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'nodes',
        $pb.PbFieldType.PM,
        subBuilder: SavedObject.create)
    ..m<$core.String, SavedConcreteFunction>(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'concreteFunctions',
        entryClassName: 'SavedObjectGraph.ConcreteFunctionsEntry',
        keyFieldType: $pb.PbFieldType.OS,
        valueFieldType: $pb.PbFieldType.OM,
        valueCreator: SavedConcreteFunction.create,
        packageName: const $pb.PackageName('tensorflow'))
    ..hasRequiredFields = false;

  SavedObjectGraph._() : super();
  factory SavedObjectGraph({
    $core.Iterable<SavedObject>? nodes,
    $core.Map<$core.String, SavedConcreteFunction>? concreteFunctions,
  }) {
    final _result = create();
    if (nodes != null) {
      _result.nodes.addAll(nodes);
    }
    if (concreteFunctions != null) {
      _result.concreteFunctions.addAll(concreteFunctions);
    }
    return _result;
  }
  factory SavedObjectGraph.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory SavedObjectGraph.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  SavedObjectGraph clone() => SavedObjectGraph()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  SavedObjectGraph copyWith(void Function(SavedObjectGraph) updates) =>
      super.copyWith((message) => updates(message as SavedObjectGraph))
          as SavedObjectGraph; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SavedObjectGraph create() => SavedObjectGraph._();
  SavedObjectGraph createEmptyInstance() => create();
  static $pb.PbList<SavedObjectGraph> createRepeated() =>
      $pb.PbList<SavedObjectGraph>();
  @$core.pragma('dart2js:noInline')
  static SavedObjectGraph getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SavedObjectGraph>(create);
  static SavedObjectGraph? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<SavedObject> get nodes => $_getList(0);

  @$pb.TagNumber(2)
  $core.Map<$core.String, SavedConcreteFunction> get concreteFunctions =>
      $_getMap(1);
}

enum SavedObject_Kind {
  userObject,
  asset,
  function,
  variable,
  bareConcreteFunction,
  constant,
  resource,
  capturedTensor,
  notSet
}

class SavedObject extends $pb.GeneratedMessage {
  static const $core.Map<$core.int, SavedObject_Kind> _SavedObject_KindByTag = {
    4: SavedObject_Kind.userObject,
    5: SavedObject_Kind.asset,
    6: SavedObject_Kind.function,
    7: SavedObject_Kind.variable,
    8: SavedObject_Kind.bareConcreteFunction,
    9: SavedObject_Kind.constant,
    10: SavedObject_Kind.resource,
    12: SavedObject_Kind.capturedTensor,
    0: SavedObject_Kind.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'SavedObject',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'tensorflow'),
      createEmptyInstance: create)
    ..oo(0, [4, 5, 6, 7, 8, 9, 10, 12])
    ..pc<$0.TrackableObjectGraph_TrackableObject_ObjectReference>(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'children',
        $pb.PbFieldType.PM,
        subBuilder:
            $0.TrackableObjectGraph_TrackableObject_ObjectReference.create)
    ..pc<$0.TrackableObjectGraph_TrackableObject_SlotVariableReference>(
        3,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'slotVariables',
        $pb.PbFieldType.PM,
        subBuilder: $0
            .TrackableObjectGraph_TrackableObject_SlotVariableReference.create)
    ..aOM<SavedUserObject>(
        4,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'userObject',
        subBuilder: SavedUserObject.create)
    ..aOM<SavedAsset>(
        5,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'asset',
        subBuilder: SavedAsset.create)
    ..aOM<SavedFunction>(
        6,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'function',
        subBuilder: SavedFunction.create)
    ..aOM<SavedVariable>(
        7,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'variable',
        subBuilder: SavedVariable.create)
    ..aOM<SavedBareConcreteFunction>(
        8,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'bareConcreteFunction',
        subBuilder: SavedBareConcreteFunction.create)
    ..aOM<SavedConstant>(
        9,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'constant',
        subBuilder: SavedConstant.create)
    ..aOM<SavedResource>(
        10,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'resource',
        subBuilder: SavedResource.create)
    ..m<$core.String, SaveableObject>(
        11,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'saveableObjects',
        entryClassName: 'SavedObject.SaveableObjectsEntry',
        keyFieldType: $pb.PbFieldType.OS,
        valueFieldType: $pb.PbFieldType.OM,
        valueCreator: SaveableObject.create,
        packageName: const $pb.PackageName('tensorflow'))
    ..aOM<CapturedTensor>(
        12,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'capturedTensor',
        subBuilder: CapturedTensor.create)
    ..aOS(
        13,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'registeredName')
    ..aOM<$1.Any>(
        14,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'serializedUserProto',
        subBuilder: $1.Any.create)
    ..pc<$0.TrackableObjectGraph_TrackableObject_ObjectReference>(
        15,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'dependencies',
        $pb.PbFieldType.PM,
        subBuilder:
            $0.TrackableObjectGraph_TrackableObject_ObjectReference.create)
    ..aOS(
        16,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'registeredSaver')
    ..hasRequiredFields = false;

  SavedObject._() : super();
  factory SavedObject({
    $core.Iterable<$0.TrackableObjectGraph_TrackableObject_ObjectReference>?
        children,
    $core.Iterable<
            $0.TrackableObjectGraph_TrackableObject_SlotVariableReference>?
        slotVariables,
    SavedUserObject? userObject,
    SavedAsset? asset,
    SavedFunction? function,
    SavedVariable? variable,
    SavedBareConcreteFunction? bareConcreteFunction,
    SavedConstant? constant,
    SavedResource? resource,
    $core.Map<$core.String, SaveableObject>? saveableObjects,
    CapturedTensor? capturedTensor,
    $core.String? registeredName,
    $1.Any? serializedUserProto,
    $core.Iterable<$0.TrackableObjectGraph_TrackableObject_ObjectReference>?
        dependencies,
    $core.String? registeredSaver,
  }) {
    final _result = create();
    if (children != null) {
      _result.children.addAll(children);
    }
    if (slotVariables != null) {
      _result.slotVariables.addAll(slotVariables);
    }
    if (userObject != null) {
      _result.userObject = userObject;
    }
    if (asset != null) {
      _result.asset = asset;
    }
    if (function != null) {
      _result.function = function;
    }
    if (variable != null) {
      _result.variable = variable;
    }
    if (bareConcreteFunction != null) {
      _result.bareConcreteFunction = bareConcreteFunction;
    }
    if (constant != null) {
      _result.constant = constant;
    }
    if (resource != null) {
      _result.resource = resource;
    }
    if (saveableObjects != null) {
      _result.saveableObjects.addAll(saveableObjects);
    }
    if (capturedTensor != null) {
      _result.capturedTensor = capturedTensor;
    }
    if (registeredName != null) {
      _result.registeredName = registeredName;
    }
    if (serializedUserProto != null) {
      _result.serializedUserProto = serializedUserProto;
    }
    if (dependencies != null) {
      _result.dependencies.addAll(dependencies);
    }
    if (registeredSaver != null) {
      _result.registeredSaver = registeredSaver;
    }
    return _result;
  }
  factory SavedObject.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory SavedObject.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  SavedObject clone() => SavedObject()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  SavedObject copyWith(void Function(SavedObject) updates) =>
      super.copyWith((message) => updates(message as SavedObject))
          as SavedObject; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SavedObject create() => SavedObject._();
  SavedObject createEmptyInstance() => create();
  static $pb.PbList<SavedObject> createRepeated() => $pb.PbList<SavedObject>();
  @$core.pragma('dart2js:noInline')
  static SavedObject getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SavedObject>(create);
  static SavedObject? _defaultInstance;

  SavedObject_Kind whichKind() => _SavedObject_KindByTag[$_whichOneof(0)]!;
  void clearKind() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  $core.List<$0.TrackableObjectGraph_TrackableObject_ObjectReference>
      get children => $_getList(0);

  @$pb.TagNumber(3)
  $core.List<$0.TrackableObjectGraph_TrackableObject_SlotVariableReference>
      get slotVariables => $_getList(1);

  @$pb.TagNumber(4)
  SavedUserObject get userObject => $_getN(2);
  @$pb.TagNumber(4)
  set userObject(SavedUserObject v) {
    setField(4, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasUserObject() => $_has(2);
  @$pb.TagNumber(4)
  void clearUserObject() => clearField(4);
  @$pb.TagNumber(4)
  SavedUserObject ensureUserObject() => $_ensure(2);

  @$pb.TagNumber(5)
  SavedAsset get asset => $_getN(3);
  @$pb.TagNumber(5)
  set asset(SavedAsset v) {
    setField(5, v);
  }

  @$pb.TagNumber(5)
  $core.bool hasAsset() => $_has(3);
  @$pb.TagNumber(5)
  void clearAsset() => clearField(5);
  @$pb.TagNumber(5)
  SavedAsset ensureAsset() => $_ensure(3);

  @$pb.TagNumber(6)
  SavedFunction get function => $_getN(4);
  @$pb.TagNumber(6)
  set function(SavedFunction v) {
    setField(6, v);
  }

  @$pb.TagNumber(6)
  $core.bool hasFunction() => $_has(4);
  @$pb.TagNumber(6)
  void clearFunction() => clearField(6);
  @$pb.TagNumber(6)
  SavedFunction ensureFunction() => $_ensure(4);

  @$pb.TagNumber(7)
  SavedVariable get variable => $_getN(5);
  @$pb.TagNumber(7)
  set variable(SavedVariable v) {
    setField(7, v);
  }

  @$pb.TagNumber(7)
  $core.bool hasVariable() => $_has(5);
  @$pb.TagNumber(7)
  void clearVariable() => clearField(7);
  @$pb.TagNumber(7)
  SavedVariable ensureVariable() => $_ensure(5);

  @$pb.TagNumber(8)
  SavedBareConcreteFunction get bareConcreteFunction => $_getN(6);
  @$pb.TagNumber(8)
  set bareConcreteFunction(SavedBareConcreteFunction v) {
    setField(8, v);
  }

  @$pb.TagNumber(8)
  $core.bool hasBareConcreteFunction() => $_has(6);
  @$pb.TagNumber(8)
  void clearBareConcreteFunction() => clearField(8);
  @$pb.TagNumber(8)
  SavedBareConcreteFunction ensureBareConcreteFunction() => $_ensure(6);

  @$pb.TagNumber(9)
  SavedConstant get constant => $_getN(7);
  @$pb.TagNumber(9)
  set constant(SavedConstant v) {
    setField(9, v);
  }

  @$pb.TagNumber(9)
  $core.bool hasConstant() => $_has(7);
  @$pb.TagNumber(9)
  void clearConstant() => clearField(9);
  @$pb.TagNumber(9)
  SavedConstant ensureConstant() => $_ensure(7);

  @$pb.TagNumber(10)
  SavedResource get resource => $_getN(8);
  @$pb.TagNumber(10)
  set resource(SavedResource v) {
    setField(10, v);
  }

  @$pb.TagNumber(10)
  $core.bool hasResource() => $_has(8);
  @$pb.TagNumber(10)
  void clearResource() => clearField(10);
  @$pb.TagNumber(10)
  SavedResource ensureResource() => $_ensure(8);

  @$pb.TagNumber(11)
  $core.Map<$core.String, SaveableObject> get saveableObjects => $_getMap(9);

  @$pb.TagNumber(12)
  CapturedTensor get capturedTensor => $_getN(10);
  @$pb.TagNumber(12)
  set capturedTensor(CapturedTensor v) {
    setField(12, v);
  }

  @$pb.TagNumber(12)
  $core.bool hasCapturedTensor() => $_has(10);
  @$pb.TagNumber(12)
  void clearCapturedTensor() => clearField(12);
  @$pb.TagNumber(12)
  CapturedTensor ensureCapturedTensor() => $_ensure(10);

  @$pb.TagNumber(13)
  $core.String get registeredName => $_getSZ(11);
  @$pb.TagNumber(13)
  set registeredName($core.String v) {
    $_setString(11, v);
  }

  @$pb.TagNumber(13)
  $core.bool hasRegisteredName() => $_has(11);
  @$pb.TagNumber(13)
  void clearRegisteredName() => clearField(13);

  @$pb.TagNumber(14)
  $1.Any get serializedUserProto => $_getN(12);
  @$pb.TagNumber(14)
  set serializedUserProto($1.Any v) {
    setField(14, v);
  }

  @$pb.TagNumber(14)
  $core.bool hasSerializedUserProto() => $_has(12);
  @$pb.TagNumber(14)
  void clearSerializedUserProto() => clearField(14);
  @$pb.TagNumber(14)
  $1.Any ensureSerializedUserProto() => $_ensure(12);

  @$pb.TagNumber(15)
  $core.List<$0.TrackableObjectGraph_TrackableObject_ObjectReference>
      get dependencies => $_getList(13);

  @$pb.TagNumber(16)
  $core.String get registeredSaver => $_getSZ(14);
  @$pb.TagNumber(16)
  set registeredSaver($core.String v) {
    $_setString(14, v);
  }

  @$pb.TagNumber(16)
  $core.bool hasRegisteredSaver() => $_has(14);
  @$pb.TagNumber(16)
  void clearRegisteredSaver() => clearField(16);
}

class SavedUserObject extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'SavedUserObject',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'tensorflow'),
      createEmptyInstance: create)
    ..aOS(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'identifier')
    ..aOM<$2.VersionDef>(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'version',
        subBuilder: $2.VersionDef.create)
    ..aOS(
        3,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'metadata')
    ..hasRequiredFields = false;

  SavedUserObject._() : super();
  factory SavedUserObject({
    $core.String? identifier,
    $2.VersionDef? version,
    @$core.Deprecated('This field is deprecated.') $core.String? metadata,
  }) {
    final _result = create();
    if (identifier != null) {
      _result.identifier = identifier;
    }
    if (version != null) {
      _result.version = version;
    }
    if (metadata != null) {
      // ignore: deprecated_member_use_from_same_package
      _result.metadata = metadata;
    }
    return _result;
  }
  factory SavedUserObject.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory SavedUserObject.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  SavedUserObject clone() => SavedUserObject()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  SavedUserObject copyWith(void Function(SavedUserObject) updates) =>
      super.copyWith((message) => updates(message as SavedUserObject))
          as SavedUserObject; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SavedUserObject create() => SavedUserObject._();
  SavedUserObject createEmptyInstance() => create();
  static $pb.PbList<SavedUserObject> createRepeated() =>
      $pb.PbList<SavedUserObject>();
  @$core.pragma('dart2js:noInline')
  static SavedUserObject getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SavedUserObject>(create);
  static SavedUserObject? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get identifier => $_getSZ(0);
  @$pb.TagNumber(1)
  set identifier($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasIdentifier() => $_has(0);
  @$pb.TagNumber(1)
  void clearIdentifier() => clearField(1);

  @$pb.TagNumber(2)
  $2.VersionDef get version => $_getN(1);
  @$pb.TagNumber(2)
  set version($2.VersionDef v) {
    setField(2, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasVersion() => $_has(1);
  @$pb.TagNumber(2)
  void clearVersion() => clearField(2);
  @$pb.TagNumber(2)
  $2.VersionDef ensureVersion() => $_ensure(1);

  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(3)
  $core.String get metadata => $_getSZ(2);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(3)
  set metadata($core.String v) {
    $_setString(2, v);
  }

  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(3)
  $core.bool hasMetadata() => $_has(2);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(3)
  void clearMetadata() => clearField(3);
}

class SavedAsset extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'SavedAsset',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'tensorflow'),
      createEmptyInstance: create)
    ..a<$core.int>(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'assetFileDefIndex',
        $pb.PbFieldType.O3)
    ..hasRequiredFields = false;

  SavedAsset._() : super();
  factory SavedAsset({
    $core.int? assetFileDefIndex,
  }) {
    final _result = create();
    if (assetFileDefIndex != null) {
      _result.assetFileDefIndex = assetFileDefIndex;
    }
    return _result;
  }
  factory SavedAsset.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory SavedAsset.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  SavedAsset clone() => SavedAsset()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  SavedAsset copyWith(void Function(SavedAsset) updates) =>
      super.copyWith((message) => updates(message as SavedAsset))
          as SavedAsset; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SavedAsset create() => SavedAsset._();
  SavedAsset createEmptyInstance() => create();
  static $pb.PbList<SavedAsset> createRepeated() => $pb.PbList<SavedAsset>();
  @$core.pragma('dart2js:noInline')
  static SavedAsset getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SavedAsset>(create);
  static SavedAsset? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get assetFileDefIndex => $_getIZ(0);
  @$pb.TagNumber(1)
  set assetFileDefIndex($core.int v) {
    $_setSignedInt32(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasAssetFileDefIndex() => $_has(0);
  @$pb.TagNumber(1)
  void clearAssetFileDefIndex() => clearField(1);
}

class SavedFunction extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'SavedFunction',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'tensorflow'),
      createEmptyInstance: create)
    ..pPS(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'concreteFunctions')
    ..aOM<FunctionSpec>(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'functionSpec',
        subBuilder: FunctionSpec.create)
    ..hasRequiredFields = false;

  SavedFunction._() : super();
  factory SavedFunction({
    $core.Iterable<$core.String>? concreteFunctions,
    FunctionSpec? functionSpec,
  }) {
    final _result = create();
    if (concreteFunctions != null) {
      _result.concreteFunctions.addAll(concreteFunctions);
    }
    if (functionSpec != null) {
      _result.functionSpec = functionSpec;
    }
    return _result;
  }
  factory SavedFunction.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory SavedFunction.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  SavedFunction clone() => SavedFunction()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  SavedFunction copyWith(void Function(SavedFunction) updates) =>
      super.copyWith((message) => updates(message as SavedFunction))
          as SavedFunction; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SavedFunction create() => SavedFunction._();
  SavedFunction createEmptyInstance() => create();
  static $pb.PbList<SavedFunction> createRepeated() =>
      $pb.PbList<SavedFunction>();
  @$core.pragma('dart2js:noInline')
  static SavedFunction getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SavedFunction>(create);
  static SavedFunction? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.String> get concreteFunctions => $_getList(0);

  @$pb.TagNumber(2)
  FunctionSpec get functionSpec => $_getN(1);
  @$pb.TagNumber(2)
  set functionSpec(FunctionSpec v) {
    setField(2, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasFunctionSpec() => $_has(1);
  @$pb.TagNumber(2)
  void clearFunctionSpec() => clearField(2);
  @$pb.TagNumber(2)
  FunctionSpec ensureFunctionSpec() => $_ensure(1);
}

class CapturedTensor extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'CapturedTensor',
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
            : 'concreteFunction')
    ..hasRequiredFields = false;

  CapturedTensor._() : super();
  factory CapturedTensor({
    $core.String? name,
    $core.String? concreteFunction,
  }) {
    final _result = create();
    if (name != null) {
      _result.name = name;
    }
    if (concreteFunction != null) {
      _result.concreteFunction = concreteFunction;
    }
    return _result;
  }
  factory CapturedTensor.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory CapturedTensor.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  CapturedTensor clone() => CapturedTensor()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  CapturedTensor copyWith(void Function(CapturedTensor) updates) =>
      super.copyWith((message) => updates(message as CapturedTensor))
          as CapturedTensor; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CapturedTensor create() => CapturedTensor._();
  CapturedTensor createEmptyInstance() => create();
  static $pb.PbList<CapturedTensor> createRepeated() =>
      $pb.PbList<CapturedTensor>();
  @$core.pragma('dart2js:noInline')
  static CapturedTensor getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<CapturedTensor>(create);
  static CapturedTensor? _defaultInstance;

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
  $core.String get concreteFunction => $_getSZ(1);
  @$pb.TagNumber(2)
  set concreteFunction($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasConcreteFunction() => $_has(1);
  @$pb.TagNumber(2)
  void clearConcreteFunction() => clearField(2);
}

class SavedConcreteFunction extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'SavedConcreteFunction',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'tensorflow'),
      createEmptyInstance: create)
    ..p<$core.int>(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'boundInputs',
        $pb.PbFieldType.P3)
    ..aOM<$3.StructuredValue>(
        3,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'canonicalizedInputSignature',
        subBuilder: $3.StructuredValue.create)
    ..aOM<$3.StructuredValue>(
        4,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'outputSignature',
        subBuilder: $3.StructuredValue.create)
    ..hasRequiredFields = false;

  SavedConcreteFunction._() : super();
  factory SavedConcreteFunction({
    $core.Iterable<$core.int>? boundInputs,
    $3.StructuredValue? canonicalizedInputSignature,
    $3.StructuredValue? outputSignature,
  }) {
    final _result = create();
    if (boundInputs != null) {
      _result.boundInputs.addAll(boundInputs);
    }
    if (canonicalizedInputSignature != null) {
      _result.canonicalizedInputSignature = canonicalizedInputSignature;
    }
    if (outputSignature != null) {
      _result.outputSignature = outputSignature;
    }
    return _result;
  }
  factory SavedConcreteFunction.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory SavedConcreteFunction.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  SavedConcreteFunction clone() =>
      SavedConcreteFunction()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  SavedConcreteFunction copyWith(
          void Function(SavedConcreteFunction) updates) =>
      super.copyWith((message) => updates(message as SavedConcreteFunction))
          as SavedConcreteFunction; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SavedConcreteFunction create() => SavedConcreteFunction._();
  SavedConcreteFunction createEmptyInstance() => create();
  static $pb.PbList<SavedConcreteFunction> createRepeated() =>
      $pb.PbList<SavedConcreteFunction>();
  @$core.pragma('dart2js:noInline')
  static SavedConcreteFunction getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SavedConcreteFunction>(create);
  static SavedConcreteFunction? _defaultInstance;

  @$pb.TagNumber(2)
  $core.List<$core.int> get boundInputs => $_getList(0);

  @$pb.TagNumber(3)
  $3.StructuredValue get canonicalizedInputSignature => $_getN(1);
  @$pb.TagNumber(3)
  set canonicalizedInputSignature($3.StructuredValue v) {
    setField(3, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasCanonicalizedInputSignature() => $_has(1);
  @$pb.TagNumber(3)
  void clearCanonicalizedInputSignature() => clearField(3);
  @$pb.TagNumber(3)
  $3.StructuredValue ensureCanonicalizedInputSignature() => $_ensure(1);

  @$pb.TagNumber(4)
  $3.StructuredValue get outputSignature => $_getN(2);
  @$pb.TagNumber(4)
  set outputSignature($3.StructuredValue v) {
    setField(4, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasOutputSignature() => $_has(2);
  @$pb.TagNumber(4)
  void clearOutputSignature() => clearField(4);
  @$pb.TagNumber(4)
  $3.StructuredValue ensureOutputSignature() => $_ensure(2);
}

class SavedBareConcreteFunction extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'SavedBareConcreteFunction',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'tensorflow'),
      createEmptyInstance: create)
    ..aOS(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'concreteFunctionName')
    ..pPS(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'argumentKeywords')
    ..aInt64(
        3,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'allowedPositionalArguments')
    ..aOM<FunctionSpec>(
        4,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'functionSpec',
        subBuilder: FunctionSpec.create)
    ..hasRequiredFields = false;

  SavedBareConcreteFunction._() : super();
  factory SavedBareConcreteFunction({
    $core.String? concreteFunctionName,
    $core.Iterable<$core.String>? argumentKeywords,
    $fixnum.Int64? allowedPositionalArguments,
    FunctionSpec? functionSpec,
  }) {
    final _result = create();
    if (concreteFunctionName != null) {
      _result.concreteFunctionName = concreteFunctionName;
    }
    if (argumentKeywords != null) {
      _result.argumentKeywords.addAll(argumentKeywords);
    }
    if (allowedPositionalArguments != null) {
      _result.allowedPositionalArguments = allowedPositionalArguments;
    }
    if (functionSpec != null) {
      _result.functionSpec = functionSpec;
    }
    return _result;
  }
  factory SavedBareConcreteFunction.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory SavedBareConcreteFunction.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  SavedBareConcreteFunction clone() =>
      SavedBareConcreteFunction()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  SavedBareConcreteFunction copyWith(
          void Function(SavedBareConcreteFunction) updates) =>
      super.copyWith((message) => updates(message as SavedBareConcreteFunction))
          as SavedBareConcreteFunction; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SavedBareConcreteFunction create() => SavedBareConcreteFunction._();
  SavedBareConcreteFunction createEmptyInstance() => create();
  static $pb.PbList<SavedBareConcreteFunction> createRepeated() =>
      $pb.PbList<SavedBareConcreteFunction>();
  @$core.pragma('dart2js:noInline')
  static SavedBareConcreteFunction getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SavedBareConcreteFunction>(create);
  static SavedBareConcreteFunction? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get concreteFunctionName => $_getSZ(0);
  @$pb.TagNumber(1)
  set concreteFunctionName($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasConcreteFunctionName() => $_has(0);
  @$pb.TagNumber(1)
  void clearConcreteFunctionName() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$core.String> get argumentKeywords => $_getList(1);

  @$pb.TagNumber(3)
  $fixnum.Int64 get allowedPositionalArguments => $_getI64(2);
  @$pb.TagNumber(3)
  set allowedPositionalArguments($fixnum.Int64 v) {
    $_setInt64(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasAllowedPositionalArguments() => $_has(2);
  @$pb.TagNumber(3)
  void clearAllowedPositionalArguments() => clearField(3);

  @$pb.TagNumber(4)
  FunctionSpec get functionSpec => $_getN(3);
  @$pb.TagNumber(4)
  set functionSpec(FunctionSpec v) {
    setField(4, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasFunctionSpec() => $_has(3);
  @$pb.TagNumber(4)
  void clearFunctionSpec() => clearField(4);
  @$pb.TagNumber(4)
  FunctionSpec ensureFunctionSpec() => $_ensure(3);
}

class SavedConstant extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'SavedConstant',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'tensorflow'),
      createEmptyInstance: create)
    ..aOS(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'operation')
    ..hasRequiredFields = false;

  SavedConstant._() : super();
  factory SavedConstant({
    $core.String? operation,
  }) {
    final _result = create();
    if (operation != null) {
      _result.operation = operation;
    }
    return _result;
  }
  factory SavedConstant.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory SavedConstant.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  SavedConstant clone() => SavedConstant()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  SavedConstant copyWith(void Function(SavedConstant) updates) =>
      super.copyWith((message) => updates(message as SavedConstant))
          as SavedConstant; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SavedConstant create() => SavedConstant._();
  SavedConstant createEmptyInstance() => create();
  static $pb.PbList<SavedConstant> createRepeated() =>
      $pb.PbList<SavedConstant>();
  @$core.pragma('dart2js:noInline')
  static SavedConstant getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SavedConstant>(create);
  static SavedConstant? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get operation => $_getSZ(0);
  @$pb.TagNumber(1)
  set operation($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasOperation() => $_has(0);
  @$pb.TagNumber(1)
  void clearOperation() => clearField(1);
}

class SavedVariable extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'SavedVariable',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'tensorflow'),
      createEmptyInstance: create)
    ..e<$5.DataType>(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'dtype',
        $pb.PbFieldType.OE,
        defaultOrMaker: $5.DataType.DT_INVALID,
        valueOf: $5.DataType.valueOf,
        enumValues: $5.DataType.values)
    ..aOM<$4.TensorShapeProto>(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'shape',
        subBuilder: $4.TensorShapeProto.create)
    ..aOB(
        3,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'trainable')
    ..e<$6.VariableSynchronization>(
        4,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'synchronization',
        $pb.PbFieldType.OE,
        defaultOrMaker:
            $6.VariableSynchronization.VARIABLE_SYNCHRONIZATION_AUTO,
        valueOf: $6.VariableSynchronization.valueOf,
        enumValues: $6.VariableSynchronization.values)
    ..e<$6.VariableAggregation>(
        5,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'aggregation',
        $pb.PbFieldType.OE,
        defaultOrMaker: $6.VariableAggregation.VARIABLE_AGGREGATION_NONE,
        valueOf: $6.VariableAggregation.valueOf,
        enumValues: $6.VariableAggregation.values)
    ..aOS(
        6,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'name')
    ..aOS(
        7,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'device')
    ..pc<SavedVariable>(
        8,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'experimentalDistributedVariableComponents',
        $pb.PbFieldType.PM,
        subBuilder: SavedVariable.create)
    ..hasRequiredFields = false;

  SavedVariable._() : super();
  factory SavedVariable({
    $5.DataType? dtype,
    $4.TensorShapeProto? shape,
    $core.bool? trainable,
    $6.VariableSynchronization? synchronization,
    $6.VariableAggregation? aggregation,
    $core.String? name,
    $core.String? device,
    $core.Iterable<SavedVariable>? experimentalDistributedVariableComponents,
  }) {
    final _result = create();
    if (dtype != null) {
      _result.dtype = dtype;
    }
    if (shape != null) {
      _result.shape = shape;
    }
    if (trainable != null) {
      _result.trainable = trainable;
    }
    if (synchronization != null) {
      _result.synchronization = synchronization;
    }
    if (aggregation != null) {
      _result.aggregation = aggregation;
    }
    if (name != null) {
      _result.name = name;
    }
    if (device != null) {
      _result.device = device;
    }
    if (experimentalDistributedVariableComponents != null) {
      _result.experimentalDistributedVariableComponents
          .addAll(experimentalDistributedVariableComponents);
    }
    return _result;
  }
  factory SavedVariable.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory SavedVariable.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  SavedVariable clone() => SavedVariable()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  SavedVariable copyWith(void Function(SavedVariable) updates) =>
      super.copyWith((message) => updates(message as SavedVariable))
          as SavedVariable; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SavedVariable create() => SavedVariable._();
  SavedVariable createEmptyInstance() => create();
  static $pb.PbList<SavedVariable> createRepeated() =>
      $pb.PbList<SavedVariable>();
  @$core.pragma('dart2js:noInline')
  static SavedVariable getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SavedVariable>(create);
  static SavedVariable? _defaultInstance;

  @$pb.TagNumber(1)
  $5.DataType get dtype => $_getN(0);
  @$pb.TagNumber(1)
  set dtype($5.DataType v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasDtype() => $_has(0);
  @$pb.TagNumber(1)
  void clearDtype() => clearField(1);

  @$pb.TagNumber(2)
  $4.TensorShapeProto get shape => $_getN(1);
  @$pb.TagNumber(2)
  set shape($4.TensorShapeProto v) {
    setField(2, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasShape() => $_has(1);
  @$pb.TagNumber(2)
  void clearShape() => clearField(2);
  @$pb.TagNumber(2)
  $4.TensorShapeProto ensureShape() => $_ensure(1);

  @$pb.TagNumber(3)
  $core.bool get trainable => $_getBF(2);
  @$pb.TagNumber(3)
  set trainable($core.bool v) {
    $_setBool(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasTrainable() => $_has(2);
  @$pb.TagNumber(3)
  void clearTrainable() => clearField(3);

  @$pb.TagNumber(4)
  $6.VariableSynchronization get synchronization => $_getN(3);
  @$pb.TagNumber(4)
  set synchronization($6.VariableSynchronization v) {
    setField(4, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasSynchronization() => $_has(3);
  @$pb.TagNumber(4)
  void clearSynchronization() => clearField(4);

  @$pb.TagNumber(5)
  $6.VariableAggregation get aggregation => $_getN(4);
  @$pb.TagNumber(5)
  set aggregation($6.VariableAggregation v) {
    setField(5, v);
  }

  @$pb.TagNumber(5)
  $core.bool hasAggregation() => $_has(4);
  @$pb.TagNumber(5)
  void clearAggregation() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get name => $_getSZ(5);
  @$pb.TagNumber(6)
  set name($core.String v) {
    $_setString(5, v);
  }

  @$pb.TagNumber(6)
  $core.bool hasName() => $_has(5);
  @$pb.TagNumber(6)
  void clearName() => clearField(6);

  @$pb.TagNumber(7)
  $core.String get device => $_getSZ(6);
  @$pb.TagNumber(7)
  set device($core.String v) {
    $_setString(6, v);
  }

  @$pb.TagNumber(7)
  $core.bool hasDevice() => $_has(6);
  @$pb.TagNumber(7)
  void clearDevice() => clearField(7);

  @$pb.TagNumber(8)
  $core.List<SavedVariable> get experimentalDistributedVariableComponents =>
      $_getList(7);
}

class FunctionSpec extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'FunctionSpec',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'tensorflow'),
      createEmptyInstance: create)
    ..aOM<$3.StructuredValue>(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'fullargspec',
        subBuilder: $3.StructuredValue.create)
    ..aOB(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'isMethod')
    ..aOM<$3.StructuredValue>(
        5,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'inputSignature',
        subBuilder: $3.StructuredValue.create)
    ..e<FunctionSpec_JitCompile>(
        6,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'jitCompile',
        $pb.PbFieldType.OE,
        defaultOrMaker: FunctionSpec_JitCompile.DEFAULT,
        valueOf: FunctionSpec_JitCompile.valueOf,
        enumValues: FunctionSpec_JitCompile.values)
    ..hasRequiredFields = false;

  FunctionSpec._() : super();
  factory FunctionSpec({
    $3.StructuredValue? fullargspec,
    $core.bool? isMethod,
    $3.StructuredValue? inputSignature,
    FunctionSpec_JitCompile? jitCompile,
  }) {
    final _result = create();
    if (fullargspec != null) {
      _result.fullargspec = fullargspec;
    }
    if (isMethod != null) {
      _result.isMethod = isMethod;
    }
    if (inputSignature != null) {
      _result.inputSignature = inputSignature;
    }
    if (jitCompile != null) {
      _result.jitCompile = jitCompile;
    }
    return _result;
  }
  factory FunctionSpec.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory FunctionSpec.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  FunctionSpec clone() => FunctionSpec()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  FunctionSpec copyWith(void Function(FunctionSpec) updates) =>
      super.copyWith((message) => updates(message as FunctionSpec))
          as FunctionSpec; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static FunctionSpec create() => FunctionSpec._();
  FunctionSpec createEmptyInstance() => create();
  static $pb.PbList<FunctionSpec> createRepeated() =>
      $pb.PbList<FunctionSpec>();
  @$core.pragma('dart2js:noInline')
  static FunctionSpec getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<FunctionSpec>(create);
  static FunctionSpec? _defaultInstance;

  @$pb.TagNumber(1)
  $3.StructuredValue get fullargspec => $_getN(0);
  @$pb.TagNumber(1)
  set fullargspec($3.StructuredValue v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasFullargspec() => $_has(0);
  @$pb.TagNumber(1)
  void clearFullargspec() => clearField(1);
  @$pb.TagNumber(1)
  $3.StructuredValue ensureFullargspec() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.bool get isMethod => $_getBF(1);
  @$pb.TagNumber(2)
  set isMethod($core.bool v) {
    $_setBool(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasIsMethod() => $_has(1);
  @$pb.TagNumber(2)
  void clearIsMethod() => clearField(2);

  @$pb.TagNumber(5)
  $3.StructuredValue get inputSignature => $_getN(2);
  @$pb.TagNumber(5)
  set inputSignature($3.StructuredValue v) {
    setField(5, v);
  }

  @$pb.TagNumber(5)
  $core.bool hasInputSignature() => $_has(2);
  @$pb.TagNumber(5)
  void clearInputSignature() => clearField(5);
  @$pb.TagNumber(5)
  $3.StructuredValue ensureInputSignature() => $_ensure(2);

  @$pb.TagNumber(6)
  FunctionSpec_JitCompile get jitCompile => $_getN(3);
  @$pb.TagNumber(6)
  set jitCompile(FunctionSpec_JitCompile v) {
    setField(6, v);
  }

  @$pb.TagNumber(6)
  $core.bool hasJitCompile() => $_has(3);
  @$pb.TagNumber(6)
  void clearJitCompile() => clearField(6);
}

class SavedResource extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'SavedResource',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'tensorflow'),
      createEmptyInstance: create)
    ..aOS(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'device')
    ..hasRequiredFields = false;

  SavedResource._() : super();
  factory SavedResource({
    $core.String? device,
  }) {
    final _result = create();
    if (device != null) {
      _result.device = device;
    }
    return _result;
  }
  factory SavedResource.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory SavedResource.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  SavedResource clone() => SavedResource()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  SavedResource copyWith(void Function(SavedResource) updates) =>
      super.copyWith((message) => updates(message as SavedResource))
          as SavedResource; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SavedResource create() => SavedResource._();
  SavedResource createEmptyInstance() => create();
  static $pb.PbList<SavedResource> createRepeated() =>
      $pb.PbList<SavedResource>();
  @$core.pragma('dart2js:noInline')
  static SavedResource getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SavedResource>(create);
  static SavedResource? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get device => $_getSZ(0);
  @$pb.TagNumber(1)
  set device($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasDevice() => $_has(0);
  @$pb.TagNumber(1)
  void clearDevice() => clearField(1);
}

class SaveableObject extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'SaveableObject',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'tensorflow'),
      createEmptyInstance: create)
    ..a<$core.int>(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'saveFunction',
        $pb.PbFieldType.O3)
    ..a<$core.int>(
        3,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'restoreFunction',
        $pb.PbFieldType.O3)
    ..hasRequiredFields = false;

  SaveableObject._() : super();
  factory SaveableObject({
    $core.int? saveFunction,
    $core.int? restoreFunction,
  }) {
    final _result = create();
    if (saveFunction != null) {
      _result.saveFunction = saveFunction;
    }
    if (restoreFunction != null) {
      _result.restoreFunction = restoreFunction;
    }
    return _result;
  }
  factory SaveableObject.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory SaveableObject.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  SaveableObject clone() => SaveableObject()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  SaveableObject copyWith(void Function(SaveableObject) updates) =>
      super.copyWith((message) => updates(message as SaveableObject))
          as SaveableObject; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SaveableObject create() => SaveableObject._();
  SaveableObject createEmptyInstance() => create();
  static $pb.PbList<SaveableObject> createRepeated() =>
      $pb.PbList<SaveableObject>();
  @$core.pragma('dart2js:noInline')
  static SaveableObject getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SaveableObject>(create);
  static SaveableObject? _defaultInstance;

  @$pb.TagNumber(2)
  $core.int get saveFunction => $_getIZ(0);
  @$pb.TagNumber(2)
  set saveFunction($core.int v) {
    $_setSignedInt32(0, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasSaveFunction() => $_has(0);
  @$pb.TagNumber(2)
  void clearSaveFunction() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get restoreFunction => $_getIZ(1);
  @$pb.TagNumber(3)
  set restoreFunction($core.int v) {
    $_setSignedInt32(1, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasRestoreFunction() => $_has(1);
  @$pb.TagNumber(3)
  void clearRestoreFunction() => clearField(3);
}
