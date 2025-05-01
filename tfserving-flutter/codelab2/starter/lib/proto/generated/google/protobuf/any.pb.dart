//
//  Generated code. Do not modify.
//  source: google/protobuf/any.proto
//
// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;
import 'package:protobuf/src/protobuf/mixins/well_known.dart' as $mixin;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

///  `Any` contains an arbitrary serialized protocol buffer message along with a
///  URL that describes the type of the serialized message.
///
///  Protobuf library provides support to pack/unpack Any values in the form
///  of utility functions or additional generated methods of the Any type.
///
///  Example 1: Pack and unpack a message in C++.
///
///      Foo foo = ...;
///      Any any;
///      any.PackFrom(foo);
///      ...
///      if (any.UnpackTo(&foo)) {
///        ...
///      }
///
///  Example 2: Pack and unpack a message in Java.
///
///      Foo foo = ...;
///      Any any = Any.pack(foo);
///      ...
///      if (any.is(Foo.class)) {
///        foo = any.unpack(Foo.class);
///      }
///
///  Example 3: Pack and unpack a message in Python.
///
///      foo = Foo(...)
///      any = Any()
///      any.Pack(foo)
///      ...
///      if any.Is(Foo.DESCRIPTOR):
///        any.Unpack(foo)
///        ...
///
///  Example 4: Pack and unpack a message in Go
///
///       foo := &pb.Foo{...}
///       any, err := anypb.New(foo)
///       if err != nil {
///         ...
///       }
///       ...
///       foo := &pb.Foo{}
///       if err := any.UnmarshalTo(foo); err != nil {
///         ...
///       }
///
///  The pack methods provided by protobuf library will by default use
///  'type.googleapis.com/full.type.name' as the type URL and the unpack
///  methods only use the fully qualified type name after the last '/'
///  in the type URL, for example "foo.bar.com/x/y.z" will yield type
///  name "y.z".
///
///
///  JSON
///
///  The JSON representation of an `Any` value uses the regular
///  representation of the deserialized, embedded message, with an
///  additional field `@type` which contains the type URL. Example:
///
///      package google.profile;
///      message Person {
///        string first_name = 1;
///        string last_name = 2;
///      }
///
///      {
///        "@type": "type.googleapis.com/google.profile.Person",
///        "firstName": <string>,
///        "lastName": <string>
///      }
///
///  If the embedded message type is well-known and has a custom JSON
///  representation, that representation will be embedded adding a field
///  `value` which holds the custom JSON in addition to the `@type`
///  field. Example (for message [google.protobuf.Duration][]):
///
///      {
///        "@type": "type.googleapis.com/google.protobuf.Duration",
///        "value": "1.212s"
///      }
class Any extends $pb.GeneratedMessage with $mixin.AnyMixin {
  factory Any({
    $core.String? typeUrl,
    $core.List<$core.int>? value,
  }) {
    final $result = create();
    if (typeUrl != null) {
      $result.typeUrl = typeUrl;
    }
    if (value != null) {
      $result.value = value;
    }
    return $result;
  }
  Any._() : super();
  factory Any.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Any.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Any', package: const $pb.PackageName(_omitMessageNames ? '' : 'google.protobuf'), createEmptyInstance: create, toProto3Json: $mixin.AnyMixin.toProto3JsonHelper, fromProto3Json: $mixin.AnyMixin.fromProto3JsonHelper)
    ..aOS(1, _omitFieldNames ? '' : 'typeUrl')
    ..a<$core.List<$core.int>>(2, _omitFieldNames ? '' : 'value', $pb.PbFieldType.OY)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Any clone() => Any()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Any copyWith(void Function(Any) updates) => super.copyWith((message) => updates(message as Any)) as Any;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Any create() => Any._();
  Any createEmptyInstance() => create();
  static $pb.PbList<Any> createRepeated() => $pb.PbList<Any>();
  @$core.pragma('dart2js:noInline')
  static Any getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Any>(create);
  static Any? _defaultInstance;

  ///  A URL/resource name that uniquely identifies the type of the serialized
  ///  protocol buffer message. This string must contain at least
  ///  one "/" character. The last segment of the URL's path must represent
  ///  the fully qualified name of the type (as in
  ///  `path/google.protobuf.Duration`). The name should be in a canonical form
  ///  (e.g., leading "." is not accepted).
  ///
  ///  In practice, teams usually precompile into the binary all types that they
  ///  expect it to use in the context of Any. However, for URLs which use the
  ///  scheme `http`, `https`, or no scheme, one can optionally set up a type
  ///  server that maps type URLs to message definitions as follows:
  ///
  ///  * If no scheme is provided, `https` is assumed.
  ///  * An HTTP GET on the URL must yield a [google.protobuf.Type][]
  ///    value in binary format, or produce an error.
  ///  * Applications are allowed to cache lookup results based on the
  ///    URL, or have them precompiled into a binary to avoid any
  ///    lookup. Therefore, binary compatibility needs to be preserved
  ///    on changes to types. (Use versioned type names to manage
  ///    breaking changes.)
  ///
  ///  Note: this functionality is not currently available in the official
  ///  protobuf release, and it is not used for type URLs beginning with
  ///  type.googleapis.com.
  ///
  ///  Schemes other than `http`, `https` (or the empty scheme) might be
  ///  used with implementation specific semantics.
  @$pb.TagNumber(1)
  $core.String get typeUrl => $_getSZ(0);
  @$pb.TagNumber(1)
  set typeUrl($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasTypeUrl() => $_has(0);
  @$pb.TagNumber(1)
  void clearTypeUrl() => $_clearField(1);

  /// Must be a valid serialized protocol buffer of the above specified type.
  @$pb.TagNumber(2)
  $core.List<$core.int> get value => $_getN(1);
  @$pb.TagNumber(2)
  set value($core.List<$core.int> v) { $_setBytes(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasValue() => $_has(1);
  @$pb.TagNumber(2)
  void clearValue() => $_clearField(2);
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


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
