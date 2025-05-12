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

import 'package:protobuf/protobuf.dart' as $pb;

///  Whether the function should be compiled by XLA.
///
///  The public interface to `tf.function` uses an optional boolean to
///  represent three distinct states for this field.  Unfortunately, proto3
///  removes the ability to explicitly check for the presence or absence of a
///  field, so we instead map to an enum.
///
///  See `tf.function` for details.
class FunctionSpec_JitCompile extends $pb.ProtobufEnum {
  static const FunctionSpec_JitCompile DEFAULT =
      FunctionSpec_JitCompile._(0, _omitEnumNames ? '' : 'DEFAULT');
  static const FunctionSpec_JitCompile ON =
      FunctionSpec_JitCompile._(1, _omitEnumNames ? '' : 'ON');
  static const FunctionSpec_JitCompile OFF =
      FunctionSpec_JitCompile._(2, _omitEnumNames ? '' : 'OFF');

  static const $core.List<FunctionSpec_JitCompile> values =
      <FunctionSpec_JitCompile>[
    DEFAULT,
    ON,
    OFF,
  ];

  static final $core.Map<$core.int, FunctionSpec_JitCompile> _byValue =
      $pb.ProtobufEnum.initByValue(values);
  static FunctionSpec_JitCompile? valueOf($core.int value) => _byValue[value];

  const FunctionSpec_JitCompile._(super.v, super.n);
}

const _omitEnumNames = $core.bool.fromEnvironment('protobuf.omit_enum_names');
