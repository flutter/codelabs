///
//  Generated code. Do not modify.
//  source: tensorflow/core/framework/graph.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'node_def.pb.dart' as $0;
import 'function.pb.dart' as $1;
import 'versions.pb.dart' as $2;

class GraphDef extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'GraphDef',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'tensorflow'),
      createEmptyInstance: create)
    ..pc<$0.NodeDef>(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'node',
        $pb.PbFieldType.PM,
        subBuilder: $0.NodeDef.create)
    ..aOM<$1.FunctionDefLibrary>(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'library',
        subBuilder: $1.FunctionDefLibrary.create)
    ..a<$core.int>(
        3,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'version',
        $pb.PbFieldType.O3)
    ..aOM<$2.VersionDef>(
        4,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'versions',
        subBuilder: $2.VersionDef.create)
    ..hasRequiredFields = false;

  GraphDef._() : super();
  factory GraphDef({
    $core.Iterable<$0.NodeDef>? node,
    $1.FunctionDefLibrary? library,
    @$core.Deprecated('This field is deprecated.') $core.int? version,
    $2.VersionDef? versions,
  }) {
    final _result = create();
    if (node != null) {
      _result.node.addAll(node);
    }
    if (library != null) {
      _result.library = library;
    }
    if (version != null) {
      // ignore: deprecated_member_use_from_same_package
      _result.version = version;
    }
    if (versions != null) {
      _result.versions = versions;
    }
    return _result;
  }
  factory GraphDef.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory GraphDef.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  GraphDef clone() => GraphDef()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  GraphDef copyWith(void Function(GraphDef) updates) =>
      super.copyWith((message) => updates(message as GraphDef))
          as GraphDef; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GraphDef create() => GraphDef._();
  GraphDef createEmptyInstance() => create();
  static $pb.PbList<GraphDef> createRepeated() => $pb.PbList<GraphDef>();
  @$core.pragma('dart2js:noInline')
  static GraphDef getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GraphDef>(create);
  static GraphDef? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$0.NodeDef> get node => $_getList(0);

  @$pb.TagNumber(2)
  $1.FunctionDefLibrary get library => $_getN(1);
  @$pb.TagNumber(2)
  set library($1.FunctionDefLibrary v) {
    setField(2, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasLibrary() => $_has(1);
  @$pb.TagNumber(2)
  void clearLibrary() => clearField(2);
  @$pb.TagNumber(2)
  $1.FunctionDefLibrary ensureLibrary() => $_ensure(1);

  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(3)
  $core.int get version => $_getIZ(2);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(3)
  set version($core.int v) {
    $_setSignedInt32(2, v);
  }

  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(3)
  $core.bool hasVersion() => $_has(2);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(3)
  void clearVersion() => clearField(3);

  @$pb.TagNumber(4)
  $2.VersionDef get versions => $_getN(3);
  @$pb.TagNumber(4)
  set versions($2.VersionDef v) {
    setField(4, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasVersions() => $_has(3);
  @$pb.TagNumber(4)
  void clearVersions() => clearField(4);
  @$pb.TagNumber(4)
  $2.VersionDef ensureVersions() => $_ensure(3);
}
