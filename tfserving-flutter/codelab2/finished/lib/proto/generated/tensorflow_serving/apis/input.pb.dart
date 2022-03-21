///
//  Generated code. Do not modify.
//  source: tensorflow_serving/apis/input.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import '../../tensorflow/core/example/example.pb.dart' as $0;

class ExampleList extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'ExampleList',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'tensorflow.serving'),
      createEmptyInstance: create)
    ..pc<$0.Example>(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'examples',
        $pb.PbFieldType.PM,
        subBuilder: $0.Example.create)
    ..hasRequiredFields = false;

  ExampleList._() : super();
  factory ExampleList({
    $core.Iterable<$0.Example>? examples,
  }) {
    final _result = create();
    if (examples != null) {
      _result.examples.addAll(examples);
    }
    return _result;
  }
  factory ExampleList.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ExampleList.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  ExampleList clone() => ExampleList()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  ExampleList copyWith(void Function(ExampleList) updates) =>
      super.copyWith((message) => updates(message as ExampleList))
          as ExampleList; // ignore: deprecated_member_use
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
  $core.List<$0.Example> get examples => $_getList(0);
}

class ExampleListWithContext extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'ExampleListWithContext',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'tensorflow.serving'),
      createEmptyInstance: create)
    ..pc<$0.Example>(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'examples',
        $pb.PbFieldType.PM,
        subBuilder: $0.Example.create)
    ..aOM<$0.Example>(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'context',
        subBuilder: $0.Example.create)
    ..hasRequiredFields = false;

  ExampleListWithContext._() : super();
  factory ExampleListWithContext({
    $core.Iterable<$0.Example>? examples,
    $0.Example? context,
  }) {
    final _result = create();
    if (examples != null) {
      _result.examples.addAll(examples);
    }
    if (context != null) {
      _result.context = context;
    }
    return _result;
  }
  factory ExampleListWithContext.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ExampleListWithContext.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
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
          as ExampleListWithContext; // ignore: deprecated_member_use
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
  $core.List<$0.Example> get examples => $_getList(0);

  @$pb.TagNumber(2)
  $0.Example get context => $_getN(1);
  @$pb.TagNumber(2)
  set context($0.Example v) {
    setField(2, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasContext() => $_has(1);
  @$pb.TagNumber(2)
  void clearContext() => clearField(2);
  @$pb.TagNumber(2)
  $0.Example ensureContext() => $_ensure(1);
}

enum Input_Kind { exampleList, exampleListWithContext, notSet }

class Input extends $pb.GeneratedMessage {
  static const $core.Map<$core.int, Input_Kind> _Input_KindByTag = {
    1: Input_Kind.exampleList,
    2: Input_Kind.exampleListWithContext,
    0: Input_Kind.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'Input',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'tensorflow.serving'),
      createEmptyInstance: create)
    ..oo(0, [1, 2])
    ..aOM<ExampleList>(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'exampleList',
        subBuilder: ExampleList.create)
    ..aOM<ExampleListWithContext>(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'exampleListWithContext',
        subBuilder: ExampleListWithContext.create)
    ..hasRequiredFields = false;

  Input._() : super();
  factory Input({
    ExampleList? exampleList,
    ExampleListWithContext? exampleListWithContext,
  }) {
    final _result = create();
    if (exampleList != null) {
      _result.exampleList = exampleList;
    }
    if (exampleListWithContext != null) {
      _result.exampleListWithContext = exampleListWithContext;
    }
    return _result;
  }
  factory Input.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory Input.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  Input clone() => Input()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  Input copyWith(void Function(Input) updates) =>
      super.copyWith((message) => updates(message as Input))
          as Input; // ignore: deprecated_member_use
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
  void clearKind() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  ExampleList get exampleList => $_getN(0);
  @$pb.TagNumber(1)
  set exampleList(ExampleList v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasExampleList() => $_has(0);
  @$pb.TagNumber(1)
  void clearExampleList() => clearField(1);
  @$pb.TagNumber(1)
  ExampleList ensureExampleList() => $_ensure(0);

  @$pb.TagNumber(2)
  ExampleListWithContext get exampleListWithContext => $_getN(1);
  @$pb.TagNumber(2)
  set exampleListWithContext(ExampleListWithContext v) {
    setField(2, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasExampleListWithContext() => $_has(1);
  @$pb.TagNumber(2)
  void clearExampleListWithContext() => clearField(2);
  @$pb.TagNumber(2)
  ExampleListWithContext ensureExampleListWithContext() => $_ensure(1);
}
