//
//  Generated code. Do not modify.
//  source: tensorflow/core/framework/variable.proto
//
// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

/// Indicates when a distributed variable will be synced.
class VariableSynchronization extends $pb.ProtobufEnum {
  /// `AUTO`: Indicates that the synchronization will be determined by the
  /// current `DistributionStrategy` (eg. With `MirroredStrategy` this would be
  /// `ON_WRITE`).
  static const VariableSynchronization VARIABLE_SYNCHRONIZATION_AUTO = VariableSynchronization._(0, _omitEnumNames ? '' : 'VARIABLE_SYNCHRONIZATION_AUTO');
  /// `NONE`: Indicates that there will only be one copy of the variable, so
  /// there is no need to sync.
  static const VariableSynchronization VARIABLE_SYNCHRONIZATION_NONE = VariableSynchronization._(1, _omitEnumNames ? '' : 'VARIABLE_SYNCHRONIZATION_NONE');
  /// `ON_WRITE`: Indicates that the variable will be updated across devices
  /// every time it is written.
  static const VariableSynchronization VARIABLE_SYNCHRONIZATION_ON_WRITE = VariableSynchronization._(2, _omitEnumNames ? '' : 'VARIABLE_SYNCHRONIZATION_ON_WRITE');
  /// `ON_READ`: Indicates that the variable will be aggregated across devices
  /// when it is read (eg. when checkpointing or when evaluating an op that uses
  /// the variable).
  static const VariableSynchronization VARIABLE_SYNCHRONIZATION_ON_READ = VariableSynchronization._(3, _omitEnumNames ? '' : 'VARIABLE_SYNCHRONIZATION_ON_READ');

  static const $core.List<VariableSynchronization> values = <VariableSynchronization> [
    VARIABLE_SYNCHRONIZATION_AUTO,
    VARIABLE_SYNCHRONIZATION_NONE,
    VARIABLE_SYNCHRONIZATION_ON_WRITE,
    VARIABLE_SYNCHRONIZATION_ON_READ,
  ];

  static final $core.Map<$core.int, VariableSynchronization> _byValue = $pb.ProtobufEnum.initByValue(values);
  static VariableSynchronization? valueOf($core.int value) => _byValue[value];

  const VariableSynchronization._(super.v, super.n);
}

/// Indicates how a distributed variable will be aggregated.
class VariableAggregation extends $pb.ProtobufEnum {
  /// `NONE`: This is the default, giving an error if you use a
  /// variable-update operation with multiple replicas.
  static const VariableAggregation VARIABLE_AGGREGATION_NONE = VariableAggregation._(0, _omitEnumNames ? '' : 'VARIABLE_AGGREGATION_NONE');
  /// `SUM`: Add the updates across replicas.
  static const VariableAggregation VARIABLE_AGGREGATION_SUM = VariableAggregation._(1, _omitEnumNames ? '' : 'VARIABLE_AGGREGATION_SUM');
  /// `MEAN`: Take the arithmetic mean ("average") of the updates across
  /// replicas.
  static const VariableAggregation VARIABLE_AGGREGATION_MEAN = VariableAggregation._(2, _omitEnumNames ? '' : 'VARIABLE_AGGREGATION_MEAN');
  /// `ONLY_FIRST_REPLICA`: This is for when every replica is performing the same
  /// update, but we only want to perform the update once. Used, e.g., for the
  /// global step counter.
  static const VariableAggregation VARIABLE_AGGREGATION_ONLY_FIRST_REPLICA = VariableAggregation._(3, _omitEnumNames ? '' : 'VARIABLE_AGGREGATION_ONLY_FIRST_REPLICA');

  static const $core.List<VariableAggregation> values = <VariableAggregation> [
    VARIABLE_AGGREGATION_NONE,
    VARIABLE_AGGREGATION_SUM,
    VARIABLE_AGGREGATION_MEAN,
    VARIABLE_AGGREGATION_ONLY_FIRST_REPLICA,
  ];

  static final $core.Map<$core.int, VariableAggregation> _byValue = $pb.ProtobufEnum.initByValue(values);
  static VariableAggregation? valueOf($core.int value) => _byValue[value];

  const VariableAggregation._(super.v, super.n);
}


const _omitEnumNames = $core.bool.fromEnvironment('protobuf.omit_enum_names');
