///
//  Generated code. Do not modify.
//  source: tensorflow/core/framework/versions.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields,deprecated_member_use_from_same_package

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use versionDefDescriptor instead')
const VersionDef$json = const {
  '1': 'VersionDef',
  '2': const [
    const {'1': 'producer', '3': 1, '4': 1, '5': 5, '10': 'producer'},
    const {'1': 'min_consumer', '3': 2, '4': 1, '5': 5, '10': 'minConsumer'},
    const {'1': 'bad_consumers', '3': 3, '4': 3, '5': 5, '10': 'badConsumers'},
  ],
};

/// Descriptor for `VersionDef`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List versionDefDescriptor = $convert.base64Decode(
    'CgpWZXJzaW9uRGVmEhoKCHByb2R1Y2VyGAEgASgFUghwcm9kdWNlchIhCgxtaW5fY29uc3VtZXIYAiABKAVSC21pbkNvbnN1bWVyEiMKDWJhZF9jb25zdW1lcnMYAyADKAVSDGJhZENvbnN1bWVycw==');
