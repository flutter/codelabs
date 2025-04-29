//
//  Generated code. Do not modify.
//  source: tensorflow/core/protobuf/saved_object_graph.proto
//
// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import '../../../google/protobuf/any.pb.dart' as $1;
import '../framework/tensor_shape.pb.dart' as $4;
import '../framework/types.pbenum.dart' as $5;
import '../framework/variable.pbenum.dart' as $6;
import '../framework/versions.pb.dart' as $2;
import 'saved_object_graph.pbenum.dart';
import 'struct.pb.dart' as $3;
import 'trackable_object_graph.pb.dart' as $0;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

export 'saved_object_graph.pbenum.dart';

class SavedObjectGraph extends $pb.GeneratedMessage {
  factory SavedObjectGraph({
    $core.Iterable<SavedObject>? nodes,
    $pb.PbMap<$core.String, SavedConcreteFunction>? concreteFunctions,
  }) {
    final $result = create();
    if (nodes != null) {
      $result.nodes.addAll(nodes);
    }
    if (concreteFunctions != null) {
      $result.concreteFunctions.addAll(concreteFunctions);
    }
    return $result;
  }
  SavedObjectGraph._() : super();
  factory SavedObjectGraph.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SavedObjectGraph.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SavedObjectGraph', package: const $pb.PackageName(_omitMessageNames ? '' : 'tensorflow'), createEmptyInstance: create)
    ..pc<SavedObject>(1, _omitFieldNames ? '' : 'nodes', $pb.PbFieldType.PM, subBuilder: SavedObject.create)
    ..m<$core.String, SavedConcreteFunction>(2, _omitFieldNames ? '' : 'concreteFunctions', entryClassName: 'SavedObjectGraph.ConcreteFunctionsEntry', keyFieldType: $pb.PbFieldType.OS, valueFieldType: $pb.PbFieldType.OM, valueCreator: SavedConcreteFunction.create, valueDefaultOrMaker: SavedConcreteFunction.getDefault, packageName: const $pb.PackageName('tensorflow'))
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SavedObjectGraph clone() => SavedObjectGraph()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SavedObjectGraph copyWith(void Function(SavedObjectGraph) updates) => super.copyWith((message) => updates(message as SavedObjectGraph)) as SavedObjectGraph;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SavedObjectGraph create() => SavedObjectGraph._();
  SavedObjectGraph createEmptyInstance() => create();
  static $pb.PbList<SavedObjectGraph> createRepeated() => $pb.PbList<SavedObjectGraph>();
  @$core.pragma('dart2js:noInline')
  static SavedObjectGraph getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SavedObjectGraph>(create);
  static SavedObjectGraph? _defaultInstance;

  ///  Flattened list of objects in the object graph.
  ///
  ///  The position of the object in this list indicates its id.
  ///  Nodes[0] is considered the root node.
  @$pb.TagNumber(1)
  $pb.PbList<SavedObject> get nodes => $_getList(0);

