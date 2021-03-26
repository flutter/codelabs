// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:github_graphql_client/src/github_gql/github_queries.ast.gql.dart'
    as _i2;
import 'package:github_graphql_client/src/github_gql/github_queries.var.gql.dart'
    as _i3;
import 'package:github_graphql_client/third_party/github_graphql_schema/serializers.gql.dart'
    as _i4;
import 'package:gql_exec/gql_exec.dart' as _i1;

part 'github_queries.req.gql.g.dart';

abstract class GViewerDetail
    implements Built<GViewerDetail, GViewerDetailBuilder> {
  GViewerDetail._();

  factory GViewerDetail([Function(GViewerDetailBuilder b) updates]) =
      _$GViewerDetail;

  static void _initializeBuilder(GViewerDetailBuilder b) => b
    ..operation =
        _i1.Operation(document: _i2.document, operationName: 'ViewerDetail');
  _i3.GViewerDetailVars get vars;
  _i1.Operation get operation;
  static Serializer<GViewerDetail> get serializer => _$gViewerDetailSerializer;
  Map<String, dynamic> toJson() =>
      (_i4.serializers.serializeWith(GViewerDetail.serializer, this)
          as Map<String, dynamic>);
  static GViewerDetail? fromJson(Map<String, dynamic> json) =>
      _i4.serializers.deserializeWith(GViewerDetail.serializer, json);
}
