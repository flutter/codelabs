//
//  Generated code. Do not modify.
//  source: tensorflow/core/framework/graph.proto
//
// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'function.pb.dart' as $1;
import 'node_def.pb.dart' as $0;
import 'versions.pb.dart' as $2;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

/// Represents the graph of operations
class GraphDef extends $pb.GeneratedMessage {
  factory GraphDef({
    $core.Iterable<$0.NodeDef>? node,
    $1.FunctionDefLibrary? library,
    @$core.Deprecated('This field is deprecated.') $core.int? version,
    $2.VersionDef? versions,
  }) {
    final $result = create();
    if (node != null) {
      $result.node.addAll(node);
    }
    if (library != null) {
      $result.library = library;
    }
    if (version != null) {
      // ignore: deprecated_member_use_from_same_package
      $result.version = version;
    }
    if (versions != null) {
      $result.versions = versions;
    }
    return $result;
  }
  GraphDef._() : super();
  factory GraphDef.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory GraphDef.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'GraphDef',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'tensorflow'),
      createEmptyInstance: create)
    ..pc<$0.NodeDef>(1, _omitFieldNames ? '' : 'node', $pb.PbFieldType.PM,
        subBuilder: $0.NodeDef.create)
    ..aOM<$1.FunctionDefLibrary>(2, _omitFieldNames ? '' : 'library',
        subBuilder: $1.FunctionDefLibrary.create)
    ..a<$core.int>(3, _omitFieldNames ? '' : 'version', $pb.PbFieldType.O3)
    ..aOM<$2.VersionDef>(4, _omitFieldNames ? '' : 'versions',
        subBuilder: $2.VersionDef.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  GraphDef clone() => GraphDef()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  GraphDef copyWith(void Function(GraphDef) updates) =>
      super.copyWith((message) => updates(message as GraphDef)) as GraphDef;

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
  $pb.PbList<$0.NodeDef> get node => $_getList(0);

  ///  "library" provides user-defined functions.
  ///
  ///  Naming:
  ///    * library.function.name are in a flat namespace.
  ///      NOTE: We may need to change it to be hierarchical to support
  ///      different orgs. E.g.,
  ///      { "/google/nn", { ... }},
  ///      { "/google/vision", { ... }}
  ///      { "/org_foo/module_bar", { ... }}
  ///      map<string, FunctionDefLib> named_lib;
  ///    * If node[i].op is the name of one function in "library",
  ///      node[i] is deemed as a function call. Otherwise, node[i].op
  ///      must be a primitive operation supported by the runtime.
  ///
  ///
  ///  Function call semantics:
  ///
  ///    * The callee may start execution as soon as some of its inputs
  ///      are ready. The caller may want to use Tuple() mechanism to
  ///      ensure all inputs are ready in the same time.
  ///
  ///    * The consumer of return values may start executing as soon as
  ///      the return values the consumer depends on are ready.  The
  ///      consumer may want to use Tuple() mechanism to ensure the
  ///      consumer does not start until all return values of the callee
  ///      function are ready.
  @$pb.TagNumber(2)
  $1.FunctionDefLibrary get library => $_getN(1);
  @$pb.TagNumber(2)
  set library($1.FunctionDefLibrary v) {
    $_setField(2, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasLibrary() => $_has(1);
  @$pb.TagNumber(2)
  void clearLibrary() => $_clearField(2);
  @$pb.TagNumber(2)
  $1.FunctionDefLibrary ensureLibrary() => $_ensure(1);

  /// Deprecated single version field; use versions above instead.  Since all
  /// GraphDef changes before "versions" was introduced were forward
  /// compatible, this field is entirely ignored.
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
  void clearVersion() => $_clearField(3);

  /// Compatibility versions of the graph.  See core/public/version.h for version
  /// history.  The GraphDef version is distinct from the TensorFlow version, and
  /// each release of TensorFlow will support a range of GraphDef versions.
  @$pb.TagNumber(4)
  $2.VersionDef get versions => $_getN(3);
  @$pb.TagNumber(4)
  set versions($2.VersionDef v) {
    $_setField(4, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasVersions() => $_has(3);
  @$pb.TagNumber(4)
  void clearVersions() => $_clearField(4);
  @$pb.TagNumber(4)
  $2.VersionDef ensureVersions() => $_ensure(3);
}

const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
