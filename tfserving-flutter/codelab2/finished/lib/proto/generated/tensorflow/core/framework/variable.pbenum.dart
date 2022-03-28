///
//  Generated code. Do not modify.
//  source: tensorflow/core/framework/variable.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

// ignore_for_file: UNDEFINED_SHOWN_NAME
import 'dart:core' as $core;
import 'package:protobuf/protobuf.dart' as $pb;

class VariableSynchronization extends $pb.ProtobufEnum {
  static const VariableSynchronization VARIABLE_SYNCHRONIZATION_AUTO =
      VariableSynchronization._(
          0,
          const $core.bool.fromEnvironment('protobuf.omit_enum_names')
              ? ''
              : 'VARIABLE_SYNCHRONIZATION_AUTO');
  static const VariableSynchronization VARIABLE_SYNCHRONIZATION_NONE =
      VariableSynchronization._(
          1,
          const $core.bool.fromEnvironment('protobuf.omit_enum_names')
              ? ''
              : 'VARIABLE_SYNCHRONIZATION_NONE');
  static const VariableSynchronization VARIABLE_SYNCHRONIZATION_ON_WRITE =
      VariableSynchronization._(
          2,
          const $core.bool.fromEnvironment('protobuf.omit_enum_names')
              ? ''
              : 'VARIABLE_SYNCHRONIZATION_ON_WRITE');
  static const VariableSynchronization VARIABLE_SYNCHRONIZATION_ON_READ =
      VariableSynchronization._(
          3,
          const $core.bool.fromEnvironment('protobuf.omit_enum_names')
              ? ''
              : 'VARIABLE_SYNCHRONIZATION_ON_READ');

  static const $core.List<VariableSynchronization> values =
      <VariableSynchronization>[
    VARIABLE_SYNCHRONIZATION_AUTO,
    VARIABLE_SYNCHRONIZATION_NONE,
    VARIABLE_SYNCHRONIZATION_ON_WRITE,
    VARIABLE_SYNCHRONIZATION_ON_READ,
  ];

  static final $core.Map<$core.int, VariableSynchronization> _byValue =
      $pb.ProtobufEnum.initByValue(values);
  static VariableSynchronization? valueOf($core.int value) => _byValue[value];

  const VariableSynchronization._($core.int v, $core.String n) : super(v, n);
}

class VariableAggregation extends $pb.ProtobufEnum {
  static const VariableAggregation VARIABLE_AGGREGATION_NONE =
      VariableAggregation._(
          0,
          const $core.bool.fromEnvironment('protobuf.omit_enum_names')
              ? ''
              : 'VARIABLE_AGGREGATION_NONE');
  static const VariableAggregation VARIABLE_AGGREGATION_SUM =
      VariableAggregation._(
          1,
          const $core.bool.fromEnvironment('protobuf.omit_enum_names')
              ? ''
              : 'VARIABLE_AGGREGATION_SUM');
  static const VariableAggregation VARIABLE_AGGREGATION_MEAN =
      VariableAggregation._(
          2,
          const $core.bool.fromEnvironment('protobuf.omit_enum_names')
              ? ''
              : 'VARIABLE_AGGREGATION_MEAN');
  static const VariableAggregation VARIABLE_AGGREGATION_ONLY_FIRST_REPLICA =
      VariableAggregation._(
          3,
          const $core.bool.fromEnvironment('protobuf.omit_enum_names')
              ? ''
              : 'VARIABLE_AGGREGATION_ONLY_FIRST_REPLICA');

  static const $core.List<VariableAggregation> values = <VariableAggregation>[
    VARIABLE_AGGREGATION_NONE,
    VARIABLE_AGGREGATION_SUM,
    VARIABLE_AGGREGATION_MEAN,
    VARIABLE_AGGREGATION_ONLY_FIRST_REPLICA,
  ];

  static final $core.Map<$core.int, VariableAggregation> _byValue =
      $pb.ProtobufEnum.initByValue(values);
  static VariableAggregation? valueOf($core.int value) => _byValue[value];

  const VariableAggregation._($core.int v, $core.String n) : super(v, n);
}
