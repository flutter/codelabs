// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:github_graphql_client/src/github_gql/__generated__/github_queries.ast.gql.dart'
    as _i2;
import 'package:github_graphql_client/src/github_gql/__generated__/github_queries.var.gql.dart'
    as _i3;
import 'package:github_graphql_client/third_party/github_graphql_schema/__generated__/serializers.gql.dart'
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

abstract class GPullRequests
    implements Built<GPullRequests, GPullRequestsBuilder> {
  GPullRequests._();

  factory GPullRequests([Function(GPullRequestsBuilder b) updates]) =
      _$GPullRequests;

  static void _initializeBuilder(GPullRequestsBuilder b) => b
    ..operation =
        _i1.Operation(document: _i2.document, operationName: 'PullRequests');
  _i3.GPullRequestsVars get vars;
  _i1.Operation get operation;
  static Serializer<GPullRequests> get serializer => _$gPullRequestsSerializer;
  Map<String, dynamic> toJson() =>
      (_i4.serializers.serializeWith(GPullRequests.serializer, this)
          as Map<String, dynamic>);
  static GPullRequests? fromJson(Map<String, dynamic> json) =>
      _i4.serializers.deserializeWith(GPullRequests.serializer, json);
}

abstract class GAssignedIssues
    implements Built<GAssignedIssues, GAssignedIssuesBuilder> {
  GAssignedIssues._();

  factory GAssignedIssues([Function(GAssignedIssuesBuilder b) updates]) =
      _$GAssignedIssues;

  static void _initializeBuilder(GAssignedIssuesBuilder b) => b
    ..operation =
        _i1.Operation(document: _i2.document, operationName: 'AssignedIssues');
  _i3.GAssignedIssuesVars get vars;
  _i1.Operation get operation;
  static Serializer<GAssignedIssues> get serializer =>
      _$gAssignedIssuesSerializer;
  Map<String, dynamic> toJson() =>
      (_i4.serializers.serializeWith(GAssignedIssues.serializer, this)
          as Map<String, dynamic>);
  static GAssignedIssues? fromJson(Map<String, dynamic> json) =>
      _i4.serializers.deserializeWith(GAssignedIssues.serializer, json);
}

abstract class GRepositories
    implements Built<GRepositories, GRepositoriesBuilder> {
  GRepositories._();

  factory GRepositories([Function(GRepositoriesBuilder b) updates]) =
      _$GRepositories;

  static void _initializeBuilder(GRepositoriesBuilder b) => b
    ..operation =
        _i1.Operation(document: _i2.document, operationName: 'Repositories');
  _i3.GRepositoriesVars get vars;
  _i1.Operation get operation;
  static Serializer<GRepositories> get serializer => _$gRepositoriesSerializer;
  Map<String, dynamic> toJson() =>
      (_i4.serializers.serializeWith(GRepositories.serializer, this)
          as Map<String, dynamic>);
  static GRepositories? fromJson(Map<String, dynamic> json) =>
      _i4.serializers.deserializeWith(GRepositories.serializer, json);
}