  /// Information about captures and output structures in concrete functions.
  /// Referenced from SavedBareConcreteFunction and SavedFunction.
  @$pb.TagNumber(2)
  $pb.PbMap<$core.String, SavedConcreteFunction> get concreteFunctions => $_getMap(1);
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
  factory SavedObject({
    $core.Iterable<$0.TrackableObjectGraph_TrackableObject_ObjectReference>? children,
    $core.Iterable<$0.TrackableObjectGraph_TrackableObject_SlotVariableReference>? slotVariables,
    SavedUserObject? userObject,
    SavedAsset? asset,
    SavedFunction? function,
    SavedVariable? variable,
    SavedBareConcreteFunction? bareConcreteFunction,
    SavedConstant? constant,
    SavedResource? resource,
    $pb.PbMap<$core.String, SaveableObject>? saveableObjects,
    CapturedTensor? capturedTensor,
    $core.String? registeredName,
    $1.Any? serializedUserProto,
    $core.Iterable<$0.TrackableObjectGraph_TrackableObject_ObjectReference>? dependencies,
    $core.String? registeredSaver,
  }) {
    final $result = create();
    if (children != null) {
      $result.children.addAll(children);
    }
    if (slotVariables != null) {
      $result.slotVariables.addAll(slotVariables);
    }
    if (userObject != null) {
      $result.userObject = userObject;
    }
    if (asset != null) {
      $result.asset = asset;
    }
    if (function != null) {
      $result.function = function;
    }
    if (variable != null) {
      $result.variable = variable;
    }
    if (bareConcreteFunction != null) {
      $result.bareConcreteFunction = bareConcreteFunction;
    }
    if (constant != null) {
      $result.constant = constant;
    }
    if (resource != null) {
      $result.resource = resource;
    }
    if (saveableObjects != null) {
      $result.saveableObjects.addAll(saveableObjects);
    }
    if (capturedTensor != null) {
      $result.capturedTensor = capturedTensor;
    }
    if (registeredName != null) {
      $result.registeredName = registeredName;
    }
    if (serializedUserProto != null) {
      $result.serializedUserProto = serializedUserProto;
    }
    if (dependencies != null) {
      $result.dependencies.addAll(dependencies);
    }
    if (registeredSaver != null) {
      $result.registeredSaver = registeredSaver;
    }
    return $result;
  }
  SavedObject._() : super();
  factory SavedObject.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SavedObject.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static const $core.Map<$core.int, SavedObject_Kind> _SavedObject_KindByTag = {
    4 : SavedObject_Kind.userObject,
    5 : SavedObject_Kind.asset,
    6 : SavedObject_Kind.function,
    7 : SavedObject_Kind.variable,
    8 : SavedObject_Kind.bareConcreteFunction,
    9 : SavedObject_Kind.constant,
    10 : SavedObject_Kind.resource,
    12 : SavedObject_Kind.capturedTensor,
    0 : SavedObject_Kind.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SavedObject', package: const $pb.PackageName(_omitMessageNames ? '' : 'tensorflow'), createEmptyInstance: create)
    ..oo(0, [4, 5, 6, 7, 8, 9, 10, 12])
    ..pc<$0.TrackableObjectGraph_TrackableObject_ObjectReference>(1, _omitFieldNames ? '' : 'children', $pb.PbFieldType.PM, subBuilder: $0.TrackableObjectGraph_TrackableObject_ObjectReference.create)
    ..pc<$0.TrackableObjectGraph_TrackableObject_SlotVariableReference>(3, _omitFieldNames ? '' : 'slotVariables', $pb.PbFieldType.PM, subBuilder: $0.TrackableObjectGraph_TrackableObject_SlotVariableReference.create)
    ..aOM<SavedUserObject>(4, _omitFieldNames ? '' : 'userObject', subBuilder: SavedUserObject.create)
    ..aOM<SavedAsset>(5, _omitFieldNames ? '' : 'asset', subBuilder: SavedAsset.create)
    ..aOM<SavedFunction>(6, _omitFieldNames ? '' : 'function', subBuilder: SavedFunction.create)
    ..aOM<SavedVariable>(7, _omitFieldNames ? '' : 'variable', subBuilder: SavedVariable.create)
    ..aOM<SavedBareConcreteFunction>(8, _omitFieldNames ? '' : 'bareConcreteFunction', subBuilder: SavedBareConcreteFunction.create)
    ..aOM<SavedConstant>(9, _omitFieldNames ? '' : 'constant', subBuilder: SavedConstant.create)
    ..aOM<SavedResource>(10, _omitFieldNames ? '' : 'resource', subBuilder: SavedResource.create)
    ..m<$core.String, SaveableObject>(11, _omitFieldNames ? '' : 'saveableObjects', entryClassName: 'SavedObject.SaveableObjectsEntry', keyFieldType: $pb.PbFieldType.OS, valueFieldType: $pb.PbFieldType.OM, valueCreator: SaveableObject.create, valueDefaultOrMaker: SaveableObject.getDefault, packageName: const $pb.PackageName('tensorflow'))
    ..aOM<CapturedTensor>(12, _omitFieldNames ? '' : 'capturedTensor', subBuilder: CapturedTensor.create)
    ..aOS(13, _omitFieldNames ? '' : 'registeredName')
    ..aOM<$1.Any>(14, _omitFieldNames ? '' : 'serializedUserProto', subBuilder: $1.Any.create)
    ..pc<$0.TrackableObjectGraph_TrackableObject_ObjectReference>(15, _omitFieldNames ? '' : 'dependencies', $pb.PbFieldType.PM, subBuilder: $0.TrackableObjectGraph_TrackableObject_ObjectReference.create)
    ..aOS(16, _omitFieldNames ? '' : 'registeredSaver')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SavedObject clone() => SavedObject()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SavedObject copyWith(void Function(SavedObject) updates) => super.copyWith((message) => updates(message as SavedObject)) as SavedObject;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SavedObject create() => SavedObject._();
  SavedObject createEmptyInstance() => create();
  static $pb.PbList<SavedObject> createRepeated() => $pb.PbList<SavedObject>();
  @$core.pragma('dart2js:noInline')
  static SavedObject getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SavedObject>(create);
  static SavedObject? _defaultInstance;

  SavedObject_Kind whichKind() => _SavedObject_KindByTag[$_whichOneof(0)]!;
  void clearKind() => $_clearField($_whichOneof(0));

  ///  Objects which this object depends on: named edges in the dependency
  ///  graph.
  ///
  ///  Note: currently only valid if kind == "user_object" or "resource".
  @$pb.TagNumber(1)
  $pb.PbList<$0.TrackableObjectGraph_TrackableObject_ObjectReference> get children => $_getList(0);

  ///  Slot variables owned by this object. This describes the three-way
  ///  (optimizer, variable, slot variable) relationship; none of the three
  ///  depend on the others directly.
  ///
  ///  Note: currently only valid if kind == "user_object".
  @$pb.TagNumber(3)
  $pb.PbList<$0.TrackableObjectGraph_TrackableObject_SlotVariableReference> get slotVariables => $_getList(1);

  @$pb.TagNumber(4)
  SavedUserObject get userObject => $_getN(2);
  @$pb.TagNumber(4)
  set userObject(SavedUserObject v) { $_setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasUserObject() => $_has(2);
  @$pb.TagNumber(4)
  void clearUserObject() => $_clearField(4);
  @$pb.TagNumber(4)
  SavedUserObject ensureUserObject() => $_ensure(2);

  @$pb.TagNumber(5)
  SavedAsset get asset => $_getN(3);
  @$pb.TagNumber(5)
  set asset(SavedAsset v) { $_setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasAsset() => $_has(3);
  @$pb.TagNumber(5)
  void clearAsset() => $_clearField(5);
  @$pb.TagNumber(5)
  SavedAsset ensureAsset() => $_ensure(3);

  @$pb.TagNumber(6)
  SavedFunction get function => $_getN(4);
  @$pb.TagNumber(6)
  set function(SavedFunction v) { $_setField(6, v); }
  @$pb.TagNumber(6)
  $core.bool hasFunction() => $_has(4);
  @$pb.TagNumber(6)
  void clearFunction() => $_clearField(6);
  @$pb.TagNumber(6)
  SavedFunction ensureFunction() => $_ensure(4);

  @$pb.TagNumber(7)
  SavedVariable get variable => $_getN(5);
  @$pb.TagNumber(7)
  set variable(SavedVariable v) { $_setField(7, v); }
  @$pb.TagNumber(7)
  $core.bool hasVariable() => $_has(5);
  @$pb.TagNumber(7)
  void clearVariable() => $_clearField(7);
  @$pb.TagNumber(7)
  SavedVariable ensureVariable() => $_ensure(5);

  @$pb.TagNumber(8)
  SavedBareConcreteFunction get bareConcreteFunction => $_getN(6);
  @$pb.TagNumber(8)
  set bareConcreteFunction(SavedBareConcreteFunction v) { $_setField(8, v); }
  @$pb.TagNumber(8)
  $core.bool hasBareConcreteFunction() => $_has(6);
  @$pb.TagNumber(8)
  void clearBareConcreteFunction() => $_clearField(8);
  @$pb.TagNumber(8)
  SavedBareConcreteFunction ensureBareConcreteFunction() => $_ensure(6);

  @$pb.TagNumber(9)
  SavedConstant get constant => $_getN(7);
  @$pb.TagNumber(9)
  set constant(SavedConstant v) { $_setField(9, v); }
  @$pb.TagNumber(9)
  $core.bool hasConstant() => $_has(7);
  @$pb.TagNumber(9)
  void clearConstant() => $_clearField(9);
  @$pb.TagNumber(9)
  SavedConstant ensureConstant() => $_ensure(7);

  @$pb.TagNumber(10)
  SavedResource get resource => $_getN(8);
  @$pb.TagNumber(10)
  set resource(SavedResource v) { $_setField(10, v); }
  @$pb.TagNumber(10)
  $core.bool hasResource() => $_has(8);
  @$pb.TagNumber(10)
  void clearResource() => $_clearField(10);
  @$pb.TagNumber(10)
  SavedResource ensureResource() => $_ensure(8);

  /// Stores the functions used to save and restore this object. At most one of
  /// `saveable_objects` or `registered_saver` is defined for each SavedObject.
  /// See the comment below for the difference between SaveableObject and
  /// registered savers.
  @$pb.TagNumber(11)
  $pb.PbMap<$core.String, SaveableObject> get saveableObjects => $_getMap(9);

  @$pb.TagNumber(12)
  CapturedTensor get capturedTensor => $_getN(10);
  @$pb.TagNumber(12)
  set capturedTensor(CapturedTensor v) { $_setField(12, v); }
  @$pb.TagNumber(12)
  $core.bool hasCapturedTensor() => $_has(10);
  @$pb.TagNumber(12)
  void clearCapturedTensor() => $_clearField(12);
  @$pb.TagNumber(12)
  CapturedTensor ensureCapturedTensor() => $_ensure(10);

  /// The name of the registered class of the form "{package}.{class_name}".
  /// This field is used to search for the registered class at loading time.
  @$pb.TagNumber(13)
  $core.String get registeredName => $_getSZ(11);
  @$pb.TagNumber(13)
  set registeredName($core.String v) { $_setString(11, v); }
  @$pb.TagNumber(13)
  $core.bool hasRegisteredName() => $_has(11);
  @$pb.TagNumber(13)
  void clearRegisteredName() => $_clearField(13);

  /// The user-generated proto storing metadata for this object, to be passed to
  /// the registered classes's _deserialize_from_proto method when this object is
  /// loaded from the SavedModel.
  @$pb.TagNumber(14)
  $1.Any get serializedUserProto => $_getN(12);
  @$pb.TagNumber(14)
  set serializedUserProto($1.Any v) { $_setField(14, v); }
  @$pb.TagNumber(14)
  $core.bool hasSerializedUserProto() => $_has(12);
  @$pb.TagNumber(14)
  void clearSerializedUserProto() => $_clearField(14);
  @$pb.TagNumber(14)
  $1.Any ensureSerializedUserProto() => $_ensure(12);

  /// Ordered list of dependencies that must be loaded before this object.
  /// SavedModel loads with the bottom-up approach, by first creating all objects
  /// (in the order defined by the dependencies), then connecting the edges.
  @$pb.TagNumber(15)
  $pb.PbList<$0.TrackableObjectGraph_TrackableObject_ObjectReference> get dependencies => $_getList(13);

  /// String name of the registered saver. At most one of `saveable_objects` or
  /// `registered_saver` is defined for each SavedObject.
  @$pb.TagNumber(16)
  $core.String get registeredSaver => $_getSZ(14);
  @$pb.TagNumber(16)
  set registeredSaver($core.String v) { $_setString(14, v); }
  @$pb.TagNumber(16)
  $core.bool hasRegisteredSaver() => $_has(14);
  @$pb.TagNumber(16)
  void clearRegisteredSaver() => $_clearField(16);
}

///  A SavedUserObject is an object (in the object-oriented language of the
///  TensorFlow program) of some user- or framework-defined class other than
///  those handled specifically by the other kinds of SavedObjects.
///
///  This object cannot be evaluated as a tensor, and therefore cannot be bound
///  to an input of a function.
class SavedUserObject extends $pb.GeneratedMessage {
  factory SavedUserObject({
    $core.String? identifier,
    $2.VersionDef? version,
  @$core.Deprecated('This field is deprecated.')
    $core.String? metadata,
  }) {
    final $result = create();
    if (identifier != null) {
      $result.identifier = identifier;
    }
    if (version != null) {
      $result.version = version;
    }
    if (metadata != null) {
      // ignore: deprecated_member_use_from_same_package
      $result.metadata = metadata;
    }
    return $result;
  }
  SavedUserObject._() : super();
  factory SavedUserObject.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SavedUserObject.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SavedUserObject', package: const $pb.PackageName(_omitMessageNames ? '' : 'tensorflow'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'identifier')
    ..aOM<$2.VersionDef>(2, _omitFieldNames ? '' : 'version', subBuilder: $2.VersionDef.create)
    ..aOS(3, _omitFieldNames ? '' : 'metadata')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SavedUserObject clone() => SavedUserObject()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SavedUserObject copyWith(void Function(SavedUserObject) updates) => super.copyWith((message) => updates(message as SavedUserObject)) as SavedUserObject;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SavedUserObject create() => SavedUserObject._();
  SavedUserObject createEmptyInstance() => create();
  static $pb.PbList<SavedUserObject> createRepeated() => $pb.PbList<SavedUserObject>();
  @$core.pragma('dart2js:noInline')
  static SavedUserObject getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SavedUserObject>(create);
  static SavedUserObject? _defaultInstance;

  /// Corresponds to a registration of the type to use in the loading program.
  @$pb.TagNumber(1)
  $core.String get identifier => $_getSZ(0);
  @$pb.TagNumber(1)
  set identifier($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasIdentifier() => $_has(0);
  @$pb.TagNumber(1)
  void clearIdentifier() => $_clearField(1);

  /// Version information from the producer of this SavedUserObject.
  @$pb.TagNumber(2)
  $2.VersionDef get version => $_getN(1);
  @$pb.TagNumber(2)
  set version($2.VersionDef v) { $_setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasVersion() => $_has(1);
  @$pb.TagNumber(2)
  void clearVersion() => $_clearField(2);
  @$pb.TagNumber(2)
  $2.VersionDef ensureVersion() => $_ensure(1);

  ///  Metadata for deserializing this object.
  ///
  ///  Deprecated! At the time of deprecation, Keras was the only user of this
  ///  field, and its saving and loading code will be updated shortly.
  ///  Please save your application-specific metadata to a separate file.
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(3)
  $core.String get metadata => $_getSZ(2);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(3)
  set metadata($core.String v) { $_setString(2, v); }
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(3)
  $core.bool hasMetadata() => $_has(2);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(3)
  void clearMetadata() => $_clearField(3);
}

///  A SavedAsset points to an asset in the MetaGraph.
///
///  When bound to a function this object evaluates to a tensor with the absolute
///  filename. Users should not depend on a particular part of the filename to
///  remain stable (e.g. basename could be changed).
class SavedAsset extends $pb.GeneratedMessage {
  factory SavedAsset({
    $core.int? assetFileDefIndex,
  }) {
    final $result = create();
    if (assetFileDefIndex != null) {
      $result.assetFileDefIndex = assetFileDefIndex;
    }
    return $result;
  }
  SavedAsset._() : super();
  factory SavedAsset.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SavedAsset.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SavedAsset', package: const $pb.PackageName(_omitMessageNames ? '' : 'tensorflow'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'assetFileDefIndex', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SavedAsset clone() => SavedAsset()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SavedAsset copyWith(void Function(SavedAsset) updates) => super.copyWith((message) => updates(message as SavedAsset)) as SavedAsset;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SavedAsset create() => SavedAsset._();
  SavedAsset createEmptyInstance() => create();
  static $pb.PbList<SavedAsset> createRepeated() => $pb.PbList<SavedAsset>();
  @$core.pragma('dart2js:noInline')
  static SavedAsset getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SavedAsset>(create);
  static SavedAsset? _defaultInstance;

  ///  Index into `MetaGraphDef.asset_file_def[]` that describes the Asset.
  ///
  ///  Only the field `AssetFileDef.filename` is used. Other fields, such as
  ///  `AssetFileDef.tensor_info`, MUST be ignored.
  @$pb.TagNumber(1)
  $core.int get assetFileDefIndex => $_getIZ(0);
  @$pb.TagNumber(1)
  set assetFileDefIndex($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasAssetFileDefIndex() => $_has(0);
  @$pb.TagNumber(1)
  void clearAssetFileDefIndex() => $_clearField(1);
}

/// A function with multiple signatures, possibly with non-Tensor arguments.
class SavedFunction extends $pb.GeneratedMessage {
  factory SavedFunction({
    $core.Iterable<$core.String>? concreteFunctions,
    FunctionSpec? functionSpec,
  }) {
    final $result = create();
    if (concreteFunctions != null) {
      $result.concreteFunctions.addAll(concreteFunctions);
    }
    if (functionSpec != null) {
      $result.functionSpec = functionSpec;
    }
    return $result;
  }
  SavedFunction._() : super();
  factory SavedFunction.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SavedFunction.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SavedFunction', package: const $pb.PackageName(_omitMessageNames ? '' : 'tensorflow'), createEmptyInstance: create)
    ..pPS(1, _omitFieldNames ? '' : 'concreteFunctions')
    ..aOM<FunctionSpec>(2, _omitFieldNames ? '' : 'functionSpec', subBuilder: FunctionSpec.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SavedFunction clone() => SavedFunction()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SavedFunction copyWith(void Function(SavedFunction) updates) => super.copyWith((message) => updates(message as SavedFunction)) as SavedFunction;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SavedFunction create() => SavedFunction._();
  SavedFunction createEmptyInstance() => create();
  static $pb.PbList<SavedFunction> createRepeated() => $pb.PbList<SavedFunction>();
  @$core.pragma('dart2js:noInline')
  static SavedFunction getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SavedFunction>(create);
  static SavedFunction? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<$core.String> get concreteFunctions => $_getList(0);

  @$pb.TagNumber(2)
  FunctionSpec get functionSpec => $_getN(1);
  @$pb.TagNumber(2)
  set functionSpec(FunctionSpec v) { $_setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasFunctionSpec() => $_has(1);
  @$pb.TagNumber(2)
  void clearFunctionSpec() => $_clearField(2);
  @$pb.TagNumber(2)
  FunctionSpec ensureFunctionSpec() => $_ensure(1);
}

class CapturedTensor extends $pb.GeneratedMessage {
  factory CapturedTensor({
    $core.String? name,
    $core.String? concreteFunction,
  }) {
    final $result = create();
    if (name != null) {
      $result.name = name;
    }
    if (concreteFunction != null) {
      $result.concreteFunction = concreteFunction;
    }
    return $result;
  }
  CapturedTensor._() : super();
  factory CapturedTensor.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CapturedTensor.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CapturedTensor', package: const $pb.PackageName(_omitMessageNames ? '' : 'tensorflow'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'name')
    ..aOS(2, _omitFieldNames ? '' : 'concreteFunction')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CapturedTensor clone() => CapturedTensor()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CapturedTensor copyWith(void Function(CapturedTensor) updates) => super.copyWith((message) => updates(message as CapturedTensor)) as CapturedTensor;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CapturedTensor create() => CapturedTensor._();
  CapturedTensor createEmptyInstance() => create();
  static $pb.PbList<CapturedTensor> createRepeated() => $pb.PbList<CapturedTensor>();
  @$core.pragma('dart2js:noInline')
  static CapturedTensor getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CapturedTensor>(create);
  static CapturedTensor? _defaultInstance;

  /// Name of captured tensor
  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => $_clearField(1);

  /// Name of concrete function which contains the computed graph tensor.
  @$pb.TagNumber(2)
  $core.String get concreteFunction => $_getSZ(1);
  @$pb.TagNumber(2)
  set concreteFunction($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasConcreteFunction() => $_has(1);
  @$pb.TagNumber(2)
  void clearConcreteFunction() => $_clearField(2);
}

/// Stores low-level information about a concrete function. Referenced in either
/// a SavedFunction or a SavedBareConcreteFunction.
class SavedConcreteFunction extends $pb.GeneratedMessage {
  factory SavedConcreteFunction({
    $core.Iterable<$core.int>? boundInputs,
    $3.StructuredValue? canonicalizedInputSignature,
    $3.StructuredValue? outputSignature,
  }) {
    final $result = create();
    if (boundInputs != null) {
      $result.boundInputs.addAll(boundInputs);
    }
    if (canonicalizedInputSignature != null) {
      $result.canonicalizedInputSignature = canonicalizedInputSignature;
    }
    if (outputSignature != null) {
      $result.outputSignature = outputSignature;
    }
    return $result;
  }
  SavedConcreteFunction._() : super();
  factory SavedConcreteFunction.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SavedConcreteFunction.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SavedConcreteFunction', package: const $pb.PackageName(_omitMessageNames ? '' : 'tensorflow'), createEmptyInstance: create)
    ..p<$core.int>(2, _omitFieldNames ? '' : 'boundInputs', $pb.PbFieldType.K3)
    ..aOM<$3.StructuredValue>(3, _omitFieldNames ? '' : 'canonicalizedInputSignature', subBuilder: $3.StructuredValue.create)
    ..aOM<$3.StructuredValue>(4, _omitFieldNames ? '' : 'outputSignature', subBuilder: $3.StructuredValue.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SavedConcreteFunction clone() => SavedConcreteFunction()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SavedConcreteFunction copyWith(void Function(SavedConcreteFunction) updates) => super.copyWith((message) => updates(message as SavedConcreteFunction)) as SavedConcreteFunction;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SavedConcreteFunction create() => SavedConcreteFunction._();
  SavedConcreteFunction createEmptyInstance() => create();
  static $pb.PbList<SavedConcreteFunction> createRepeated() => $pb.PbList<SavedConcreteFunction>();
  @$core.pragma('dart2js:noInline')
  static SavedConcreteFunction getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SavedConcreteFunction>(create);
  static SavedConcreteFunction? _defaultInstance;

  @$pb.TagNumber(2)
  $pb.PbList<$core.int> get boundInputs => $_getList(0);

  /// Input in canonicalized form that was received to create this concrete
  /// function.
  @$pb.TagNumber(3)
  $3.StructuredValue get canonicalizedInputSignature => $_getN(1);
  @$pb.TagNumber(3)
  set canonicalizedInputSignature($3.StructuredValue v) { $_setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasCanonicalizedInputSignature() => $_has(1);
  @$pb.TagNumber(3)
  void clearCanonicalizedInputSignature() => $_clearField(3);
  @$pb.TagNumber(3)
  $3.StructuredValue ensureCanonicalizedInputSignature() => $_ensure(1);

  /// Output that was the return value of this function after replacing all
  /// Tensors with TensorSpecs. This can be an arbitrary nested function and will
  /// be used to reconstruct the full structure from pure tensors.
  @$pb.TagNumber(4)
  $3.StructuredValue get outputSignature => $_getN(2);
  @$pb.TagNumber(4)
  set outputSignature($3.StructuredValue v) { $_setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasOutputSignature() => $_has(2);
  @$pb.TagNumber(4)
  void clearOutputSignature() => $_clearField(4);
  @$pb.TagNumber(4)
  $3.StructuredValue ensureOutputSignature() => $_ensure(2);
}

class SavedBareConcreteFunction extends $pb.GeneratedMessage {
  factory SavedBareConcreteFunction({
    $core.String? concreteFunctionName,
    $core.Iterable<$core.String>? argumentKeywords,
    $fixnum.Int64? allowedPositionalArguments,
    FunctionSpec? functionSpec,
  }) {
    final $result = create();
    if (concreteFunctionName != null) {
      $result.concreteFunctionName = concreteFunctionName;
    }
    if (argumentKeywords != null) {
      $result.argumentKeywords.addAll(argumentKeywords);
    }
    if (allowedPositionalArguments != null) {
      $result.allowedPositionalArguments = allowedPositionalArguments;
    }
    if (functionSpec != null) {
      $result.functionSpec = functionSpec;
    }
    return $result;
  }
  SavedBareConcreteFunction._() : super();
  factory SavedBareConcreteFunction.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SavedBareConcreteFunction.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SavedBareConcreteFunction', package: const $pb.PackageName(_omitMessageNames ? '' : 'tensorflow'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'concreteFunctionName')
    ..pPS(2, _omitFieldNames ? '' : 'argumentKeywords')
    ..aInt64(3, _omitFieldNames ? '' : 'allowedPositionalArguments')
    ..aOM<FunctionSpec>(4, _omitFieldNames ? '' : 'functionSpec', subBuilder: FunctionSpec.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SavedBareConcreteFunction clone() => SavedBareConcreteFunction()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SavedBareConcreteFunction copyWith(void Function(SavedBareConcreteFunction) updates) => super.copyWith((message) => updates(message as SavedBareConcreteFunction)) as SavedBareConcreteFunction;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SavedBareConcreteFunction create() => SavedBareConcreteFunction._();
  SavedBareConcreteFunction createEmptyInstance() => create();
  static $pb.PbList<SavedBareConcreteFunction> createRepeated() => $pb.PbList<SavedBareConcreteFunction>();
  @$core.pragma('dart2js:noInline')
  static SavedBareConcreteFunction getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SavedBareConcreteFunction>(create);
  static SavedBareConcreteFunction? _defaultInstance;

  /// Identifies a SavedConcreteFunction.
  @$pb.TagNumber(1)
  $core.String get concreteFunctionName => $_getSZ(0);
  @$pb.TagNumber(1)
  set concreteFunctionName($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasConcreteFunctionName() => $_has(0);
  @$pb.TagNumber(1)
  void clearConcreteFunctionName() => $_clearField(1);

  /// A sequence of unique strings, one per Tensor argument.
  @$pb.TagNumber(2)
  $pb.PbList<$core.String> get argumentKeywords => $_getList(1);

  /// The prefix of `argument_keywords` which may be identified by position.
  @$pb.TagNumber(3)
  $fixnum.Int64 get allowedPositionalArguments => $_getI64(2);
  @$pb.TagNumber(3)
  set allowedPositionalArguments($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasAllowedPositionalArguments() => $_has(2);
  @$pb.TagNumber(3)
  void clearAllowedPositionalArguments() => $_clearField(3);

  /// The spec of the function that this ConcreteFunction is traced from. This
  /// allows the ConcreteFunction to be called with nest structure inputs. This
  /// field may not be populated. If this field is absent, the concrete function
  /// can only be called with flat inputs.
  /// TODO(b/169361281): support calling saved ConcreteFunction with structured
  /// inputs in C++ SavedModel API.
  @$pb.TagNumber(4)
  FunctionSpec get functionSpec => $_getN(3);
  @$pb.TagNumber(4)
  set functionSpec(FunctionSpec v) { $_setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasFunctionSpec() => $_has(3);
  @$pb.TagNumber(4)
  void clearFunctionSpec() => $_clearField(4);
  @$pb.TagNumber(4)
  FunctionSpec ensureFunctionSpec() => $_ensure(3);
}

class SavedConstant extends $pb.GeneratedMessage {
  factory SavedConstant({
    $core.String? operation,
  }) {
    final $result = create();
    if (operation != null) {
      $result.operation = operation;
    }
    return $result;
  }
  SavedConstant._() : super();
  factory SavedConstant.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SavedConstant.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SavedConstant', package: const $pb.PackageName(_omitMessageNames ? '' : 'tensorflow'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'operation')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SavedConstant clone() => SavedConstant()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SavedConstant copyWith(void Function(SavedConstant) updates) => super.copyWith((message) => updates(message as SavedConstant)) as SavedConstant;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SavedConstant create() => SavedConstant._();
  SavedConstant createEmptyInstance() => create();
  static $pb.PbList<SavedConstant> createRepeated() => $pb.PbList<SavedConstant>();
  @$core.pragma('dart2js:noInline')
  static SavedConstant getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SavedConstant>(create);
  static SavedConstant? _defaultInstance;

  /// An Operation name for a ConstantOp in this SavedObjectGraph's MetaGraph.
  @$pb.TagNumber(1)
  $core.String get operation => $_getSZ(0);
  @$pb.TagNumber(1)
  set operation($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasOperation() => $_has(0);
  @$pb.TagNumber(1)
  void clearOperation() => $_clearField(1);
}

/// Represents a Variable that is initialized by loading the contents from the
/// checkpoint.
class SavedVariable extends $pb.GeneratedMessage {
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
    final $result = create();
    if (dtype != null) {
      $result.dtype = dtype;
    }
    if (shape != null) {
      $result.shape = shape;
    }
    if (trainable != null) {
      $result.trainable = trainable;
    }
    if (synchronization != null) {
      $result.synchronization = synchronization;
    }
    if (aggregation != null) {
      $result.aggregation = aggregation;
    }
    if (name != null) {
      $result.name = name;
    }
    if (device != null) {
      $result.device = device;
    }
    if (experimentalDistributedVariableComponents != null) {
      $result.experimentalDistributedVariableComponents.addAll(experimentalDistributedVariableComponents);
    }
    return $result;
  }
  SavedVariable._() : super();
  factory SavedVariable.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SavedVariable.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SavedVariable', package: const $pb.PackageName(_omitMessageNames ? '' : 'tensorflow'), createEmptyInstance: create)
    ..e<$5.DataType>(1, _omitFieldNames ? '' : 'dtype', $pb.PbFieldType.OE, defaultOrMaker: $5.DataType.DT_INVALID, valueOf: $5.DataType.valueOf, enumValues: $5.DataType.values)
    ..aOM<$4.TensorShapeProto>(2, _omitFieldNames ? '' : 'shape', subBuilder: $4.TensorShapeProto.create)
    ..aOB(3, _omitFieldNames ? '' : 'trainable')
    ..e<$6.VariableSynchronization>(4, _omitFieldNames ? '' : 'synchronization', $pb.PbFieldType.OE, defaultOrMaker: $6.VariableSynchronization.VARIABLE_SYNCHRONIZATION_AUTO, valueOf: $6.VariableSynchronization.valueOf, enumValues: $6.VariableSynchronization.values)
    ..e<$6.VariableAggregation>(5, _omitFieldNames ? '' : 'aggregation', $pb.PbFieldType.OE, defaultOrMaker: $6.VariableAggregation.VARIABLE_AGGREGATION_NONE, valueOf: $6.VariableAggregation.valueOf, enumValues: $6.VariableAggregation.values)
    ..aOS(6, _omitFieldNames ? '' : 'name')
    ..aOS(7, _omitFieldNames ? '' : 'device')
    ..pc<SavedVariable>(8, _omitFieldNames ? '' : 'experimentalDistributedVariableComponents', $pb.PbFieldType.PM, subBuilder: SavedVariable.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SavedVariable clone() => SavedVariable()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SavedVariable copyWith(void Function(SavedVariable) updates) => super.copyWith((message) => updates(message as SavedVariable)) as SavedVariable;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SavedVariable create() => SavedVariable._();
  SavedVariable createEmptyInstance() => create();
  static $pb.PbList<SavedVariable> createRepeated() => $pb.PbList<SavedVariable>();
  @$core.pragma('dart2js:noInline')
  static SavedVariable getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SavedVariable>(create);
  static SavedVariable? _defaultInstance;

  @$pb.TagNumber(1)
  $5.DataType get dtype => $_getN(0);
  @$pb.TagNumber(1)
  set dtype($5.DataType v) { $_setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasDtype() => $_has(0);
  @$pb.TagNumber(1)
  void clearDtype() => $_clearField(1);

  @$pb.TagNumber(2)
  $4.TensorShapeProto get shape => $_getN(1);
  @$pb.TagNumber(2)
  set shape($4.TensorShapeProto v) { $_setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasShape() => $_has(1);
  @$pb.TagNumber(2)
  void clearShape() => $_clearField(2);
  @$pb.TagNumber(2)
  $4.TensorShapeProto ensureShape() => $_ensure(1);

  @$pb.TagNumber(3)
  $core.bool get trainable => $_getBF(2);
  @$pb.TagNumber(3)
  set trainable($core.bool v) { $_setBool(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasTrainable() => $_has(2);
  @$pb.TagNumber(3)
  void clearTrainable() => $_clearField(3);

  @$pb.TagNumber(4)
  $6.VariableSynchronization get synchronization => $_getN(3);
  @$pb.TagNumber(4)
  set synchronization($6.VariableSynchronization v) { $_setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasSynchronization() => $_has(3);
  @$pb.TagNumber(4)
  void clearSynchronization() => $_clearField(4);

  @$pb.TagNumber(5)
  $6.VariableAggregation get aggregation => $_getN(4);
  @$pb.TagNumber(5)
  set aggregation($6.VariableAggregation v) { $_setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasAggregation() => $_has(4);
  @$pb.TagNumber(5)
  void clearAggregation() => $_clearField(5);

  @$pb.TagNumber(6)
  $core.String get name => $_getSZ(5);
  @$pb.TagNumber(6)
  set name($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasName() => $_has(5);
  @$pb.TagNumber(6)
  void clearName() => $_clearField(6);

  @$pb.TagNumber(7)
  $core.String get device => $_getSZ(6);
  @$pb.TagNumber(7)
  set device($core.String v) { $_setString(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasDevice() => $_has(6);
  @$pb.TagNumber(7)
  void clearDevice() => $_clearField(7);

  ///  List of component variables for a distributed variable.
  ///
  ///  When this field is non-empty, the SavedVariable will be assumed
  ///  to be a distributed variable defined by the components listed here.
  ///
  ///  This is only supported by experimental loaders at the moment.
  @$pb.TagNumber(8)
  $pb.PbList<SavedVariable> get experimentalDistributedVariableComponents => $_getList(7);
}

/// Represents `FunctionSpec` used in `Function`. This represents a
/// function that has been wrapped as a TensorFlow `Function`.
class FunctionSpec extends $pb.GeneratedMessage {
  factory FunctionSpec({
    $3.StructuredValue? fullargspec,
    $core.bool? isMethod,
    $3.StructuredValue? inputSignature,
    FunctionSpec_JitCompile? jitCompile,
  }) {
    final $result = create();
    if (fullargspec != null) {
      $result.fullargspec = fullargspec;
    }
    if (isMethod != null) {
      $result.isMethod = isMethod;
    }
    if (inputSignature != null) {
      $result.inputSignature = inputSignature;
    }
    if (jitCompile != null) {
      $result.jitCompile = jitCompile;
    }
    return $result;
  }
  FunctionSpec._() : super();
  factory FunctionSpec.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory FunctionSpec.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'FunctionSpec', package: const $pb.PackageName(_omitMessageNames ? '' : 'tensorflow'), createEmptyInstance: create)
    ..aOM<$3.StructuredValue>(1, _omitFieldNames ? '' : 'fullargspec', subBuilder: $3.StructuredValue.create)
    ..aOB(2, _omitFieldNames ? '' : 'isMethod')
    ..aOM<$3.StructuredValue>(5, _omitFieldNames ? '' : 'inputSignature', subBuilder: $3.StructuredValue.create)
    ..e<FunctionSpec_JitCompile>(6, _omitFieldNames ? '' : 'jitCompile', $pb.PbFieldType.OE, defaultOrMaker: FunctionSpec_JitCompile.DEFAULT, valueOf: FunctionSpec_JitCompile.valueOf, enumValues: FunctionSpec_JitCompile.values)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  FunctionSpec clone() => FunctionSpec()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  FunctionSpec copyWith(void Function(FunctionSpec) updates) => super.copyWith((message) => updates(message as FunctionSpec)) as FunctionSpec;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static FunctionSpec create() => FunctionSpec._();
  FunctionSpec createEmptyInstance() => create();
  static $pb.PbList<FunctionSpec> createRepeated() => $pb.PbList<FunctionSpec>();
  @$core.pragma('dart2js:noInline')
  static FunctionSpec getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<FunctionSpec>(create);
  static FunctionSpec? _defaultInstance;

  /// Full arg spec from inspect.getfullargspec().
  @$pb.TagNumber(1)
  $3.StructuredValue get fullargspec => $_getN(0);
  @$pb.TagNumber(1)
  set fullargspec($3.StructuredValue v) { $_setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasFullargspec() => $_has(0);
  @$pb.TagNumber(1)
  void clearFullargspec() => $_clearField(1);
  @$pb.TagNumber(1)
  $3.StructuredValue ensureFullargspec() => $_ensure(0);

  /// Whether this represents a class method.
  @$pb.TagNumber(2)
  $core.bool get isMethod => $_getBF(1);
  @$pb.TagNumber(2)
  set isMethod($core.bool v) { $_setBool(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasIsMethod() => $_has(1);
  @$pb.TagNumber(2)
  void clearIsMethod() => $_clearField(2);

  /// The input signature, if specified.
  @$pb.TagNumber(5)
  $3.StructuredValue get inputSignature => $_getN(2);
  @$pb.TagNumber(5)
  set inputSignature($3.StructuredValue v) { $_setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasInputSignature() => $_has(2);
  @$pb.TagNumber(5)
  void clearInputSignature() => $_clearField(5);
  @$pb.TagNumber(5)
  $3.StructuredValue ensureInputSignature() => $_ensure(2);

  @$pb.TagNumber(6)
  FunctionSpec_JitCompile get jitCompile => $_getN(3);
  @$pb.TagNumber(6)
  set jitCompile(FunctionSpec_JitCompile v) { $_setField(6, v); }
  @$pb.TagNumber(6)
  $core.bool hasJitCompile() => $_has(3);
  @$pb.TagNumber(6)
  void clearJitCompile() => $_clearField(6);
}

/// A SavedResource represents a TF object that holds state during its lifetime.
/// An object of this type can have a reference to a:
/// create_resource() and an initialize() function.
class SavedResource extends $pb.GeneratedMessage {
  factory SavedResource({
    $core.String? device,
  }) {
    final $result = create();
    if (device != null) {
      $result.device = device;
    }
    return $result;
  }
  SavedResource._() : super();
  factory SavedResource.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SavedResource.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SavedResource', package: const $pb.PackageName(_omitMessageNames ? '' : 'tensorflow'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'device')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SavedResource clone() => SavedResource()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SavedResource copyWith(void Function(SavedResource) updates) => super.copyWith((message) => updates(message as SavedResource)) as SavedResource;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SavedResource create() => SavedResource._();
  SavedResource createEmptyInstance() => create();
  static $pb.PbList<SavedResource> createRepeated() => $pb.PbList<SavedResource>();
  @$core.pragma('dart2js:noInline')
  static SavedResource getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SavedResource>(create);
  static SavedResource? _defaultInstance;

  /// A device specification indicating a required placement for the resource
  /// creation function, e.g. "CPU". An empty string allows the user to select a
  /// device.
  @$pb.TagNumber(1)
  $core.String get device => $_getSZ(0);
  @$pb.TagNumber(1)
  set device($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasDevice() => $_has(0);
  @$pb.TagNumber(1)
  void clearDevice() => $_clearField(1);
}

class SaveableObject extends $pb.GeneratedMessage {
  factory SaveableObject({
    $core.int? saveFunction,
    $core.int? restoreFunction,
  }) {
    final $result = create();
    if (saveFunction != null) {
      $result.saveFunction = saveFunction;
    }
    if (restoreFunction != null) {
      $result.restoreFunction = restoreFunction;
    }
    return $result;
  }
  SaveableObject._() : super();
  factory SaveableObject.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SaveableObject.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SaveableObject', package: const $pb.PackageName(_omitMessageNames ? '' : 'tensorflow'), createEmptyInstance: create)
    ..a<$core.int>(2, _omitFieldNames ? '' : 'saveFunction', $pb.PbFieldType.O3)
    ..a<$core.int>(3, _omitFieldNames ? '' : 'restoreFunction', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SaveableObject clone() => SaveableObject()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SaveableObject copyWith(void Function(SaveableObject) updates) => super.copyWith((message) => updates(message as SaveableObject)) as SaveableObject;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SaveableObject create() => SaveableObject._();
  SaveableObject createEmptyInstance() => create();
  static $pb.PbList<SaveableObject> createRepeated() => $pb.PbList<SaveableObject>();
  @$core.pragma('dart2js:noInline')
  static SaveableObject getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SaveableObject>(create);
  static SaveableObject? _defaultInstance;

  /// Node ids of concrete functions for saving and loading from a checkpoint.
  /// These functions save and restore directly from tensors.
  @$pb.TagNumber(2)
  $core.int get saveFunction => $_getIZ(0);
  @$pb.TagNumber(2)
  set saveFunction($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(2)
  $core.bool hasSaveFunction() => $_has(0);
  @$pb.TagNumber(2)
  void clearSaveFunction() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.int get restoreFunction => $_getIZ(1);
  @$pb.TagNumber(3)
  set restoreFunction($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(3)
  $core.bool hasRestoreFunction() => $_has(1);
  @$pb.TagNumber(3)
  void clearRestoreFunction() => $_clearField(3);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
