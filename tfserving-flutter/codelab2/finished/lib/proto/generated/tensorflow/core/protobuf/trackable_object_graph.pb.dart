///
//  Generated code. Do not modify.
//  source: tensorflow/core/protobuf/trackable_object_graph.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import '../../../google/protobuf/wrappers.pb.dart' as $0;

class TrackableObjectGraph_TrackableObject_ObjectReference
    extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'TrackableObjectGraph.TrackableObject.ObjectReference',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'tensorflow'),
      createEmptyInstance: create)
    ..a<$core.int>(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'nodeId',
        $pb.PbFieldType.O3)
    ..aOS(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'localName')
    ..hasRequiredFields = false;

  TrackableObjectGraph_TrackableObject_ObjectReference._() : super();
  factory TrackableObjectGraph_TrackableObject_ObjectReference({
    $core.int? nodeId,
    $core.String? localName,
  }) {
    final _result = create();
    if (nodeId != null) {
      _result.nodeId = nodeId;
    }
    if (localName != null) {
      _result.localName = localName;
    }
    return _result;
  }
  factory TrackableObjectGraph_TrackableObject_ObjectReference.fromBuffer(
          $core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory TrackableObjectGraph_TrackableObject_ObjectReference.fromJson(
          $core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
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
          as TrackableObjectGraph_TrackableObject_ObjectReference; // ignore: deprecated_member_use
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

  @$pb.TagNumber(1)
  $core.int get nodeId => $_getIZ(0);
  @$pb.TagNumber(1)
  set nodeId($core.int v) {
    $_setSignedInt32(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasNodeId() => $_has(0);
  @$pb.TagNumber(1)
  void clearNodeId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get localName => $_getSZ(1);
  @$pb.TagNumber(2)
  set localName($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasLocalName() => $_has(1);
  @$pb.TagNumber(2)
  void clearLocalName() => clearField(2);
}

class TrackableObjectGraph_TrackableObject_SerializedTensor
    extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'TrackableObjectGraph.TrackableObject.SerializedTensor',
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
            : 'fullName')
    ..aOS(
        3,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'checkpointKey')
    ..aOB(
        4,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'optionalRestore')
    ..hasRequiredFields = false;

  TrackableObjectGraph_TrackableObject_SerializedTensor._() : super();
  factory TrackableObjectGraph_TrackableObject_SerializedTensor({
    $core.String? name,
    $core.String? fullName,
    $core.String? checkpointKey,
    $core.bool? optionalRestore,
  }) {
    final _result = create();
    if (name != null) {
      _result.name = name;
    }
    if (fullName != null) {
      _result.fullName = fullName;
    }
    if (checkpointKey != null) {
      _result.checkpointKey = checkpointKey;
    }
    if (optionalRestore != null) {
      _result.optionalRestore = optionalRestore;
    }
    return _result;
  }
  factory TrackableObjectGraph_TrackableObject_SerializedTensor.fromBuffer(
          $core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory TrackableObjectGraph_TrackableObject_SerializedTensor.fromJson(
          $core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
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
          as TrackableObjectGraph_TrackableObject_SerializedTensor; // ignore: deprecated_member_use
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
  $core.String get fullName => $_getSZ(1);
  @$pb.TagNumber(2)
  set fullName($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasFullName() => $_has(1);
  @$pb.TagNumber(2)
  void clearFullName() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get checkpointKey => $_getSZ(2);
  @$pb.TagNumber(3)
  set checkpointKey($core.String v) {
    $_setString(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasCheckpointKey() => $_has(2);
  @$pb.TagNumber(3)
  void clearCheckpointKey() => clearField(3);

  @$pb.TagNumber(4)
  $core.bool get optionalRestore => $_getBF(3);
  @$pb.TagNumber(4)
  set optionalRestore($core.bool v) {
    $_setBool(3, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasOptionalRestore() => $_has(3);
  @$pb.TagNumber(4)
  void clearOptionalRestore() => clearField(4);
}

class TrackableObjectGraph_TrackableObject_SlotVariableReference
    extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'TrackableObjectGraph.TrackableObject.SlotVariableReference',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'tensorflow'),
      createEmptyInstance: create)
    ..a<$core.int>(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'originalVariableNodeId',
        $pb.PbFieldType.O3)
    ..aOS(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'slotName')
    ..a<$core.int>(
        3,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'slotVariableNodeId',
        $pb.PbFieldType.O3)
    ..hasRequiredFields = false;

  TrackableObjectGraph_TrackableObject_SlotVariableReference._() : super();
  factory TrackableObjectGraph_TrackableObject_SlotVariableReference({
    $core.int? originalVariableNodeId,
    $core.String? slotName,
    $core.int? slotVariableNodeId,
  }) {
    final _result = create();
    if (originalVariableNodeId != null) {
      _result.originalVariableNodeId = originalVariableNodeId;
    }
    if (slotName != null) {
      _result.slotName = slotName;
    }
    if (slotVariableNodeId != null) {
      _result.slotVariableNodeId = slotVariableNodeId;
    }
    return _result;
  }
  factory TrackableObjectGraph_TrackableObject_SlotVariableReference.fromBuffer(
          $core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory TrackableObjectGraph_TrackableObject_SlotVariableReference.fromJson(
          $core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
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
          as TrackableObjectGraph_TrackableObject_SlotVariableReference; // ignore: deprecated_member_use
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

  @$pb.TagNumber(1)
  $core.int get originalVariableNodeId => $_getIZ(0);
  @$pb.TagNumber(1)
  set originalVariableNodeId($core.int v) {
    $_setSignedInt32(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasOriginalVariableNodeId() => $_has(0);
  @$pb.TagNumber(1)
  void clearOriginalVariableNodeId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get slotName => $_getSZ(1);
  @$pb.TagNumber(2)
  set slotName($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasSlotName() => $_has(1);
  @$pb.TagNumber(2)
  void clearSlotName() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get slotVariableNodeId => $_getIZ(2);
  @$pb.TagNumber(3)
  set slotVariableNodeId($core.int v) {
    $_setSignedInt32(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasSlotVariableNodeId() => $_has(2);
  @$pb.TagNumber(3)
  void clearSlotVariableNodeId() => clearField(3);
}

class TrackableObjectGraph_TrackableObject extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'TrackableObjectGraph.TrackableObject',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'tensorflow'),
      createEmptyInstance: create)
    ..pc<TrackableObjectGraph_TrackableObject_ObjectReference>(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'children',
        $pb.PbFieldType.PM,
        subBuilder: TrackableObjectGraph_TrackableObject_ObjectReference.create)
    ..pc<TrackableObjectGraph_TrackableObject_SerializedTensor>(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'attributes',
        $pb.PbFieldType.PM,
        subBuilder:
            TrackableObjectGraph_TrackableObject_SerializedTensor.create)
    ..pc<TrackableObjectGraph_TrackableObject_SlotVariableReference>(
        3,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'slotVariables',
        $pb.PbFieldType.PM,
        subBuilder:
            TrackableObjectGraph_TrackableObject_SlotVariableReference.create)
    ..aOM<RegisteredSaver>(
        4,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'registeredSaver',
        subBuilder: RegisteredSaver.create)
    ..aOM<$0.BoolValue>(
        5,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'hasCheckpointValues',
        subBuilder: $0.BoolValue.create)
    ..hasRequiredFields = false;

  TrackableObjectGraph_TrackableObject._() : super();
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
    final _result = create();
    if (children != null) {
      _result.children.addAll(children);
    }
    if (attributes != null) {
      _result.attributes.addAll(attributes);
    }
    if (slotVariables != null) {
      _result.slotVariables.addAll(slotVariables);
    }
    if (registeredSaver != null) {
      _result.registeredSaver = registeredSaver;
    }
    if (hasCheckpointValues != null) {
      _result.hasCheckpointValues = hasCheckpointValues;
    }
    return _result;
  }
  factory TrackableObjectGraph_TrackableObject.fromBuffer(
          $core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory TrackableObjectGraph_TrackableObject.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
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
          as TrackableObjectGraph_TrackableObject; // ignore: deprecated_member_use
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

  @$pb.TagNumber(1)
  $core.List<TrackableObjectGraph_TrackableObject_ObjectReference>
      get children => $_getList(0);

  @$pb.TagNumber(2)
  $core.List<TrackableObjectGraph_TrackableObject_SerializedTensor>
      get attributes => $_getList(1);

  @$pb.TagNumber(3)
  $core.List<TrackableObjectGraph_TrackableObject_SlotVariableReference>
      get slotVariables => $_getList(2);

  @$pb.TagNumber(4)
  RegisteredSaver get registeredSaver => $_getN(3);
  @$pb.TagNumber(4)
  set registeredSaver(RegisteredSaver v) {
    setField(4, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasRegisteredSaver() => $_has(3);
  @$pb.TagNumber(4)
  void clearRegisteredSaver() => clearField(4);
  @$pb.TagNumber(4)
  RegisteredSaver ensureRegisteredSaver() => $_ensure(3);

  @$pb.TagNumber(5)
  $0.BoolValue get hasCheckpointValues => $_getN(4);
  @$pb.TagNumber(5)
  set hasCheckpointValues($0.BoolValue v) {
    setField(5, v);
  }

  @$pb.TagNumber(5)
  $core.bool hasHasCheckpointValues() => $_has(4);
  @$pb.TagNumber(5)
  void clearHasCheckpointValues() => clearField(5);
  @$pb.TagNumber(5)
  $0.BoolValue ensureHasCheckpointValues() => $_ensure(4);
}

class TrackableObjectGraph extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'TrackableObjectGraph',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'tensorflow'),
      createEmptyInstance: create)
    ..pc<TrackableObjectGraph_TrackableObject>(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'nodes',
        $pb.PbFieldType.PM,
        subBuilder: TrackableObjectGraph_TrackableObject.create)
    ..hasRequiredFields = false;

  TrackableObjectGraph._() : super();
  factory TrackableObjectGraph({
    $core.Iterable<TrackableObjectGraph_TrackableObject>? nodes,
  }) {
    final _result = create();
    if (nodes != null) {
      _result.nodes.addAll(nodes);
    }
    return _result;
  }
  factory TrackableObjectGraph.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory TrackableObjectGraph.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
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
          as TrackableObjectGraph; // ignore: deprecated_member_use
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
  $core.List<TrackableObjectGraph_TrackableObject> get nodes => $_getList(0);
}

class RegisteredSaver extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'RegisteredSaver',
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
            : 'objectName')
    ..hasRequiredFields = false;

  RegisteredSaver._() : super();
  factory RegisteredSaver({
    $core.String? name,
    $core.String? objectName,
  }) {
    final _result = create();
    if (name != null) {
      _result.name = name;
    }
    if (objectName != null) {
      _result.objectName = objectName;
    }
    return _result;
  }
  factory RegisteredSaver.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory RegisteredSaver.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  RegisteredSaver clone() => RegisteredSaver()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  RegisteredSaver copyWith(void Function(RegisteredSaver) updates) =>
      super.copyWith((message) => updates(message as RegisteredSaver))
          as RegisteredSaver; // ignore: deprecated_member_use
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
  $core.String get objectName => $_getSZ(1);
  @$pb.TagNumber(2)
  set objectName($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasObjectName() => $_has(1);
  @$pb.TagNumber(2)
  void clearObjectName() => clearField(2);
}
