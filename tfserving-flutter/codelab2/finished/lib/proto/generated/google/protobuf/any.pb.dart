///
//  Generated code. Do not modify.
//  source: google/protobuf/any.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'package:protobuf/src/protobuf/mixins/well_known.dart' as $mixin;

class Any extends $pb.GeneratedMessage with $mixin.AnyMixin {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Any', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'google.protobuf'), createEmptyInstance: create, toProto3Json: $mixin.AnyMixin.toProto3JsonHelper, fromProto3Json: $mixin.AnyMixin.fromProto3JsonHelper)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'typeUrl')
    ..a<$core.List<$core.int>>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'value', $pb.PbFieldType.OY)
    ..hasRequiredFields = false
  ;

  Any._() : super();
  factory Any({
    $core.String? typeUrl,
    $core.List<$core.int>? value,
  }) {
    final _result = create();
    if (typeUrl != null) {
      _result.typeUrl = typeUrl;
    }
    if (value != null) {
      _result.value = value;
    }
    return _result;
  }
  factory Any.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Any.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Any clone() => Any()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Any copyWith(void Function(Any) updates) => super.copyWith((message) => updates(message as Any)) as Any; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Any create() => Any._();
  Any createEmptyInstance() => create();
  static $pb.PbList<Any> createRepeated() => $pb.PbList<Any>();
  @$core.pragma('dart2js:noInline')
  static Any getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Any>(create);
  static Any? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get typeUrl => $_getSZ(0);
  @$pb.TagNumber(1)
  set typeUrl($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasTypeUrl() => $_has(0);
  @$pb.TagNumber(1)
  void clearTypeUrl() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$core.int> get value => $_getN(1);
  @$pb.TagNumber(2)
  set value($core.List<$core.int> v) { $_setBytes(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasValue() => $_has(1);
  @$pb.TagNumber(2)
  void clearValue() => clearField(2);
  /// Creates a new [Any] encoding [message].
  ///
  /// The [typeUrl] will be [typeUrlPrefix]/`fullName` where `fullName` is
  /// the fully qualified name of the type of [message].
  static Any pack($pb.GeneratedMessage message,
  {$core.String typeUrlPrefix = 'type.googleapis.com'}) {
    final result = create();
    $mixin.AnyMixin.packIntoAny(result, message,
        typeUrlPrefix: typeUrlPrefix);
    return result;
  }
}

