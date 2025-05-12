//
//  Generated code. Do not modify.
//  source: tensorflow/core/protobuf/trackable_object_graph.proto
//
// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import '../../../google/protobuf/wrappers.pb.dart' as $0;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

class TrackableObjectGraph_TrackableObject_ObjectReference
    extends $pb.GeneratedMessage {
  factory TrackableObjectGraph_TrackableObject_ObjectReference({
    $core.int? nodeId,
    $core.String? localName,
  }) {
    final $result = create();
    if (nodeId != null) {
      $result.nodeId = nodeId;
    }
    if (localName != null) {
      $result.localName = localName;
    }
    return $result;
  }
  TrackableObjectGraph_TrackableObject_ObjectReference._() : super();
  factory TrackableObjectGraph_TrackableObject_ObjectReference.fromBuffer(
          $core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory TrackableObjectGraph_TrackableObject_ObjectReference.fromJson(
          $core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames
          ? ''
          : 'TrackableObjectGraph.TrackableObject.ObjectReference',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'tensorflow'),
      createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'nodeId', $pb.PbFieldType.O3)
    ..aOS(2, _omitFieldNames ? '' : 'localName')
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  TrackableObjectGraph_TrackableObject_ObjectReference clone() =>
      TrackableObjectGraph_TrackableObject_ObjectReference()
        ..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  TrackableObjectGraph_TrackableObject_ObjectReference copyWith(
          void Function(TrackableObjectGraph_TrackableObject_ObjectReference)
              updates) =>
      super.copyWith((message) => updates(
              message as TrackableObjectGraph_TrackableObject_ObjectReference))
          as TrackableObjectGraph_TrackableObject_ObjectReference;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TrackableObjectGraph_TrackableObject_ObjectReference create() =>
      TrackableObjectGraph_TrackableObject_ObjectReference._();
  TrackableObjectGraph_TrackableObject_ObjectReference createEmptyInstance() =>
      create();
  static $pb.PbList<TrackableObjectGraph_TrackableObject_ObjectReference>
      createRepeated() =>
          $pb.PbList<TrackableObjectGraph_TrackableObject_ObjectReference>();
  @$core.pragma('dart2js:noInline')
  static TrackableObjectGraph_TrackableObject_ObjectReference getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<
          TrackableObjectGraph_TrackableObject_ObjectReference>(create);
  static TrackableObjectGraph_TrackableObject_ObjectReference? _defaultInstance;

  /// An index into `TrackableObjectGraph.nodes`, indicating the object
  /// being referenced.
  @$pb.TagNumber(1)
  $core.int get nodeId => $_getIZ(0);
  @$pb.TagNumber(1)
  set nodeId($core.int v) {
    $_setSignedInt32(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasNodeId() => $_has(0);
  @$pb.TagNumber(1)
  void clearNodeId() => $_clearField(1);

  /// A user-provided name for the edge.
  @$pb.TagNumber(2)
  $core.String get localName => $_getSZ(1);
  @$pb.TagNumber(2)
  set localName($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasLocalName() => $_has(1);
  @$pb.TagNumber(2)
  void clearLocalName() => $_clearField(2);
}

class TrackableObjectGraph_TrackableObject_SerializedTensor
    extends $pb.GeneratedMessage {
  factory TrackableObjectGraph_TrackableObject_SerializedTensor({
    $core.String? name,
    $core.String? fullName,
    $core.String? checkpointKey,
    $core.bool? optionalRestore,
  }) {
    final $result = create();
    if (name != null) {
      $result.name = name;
    }
    if (fullName != null) {
      $result.fullName = fullName;
    }
    if (checkpointKey != null) {
      $result.checkpointKey = checkpointKey;
    }
    if (optionalRestore != null) {
      $result.optionalRestore = optionalRestore;
    }
    return $result;
  }
  TrackableObjectGraph_TrackableObject_SerializedTensor._() : super();
  factory TrackableObjectGraph_TrackableObject_SerializedTensor.fromBuffer(
          $core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory TrackableObjectGraph_TrackableObject_SerializedTensor.fromJson(
          $core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames
          ? ''
          : 'TrackableObjectGraph.TrackableObject.SerializedTensor',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'tensorflow'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'name')
    ..aOS(2, _omitFieldNames ? '' : 'fullName')
    ..aOS(3, _omitFieldNames ? '' : 'checkpointKey')
    ..aOB(4, _omitFieldNames ? '' : 'optionalRestore')
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  TrackableObjectGraph_TrackableObject_SerializedTensor clone() =>
      TrackableObjectGraph_TrackableObject_SerializedTensor()
        ..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  TrackableObjectGraph_TrackableObject_SerializedTensor copyWith(
          void Function(TrackableObjectGraph_TrackableObject_SerializedTensor)
              updates) =>
      super.copyWith((message) => updates(
              message as TrackableObjectGraph_TrackableObject_SerializedTensor))
          as TrackableObjectGraph_TrackableObject_SerializedTensor;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TrackableObjectGraph_TrackableObject_SerializedTensor create() =>
      TrackableObjectGraph_TrackableObject_SerializedTensor._();
  TrackableObjectGraph_TrackableObject_SerializedTensor createEmptyInstance() =>
      create();
  static $pb.PbList<TrackableObjectGraph_TrackableObject_SerializedTensor>
      createRepeated() =>
          $pb.PbList<TrackableObjectGraph_TrackableObject_SerializedTensor>();
  @$core.pragma('dart2js:noInline')
  static TrackableObjectGraph_TrackableObject_SerializedTensor getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<
          TrackableObjectGraph_TrackableObject_SerializedTensor>(create);
  static TrackableObjectGraph_TrackableObject_SerializedTensor?
      _defaultInstance;

  /// A name for the Tensor. Simple variables have only one
  /// `SerializedTensor` named "VARIABLE_VALUE" by convention. This value may
  /// be restored on object creation as an optimization.
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

  /// The full name of the variable/tensor, if applicable. Used to allow
  /// name-based loading of checkpoints which were saved using an
  /// object-based API. Should match the checkpoint key which would have been
  /// assigned by tf.train.Saver.
  @$pb.TagNumber(2)
  $core.String get fullName => $_getSZ(1);
  @$pb.TagNumber(2)
  set fullName($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasFullName() => $_has(1);
  @$pb.TagNumber(2)
  void clearFullName() => $_clearField(2);

  /// The generated name of the Tensor in the checkpoint.
  @$pb.TagNumber(3)
  $core.String get checkpointKey => $_getSZ(2);
  @$pb.TagNumber(3)
  set checkpointKey($core.String v) {
    $_setString(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasCheckpointKey() => $_has(2);
  @$pb.TagNumber(3)
  void clearCheckpointKey() => $_clearField(3);

  /// Whether checkpoints should be considered as matching even without this
  /// value restored. Used for non-critical values which don't affect the
  /// TensorFlow graph, such as layer configurations.
  @$pb.TagNumber(4)
  $core.bool get optionalRestore => $_getBF(3);
  @$pb.TagNumber(4)
  set optionalRestore($core.bool v) {
    $_setBool(3, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasOptionalRestore() => $_has(3);
  @$pb.TagNumber(4)
  void clearOptionalRestore() => $_clearField(4);
}

class TrackableObjectGraph_TrackableObject_SlotVariableReference
    extends $pb.GeneratedMessage {
  factory TrackableObjectGraph_TrackableObject_SlotVariableReference({
    $core.int? originalVariableNodeId,
    $core.String? slotName,
    $core.int? slotVariableNodeId,
  }) {
    final $result = create();
    if (originalVariableNodeId != null) {
      $result.originalVariableNodeId = originalVariableNodeId;
    }
    if (slotName != null) {
      $result.slotName = slotName;
    }
    if (slotVariableNodeId != null) {
      $result.slotVariableNodeId = slotVariableNodeId;
    }
    return $result;
  }
  TrackableObjectGraph_TrackableObject_SlotVariableReference._() : super();
  factory TrackableObjectGraph_TrackableObject_SlotVariableReference.fromBuffer(
          $core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory TrackableObjectGraph_TrackableObject_SlotVariableReference.fromJson(
          $core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames
          ? ''
          : 'TrackableObjectGraph.TrackableObject.SlotVariableReference',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'tensorflow'),
      createEmptyInstance: create)
    ..a<$core.int>(
        1, _omitFieldNames ? '' : 'originalVariableNodeId', $pb.PbFieldType.O3)
    ..aOS(2, _omitFieldNames ? '' : 'slotName')
    ..a<$core.int>(
        3, _omitFieldNames ? '' : 'slotVariableNodeId', $pb.PbFieldType.O3)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  TrackableObjectGraph_TrackableObject_SlotVariableReference clone() =>
      TrackableObjectGraph_TrackableObject_SlotVariableReference()
        ..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  TrackableObjectGraph_TrackableObject_SlotVariableReference copyWith(
          void Function(
                  TrackableObjectGraph_TrackableObject_SlotVariableReference)
              updates) =>
      super.copyWith((message) => updates(message
              as TrackableObjectGraph_TrackableObject_SlotVariableReference))
          as TrackableObjectGraph_TrackableObject_SlotVariableReference;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TrackableObjectGraph_TrackableObject_SlotVariableReference create() =>
      TrackableObjectGraph_TrackableObject_SlotVariableReference._();
  TrackableObjectGraph_TrackableObject_SlotVariableReference
      createEmptyInstance() => create();
  static $pb.PbList<TrackableObjectGraph_TrackableObject_SlotVariableReference>
      createRepeated() => $pb.PbList<
          TrackableObjectGraph_TrackableObject_SlotVariableReference>();
  @$core.pragma('dart2js:noInline')
  static TrackableObjectGraph_TrackableObject_SlotVariableReference
      getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<
          TrackableObjectGraph_TrackableObject_SlotVariableReference>(create);
  static TrackableObjectGraph_TrackableObject_SlotVariableReference?
      _defaultInstance;

  /// An index into `TrackableObjectGraph.nodes`, indicating the
  /// variable object this slot was created for.
  @$pb.TagNumber(1)
  $core.int get originalVariableNodeId => $_getIZ(0);
  @$pb.TagNumber(1)
  set originalVariableNodeId($core.int v) {
    $_setSignedInt32(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasOriginalVariableNodeId() => $_has(0);
  @$pb.TagNumber(1)
  void clearOriginalVariableNodeId() => $_clearField(1);

  /// The name of the slot (e.g. "m"/"v").
  @$pb.TagNumber(2)
  $core.String get slotName => $_getSZ(1);
  @$pb.TagNumber(2)
  set slotName($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasSlotName() => $_has(1);
  @$pb.TagNumber(2)
  void clearSlotName() => $_clearField(2);

  /// An index into `TrackableObjectGraph.nodes`, indicating the
  /// `Object` with the value of the slot variable.
  @$pb.TagNumber(3)
  $core.int get slotVariableNodeId => $_getIZ(2);
  @$pb.TagNumber(3)
  set slotVariableNodeId($core.int v) {
    $_setSignedInt32(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasSlotVariableNodeId() => $_has(2);
  @$pb.TagNumber(3)
  void clearSlotVariableNodeId() => $_clearField(3);
}

class TrackableObjectGraph_TrackableObject extends $pb.GeneratedMessage {
  factory TrackableObjectGraph_TrackableObject({
    $core.Iterable<TrackableObjectGraph_TrackableObject_ObjectReference>?
        children,
    $core.Iterable<TrackableObjectGraph_TrackableObject_SerializedTensor>?
        attributes,
    $core.Iterable<TrackableObjectGraph_TrackableObject_SlotVariableReference>?
        slotVariables,
    RegisteredSaver? registeredSaver,
    $0.BoolValue? hasCheckpointValues,
  }) {
    final $result = create();
    if (children != null) {
      $result.children.addAll(children);
    }
    if (attributes != null) {
      $result.attributes.addAll(attributes);
    }
    if (slotVariables != null) {
      $result.slotVariables.addAll(slotVariables);
    }
    if (registeredSaver != null) {
      $result.registeredSaver = registeredSaver;
    }
    if (hasCheckpointValues != null) {
      $result.hasCheckpointValues = hasCheckpointValues;
    }
    return $result;
  }
  TrackableObjectGraph_TrackableObject._() : super();
  factory TrackableObjectGraph_TrackableObject.fromBuffer(
          $core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory TrackableObjectGraph_TrackableObject.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'TrackableObjectGraph.TrackableObject',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'tensorflow'),
      createEmptyInstance: create)
    ..pc<TrackableObjectGraph_TrackableObject_ObjectReference>(
        1, _omitFieldNames ? '' : 'children', $pb.PbFieldType.PM,
        subBuilder: TrackableObjectGraph_TrackableObject_ObjectReference.create)
    ..pc<TrackableObjectGraph_TrackableObject_SerializedTensor>(
        2, _omitFieldNames ? '' : 'attributes', $pb.PbFieldType.PM,
        subBuilder:
            TrackableObjectGraph_TrackableObject_SerializedTensor.create)
    ..pc<TrackableObjectGraph_TrackableObject_SlotVariableReference>(
        3, _omitFieldNames ? '' : 'slotVariables', $pb.PbFieldType.PM,
        subBuilder:
            TrackableObjectGraph_TrackableObject_SlotVariableReference.create)
    ..aOM<RegisteredSaver>(4, _omitFieldNames ? '' : 'registeredSaver',
        subBuilder: RegisteredSaver.create)
    ..aOM<$0.BoolValue>(5, _omitFieldNames ? '' : 'hasCheckpointValues',
        subBuilder: $0.BoolValue.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  TrackableObjectGraph_TrackableObject clone() =>
      TrackableObjectGraph_TrackableObject()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  TrackableObjectGraph_TrackableObject copyWith(
          void Function(TrackableObjectGraph_TrackableObject) updates) =>
      super.copyWith((message) =>
              updates(message as TrackableObjectGraph_TrackableObject))
          as TrackableObjectGraph_TrackableObject;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TrackableObjectGraph_TrackableObject create() =>
      TrackableObjectGraph_TrackableObject._();
  TrackableObjectGraph_TrackableObject createEmptyInstance() => create();
  static $pb.PbList<TrackableObjectGraph_TrackableObject> createRepeated() =>
      $pb.PbList<TrackableObjectGraph_TrackableObject>();
  @$core.pragma('dart2js:noInline')
  static TrackableObjectGraph_TrackableObject getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<
          TrackableObjectGraph_TrackableObject>(create);
  static TrackableObjectGraph_TrackableObject? _defaultInstance;

  /// Objects which this object depends on.
  @$pb.TagNumber(1)
  $pb.PbList<TrackableObjectGraph_TrackableObject_ObjectReference>
      get children => $_getList(0);

  /// Serialized data specific to this object.
  @$pb.TagNumber(2)
  $pb.PbList<TrackableObjectGraph_TrackableObject_SerializedTensor>
      get attributes => $_getList(1);

  /// Slot variables owned by this object.
  @$pb.TagNumber(3)
  $pb.PbList<TrackableObjectGraph_TrackableObject_SlotVariableReference>
      get slotVariables => $_getList(2);

  /// The registered saver used to save this object. If this saver is not
  /// present when loading the checkpoint, then loading will fail.
  @$pb.TagNumber(4)
  RegisteredSaver get registeredSaver => $_getN(3);
  @$pb.TagNumber(4)
  set registeredSaver(RegisteredSaver v) {
    $_setField(4, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasRegisteredSaver() => $_has(3);
  @$pb.TagNumber(4)
  void clearRegisteredSaver() => $_clearField(4);
  @$pb.TagNumber(4)
  RegisteredSaver ensureRegisteredSaver() => $_ensure(3);

  /// Whether this object has checkpoint values or descendants with checkpoint
  /// values. This is computed at save time to avoid traversing the entire
  /// object graph proto when restoring (which also has to traverse the live
  /// object graph).
  @$pb.TagNumber(5)
  $0.BoolValue get hasCheckpointValues => $_getN(4);
  @$pb.TagNumber(5)
  set hasCheckpointValues($0.BoolValue v) {
    $_setField(5, v);
  }

  @$pb.TagNumber(5)
  $core.bool hasHasCheckpointValues() => $_has(4);
  @$pb.TagNumber(5)
  void clearHasCheckpointValues() => $_clearField(5);
  @$pb.TagNumber(5)
  $0.BoolValue ensureHasCheckpointValues() => $_ensure(4);
}

class TrackableObjectGraph extends $pb.GeneratedMessage {
  factory TrackableObjectGraph({
    $core.Iterable<TrackableObjectGraph_TrackableObject>? nodes,
  }) {
    final $result = create();
    if (nodes != null) {
      $result.nodes.addAll(nodes);
    }
    return $result;
  }
  TrackableObjectGraph._() : super();
  factory TrackableObjectGraph.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory TrackableObjectGraph.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'TrackableObjectGraph',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'tensorflow'),
      createEmptyInstance: create)
    ..pc<TrackableObjectGraph_TrackableObject>(
        1, _omitFieldNames ? '' : 'nodes', $pb.PbFieldType.PM,
        subBuilder: TrackableObjectGraph_TrackableObject.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  TrackableObjectGraph clone() =>
      TrackableObjectGraph()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  TrackableObjectGraph copyWith(void Function(TrackableObjectGraph) updates) =>
      super.copyWith((message) => updates(message as TrackableObjectGraph))
          as TrackableObjectGraph;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TrackableObjectGraph create() => TrackableObjectGraph._();
  TrackableObjectGraph createEmptyInstance() => create();
  static $pb.PbList<TrackableObjectGraph> createRepeated() =>
      $pb.PbList<TrackableObjectGraph>();
  @$core.pragma('dart2js:noInline')
  static TrackableObjectGraph getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<TrackableObjectGraph>(create);
  static TrackableObjectGraph? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<TrackableObjectGraph_TrackableObject> get nodes => $_getList(0);
}

class RegisteredSaver extends $pb.GeneratedMessage {
  factory RegisteredSaver({
    $core.String? name,
    $core.String? objectName,
  }) {
    final $result = create();
    if (name != null) {
      $result.name = name;
    }
    if (objectName != null) {
      $result.objectName = objectName;
    }
    return $result;
  }
  RegisteredSaver._() : super();
  factory RegisteredSaver.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory RegisteredSaver.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'RegisteredSaver',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'tensorflow'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'name')
    ..aOS(2, _omitFieldNames ? '' : 'objectName')
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  RegisteredSaver clone() => RegisteredSaver()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  RegisteredSaver copyWith(void Function(RegisteredSaver) updates) =>
      super.copyWith((message) => updates(message as RegisteredSaver))
          as RegisteredSaver;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RegisteredSaver create() => RegisteredSaver._();
  RegisteredSaver createEmptyInstance() => create();
  static $pb.PbList<RegisteredSaver> createRepeated() =>
      $pb.PbList<RegisteredSaver>();
  @$core.pragma('dart2js:noInline')
  static RegisteredSaver getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<RegisteredSaver>(create);
  static RegisteredSaver? _defaultInstance;

  /// The name of the registered saver/restore function.
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

  /// Unique auto-generated name of the object.
  @$pb.TagNumber(2)
  $core.String get objectName => $_getSZ(1);
  @$pb.TagNumber(2)
  set objectName($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasObjectName() => $_has(1);
  @$pb.TagNumber(2)
  void clearObjectName() => $_clearField(2);
}

const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
