//
//  Generated code. Do not modify.
//  source: tensorflow_serving/apis/input.proto
//
// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import '../../tensorflow/core/example/example.pb.dart' as $0;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

/// Specifies one or more fully independent input Examples.
/// See examples at:
///     https://github.com/tensorflow/tensorflow/blob/master/tensorflow/core/example/example.proto
class ExampleList extends $pb.GeneratedMessage {
  factory ExampleList({
    $core.Iterable<$0.Example>? examples,
  }) {
    final $result = create();
    if (examples != null) {
      $result.examples.addAll(examples);
    }
    return $result;
  }
  ExampleList._() : super();
  factory ExampleList.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ExampleList.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ExampleList',
      package:
          const $pb.PackageName(_omitMessageNames ? '' : 'tensorflow.serving'),
      createEmptyInstance: create)
    ..pc<$0.Example>(1, _omitFieldNames ? '' : 'examples', $pb.PbFieldType.PM,
        subBuilder: $0.Example.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  ExampleList clone() => ExampleList()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  ExampleList copyWith(void Function(ExampleList) updates) =>
      super.copyWith((message) => updates(message as ExampleList))
          as ExampleList;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ExampleList create() => ExampleList._();
  ExampleList createEmptyInstance() => create();
  static $pb.PbList<ExampleList> createRepeated() => $pb.PbList<ExampleList>();
  @$core.pragma('dart2js:noInline')
  static ExampleList getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ExampleList>(create);
  static ExampleList? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<$0.Example> get examples => $_getList(0);
}

///  Specifies one or more independent input Examples, with a common context
///  Example.
///
///  The common use case for context is to cleanly and optimally specify some
///  features that are common across multiple examples.
///
///  See example below with a search query as the context and multiple restaurants
///  to perform some inference on.
///
///  context: {
///    features: {
///      feature: {
///        key  : "query"
///        value: {
///          bytes_list: {
///            value: [ "pizza" ]
///          }
///        }
///      }
///    }
///  }
///  examples: {
///    features: {
///      feature: {
///        key  : "cuisine"
///        value: {
///          bytes_list: {
///            value: [ "Pizzeria" ]
///          }
///        }
///      }
///    }
///  }
///  examples: {
///    features: {
///      feature: {
///        key  : "cuisine"
///        value: {
///          bytes_list: {
///            value: [ "Taqueria" ]
///          }
///        }
///      }
///    }
///  }
///
///  Implementations of ExampleListWithContext merge the context Example into each
///  of the Examples. Note that feature keys must not be duplicated between the
///  Examples and context Example, or the behavior is undefined.
///
///  See also:
///      tensorflow/core/example/example.proto
///      https://developers.google.com/protocol-buffers/docs/proto3#maps
class ExampleListWithContext extends $pb.GeneratedMessage {
  factory ExampleListWithContext({
    $core.Iterable<$0.Example>? examples,
    $0.Example? context,
  }) {
    final $result = create();
    if (examples != null) {
      $result.examples.addAll(examples);
    }
    if (context != null) {
      $result.context = context;
    }
    return $result;
  }
  ExampleListWithContext._() : super();
  factory ExampleListWithContext.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ExampleListWithContext.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ExampleListWithContext',
      package:
          const $pb.PackageName(_omitMessageNames ? '' : 'tensorflow.serving'),
      createEmptyInstance: create)
    ..pc<$0.Example>(1, _omitFieldNames ? '' : 'examples', $pb.PbFieldType.PM,
        subBuilder: $0.Example.create)
    ..aOM<$0.Example>(2, _omitFieldNames ? '' : 'context',
        subBuilder: $0.Example.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  ExampleListWithContext clone() =>
      ExampleListWithContext()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  ExampleListWithContext copyWith(
          void Function(ExampleListWithContext) updates) =>
      super.copyWith((message) => updates(message as ExampleListWithContext))
          as ExampleListWithContext;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ExampleListWithContext create() => ExampleListWithContext._();
  ExampleListWithContext createEmptyInstance() => create();
  static $pb.PbList<ExampleListWithContext> createRepeated() =>
      $pb.PbList<ExampleListWithContext>();
  @$core.pragma('dart2js:noInline')
  static ExampleListWithContext getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ExampleListWithContext>(create);
  static ExampleListWithContext? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<$0.Example> get examples => $_getList(0);

  @$pb.TagNumber(2)
  $0.Example get context => $_getN(1);
  @$pb.TagNumber(2)
  set context($0.Example v) {
    $_setField(2, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasContext() => $_has(1);
  @$pb.TagNumber(2)
  void clearContext() => $_clearField(2);
  @$pb.TagNumber(2)
  $0.Example ensureContext() => $_ensure(1);
}

enum Input_Kind { exampleList, exampleListWithContext, notSet }

class Input extends $pb.GeneratedMessage {
  factory Input({
    ExampleList? exampleList,
    ExampleListWithContext? exampleListWithContext,
  }) {
    final $result = create();
    if (exampleList != null) {
      $result.exampleList = exampleList;
    }
    if (exampleListWithContext != null) {
      $result.exampleListWithContext = exampleListWithContext;
    }
    return $result;
  }
  Input._() : super();
  factory Input.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory Input.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static const $core.Map<$core.int, Input_Kind> _Input_KindByTag = {
    1: Input_Kind.exampleList,
    2: Input_Kind.exampleListWithContext,
    0: Input_Kind.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Input',
      package:
          const $pb.PackageName(_omitMessageNames ? '' : 'tensorflow.serving'),
      createEmptyInstance: create)
    ..oo(0, [1, 2])
    ..aOM<ExampleList>(1, _omitFieldNames ? '' : 'exampleList',
        subBuilder: ExampleList.create)
    ..aOM<ExampleListWithContext>(
        2, _omitFieldNames ? '' : 'exampleListWithContext',
        subBuilder: ExampleListWithContext.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  Input clone() => Input()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  Input copyWith(void Function(Input) updates) =>
      super.copyWith((message) => updates(message as Input)) as Input;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Input create() => Input._();
  Input createEmptyInstance() => create();
  static $pb.PbList<Input> createRepeated() => $pb.PbList<Input>();
  @$core.pragma('dart2js:noInline')
  static Input getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Input>(create);
  static Input? _defaultInstance;

  Input_Kind whichKind() => _Input_KindByTag[$_whichOneof(0)]!;
  void clearKind() => $_clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  ExampleList get exampleList => $_getN(0);
  @$pb.TagNumber(1)
  set exampleList(ExampleList v) {
    $_setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasExampleList() => $_has(0);
  @$pb.TagNumber(1)
  void clearExampleList() => $_clearField(1);
  @$pb.TagNumber(1)
  ExampleList ensureExampleList() => $_ensure(0);

  @$pb.TagNumber(2)
  ExampleListWithContext get exampleListWithContext => $_getN(1);
  @$pb.TagNumber(2)
  set exampleListWithContext(ExampleListWithContext v) {
    $_setField(2, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasExampleListWithContext() => $_has(1);
  @$pb.TagNumber(2)
  void clearExampleListWithContext() => $_clearField(2);
  @$pb.TagNumber(2)
  ExampleListWithContext ensureExampleListWithContext() => $_ensure(1);
}

const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
