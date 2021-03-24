// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:github_graphql_client/third_party/github_graphql_schema/serializers.gql.dart'
    as _i1;

part 'github_queries.data.gql.g.dart';

abstract class GViewerDetailData
    implements Built<GViewerDetailData, GViewerDetailDataBuilder> {
  GViewerDetailData._();

  factory GViewerDetailData([Function(GViewerDetailDataBuilder b) updates]) =
      _$GViewerDetailData;

  static void _initializeBuilder(GViewerDetailDataBuilder b) =>
      b..G__typename = 'Query';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GViewerDetailData_viewer get viewer;
  static Serializer<GViewerDetailData> get serializer =>
      _$gViewerDetailDataSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GViewerDetailData.serializer, this)
          as Map<String, dynamic>);
  static GViewerDetailData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GViewerDetailData.serializer, json);
}

abstract class GViewerDetailData_viewer
    implements
        Built<GViewerDetailData_viewer, GViewerDetailData_viewerBuilder> {
  GViewerDetailData_viewer._();

  factory GViewerDetailData_viewer(
          [Function(GViewerDetailData_viewerBuilder b) updates]) =
      _$GViewerDetailData_viewer;

  static void _initializeBuilder(GViewerDetailData_viewerBuilder b) =>
      b..G__typename = 'User';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get login;
  static Serializer<GViewerDetailData_viewer> get serializer =>
      _$gViewerDetailDataViewerSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GViewerDetailData_viewer.serializer, this)
          as Map<String, dynamic>);
  static GViewerDetailData_viewer? fromJson(Map<String, dynamic> json) =>
      _i1.serializers
          .deserializeWith(GViewerDetailData_viewer.serializer, json);
}
