// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:github_graphql_client/third_party/github_graphql_schema/__generated__/schema.docs.schema.gql.dart'
    as _i2;
import 'package:github_graphql_client/third_party/github_graphql_schema/__generated__/serializers.gql.dart'
    as _i1;
import 'package:gql_code_builder/src/serializers/inline_fragment_serializer.dart'
    as _i3;

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

abstract class GPullRequestsData
    implements Built<GPullRequestsData, GPullRequestsDataBuilder> {
  GPullRequestsData._();

  factory GPullRequestsData([Function(GPullRequestsDataBuilder b) updates]) =
      _$GPullRequestsData;

  static void _initializeBuilder(GPullRequestsDataBuilder b) =>
      b..G__typename = 'Query';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GPullRequestsData_viewer get viewer;
  static Serializer<GPullRequestsData> get serializer =>
      _$gPullRequestsDataSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GPullRequestsData.serializer, this)
          as Map<String, dynamic>);
  static GPullRequestsData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GPullRequestsData.serializer, json);
}

abstract class GPullRequestsData_viewer
    implements
        Built<GPullRequestsData_viewer, GPullRequestsData_viewerBuilder> {
  GPullRequestsData_viewer._();

  factory GPullRequestsData_viewer(
          [Function(GPullRequestsData_viewerBuilder b) updates]) =
      _$GPullRequestsData_viewer;

  static void _initializeBuilder(GPullRequestsData_viewerBuilder b) =>
      b..G__typename = 'User';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GPullRequestsData_viewer_pullRequests get pullRequests;
  static Serializer<GPullRequestsData_viewer> get serializer =>
      _$gPullRequestsDataViewerSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GPullRequestsData_viewer.serializer, this)
          as Map<String, dynamic>);
  static GPullRequestsData_viewer? fromJson(Map<String, dynamic> json) =>
      _i1.serializers
          .deserializeWith(GPullRequestsData_viewer.serializer, json);
}

abstract class GPullRequestsData_viewer_pullRequests
    implements
        Built<GPullRequestsData_viewer_pullRequests,
            GPullRequestsData_viewer_pullRequestsBuilder> {
  GPullRequestsData_viewer_pullRequests._();

  factory GPullRequestsData_viewer_pullRequests(
          [Function(GPullRequestsData_viewer_pullRequestsBuilder b) updates]) =
      _$GPullRequestsData_viewer_pullRequests;

  static void _initializeBuilder(
          GPullRequestsData_viewer_pullRequestsBuilder b) =>
      b..G__typename = 'PullRequestConnection';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  BuiltList<GPullRequestsData_viewer_pullRequests_edges>? get edges;
  static Serializer<GPullRequestsData_viewer_pullRequests> get serializer =>
      _$gPullRequestsDataViewerPullRequestsSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers
          .serializeWith(GPullRequestsData_viewer_pullRequests.serializer, this)
      as Map<String, dynamic>);
  static GPullRequestsData_viewer_pullRequests? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
          GPullRequestsData_viewer_pullRequests.serializer, json);
}

abstract class GPullRequestsData_viewer_pullRequests_edges
    implements
        Built<GPullRequestsData_viewer_pullRequests_edges,
            GPullRequestsData_viewer_pullRequests_edgesBuilder> {
  GPullRequestsData_viewer_pullRequests_edges._();

  factory GPullRequestsData_viewer_pullRequests_edges(
      [Function(GPullRequestsData_viewer_pullRequests_edgesBuilder b)
          updates]) = _$GPullRequestsData_viewer_pullRequests_edges;

  static void _initializeBuilder(
          GPullRequestsData_viewer_pullRequests_edgesBuilder b) =>
      b..G__typename = 'PullRequestEdge';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GPullRequestsData_viewer_pullRequests_edges_node? get node;
  static Serializer<GPullRequestsData_viewer_pullRequests_edges>
      get serializer => _$gPullRequestsDataViewerPullRequestsEdgesSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
          GPullRequestsData_viewer_pullRequests_edges.serializer, this)
      as Map<String, dynamic>);
  static GPullRequestsData_viewer_pullRequests_edges? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
          GPullRequestsData_viewer_pullRequests_edges.serializer, json);
}

abstract class GPullRequestsData_viewer_pullRequests_edges_node
    implements
        Built<GPullRequestsData_viewer_pullRequests_edges_node,
            GPullRequestsData_viewer_pullRequests_edges_nodeBuilder> {
  GPullRequestsData_viewer_pullRequests_edges_node._();

  factory GPullRequestsData_viewer_pullRequests_edges_node(
      [Function(GPullRequestsData_viewer_pullRequests_edges_nodeBuilder b)
          updates]) = _$GPullRequestsData_viewer_pullRequests_edges_node;

  static void _initializeBuilder(
          GPullRequestsData_viewer_pullRequests_edges_nodeBuilder b) =>
      b..G__typename = 'PullRequest';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GPullRequestsData_viewer_pullRequests_edges_node_repository get repository;
  GPullRequestsData_viewer_pullRequests_edges_node_author? get author;
  int get number;
  _i2.GURI get url;
  String get title;
  _i2.GDateTime get updatedAt;
  _i2.GPullRequestState get state;
  bool get isDraft;
  GPullRequestsData_viewer_pullRequests_edges_node_comments get comments;
  GPullRequestsData_viewer_pullRequests_edges_node_files? get files;
  static Serializer<GPullRequestsData_viewer_pullRequests_edges_node>
      get serializer =>
          _$gPullRequestsDataViewerPullRequestsEdgesNodeSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
          GPullRequestsData_viewer_pullRequests_edges_node.serializer, this)
      as Map<String, dynamic>);
  static GPullRequestsData_viewer_pullRequests_edges_node? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
          GPullRequestsData_viewer_pullRequests_edges_node.serializer, json);
}

abstract class GPullRequestsData_viewer_pullRequests_edges_node_repository
    implements
        Built<GPullRequestsData_viewer_pullRequests_edges_node_repository,
            GPullRequestsData_viewer_pullRequests_edges_node_repositoryBuilder> {
  GPullRequestsData_viewer_pullRequests_edges_node_repository._();

  factory GPullRequestsData_viewer_pullRequests_edges_node_repository(
      [Function(
              GPullRequestsData_viewer_pullRequests_edges_node_repositoryBuilder
                  b)
          updates]) = _$GPullRequestsData_viewer_pullRequests_edges_node_repository;

  static void _initializeBuilder(
          GPullRequestsData_viewer_pullRequests_edges_node_repositoryBuilder
              b) =>
      b..G__typename = 'Repository';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get nameWithOwner;
  _i2.GURI get url;
  static Serializer<GPullRequestsData_viewer_pullRequests_edges_node_repository>
      get serializer =>
          _$gPullRequestsDataViewerPullRequestsEdgesNodeRepositorySerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
      GPullRequestsData_viewer_pullRequests_edges_node_repository.serializer,
      this) as Map<String, dynamic>);
  static GPullRequestsData_viewer_pullRequests_edges_node_repository? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
          GPullRequestsData_viewer_pullRequests_edges_node_repository
              .serializer,
          json);
}

abstract class GPullRequestsData_viewer_pullRequests_edges_node_author
    implements
        Built<GPullRequestsData_viewer_pullRequests_edges_node_author,
            GPullRequestsData_viewer_pullRequests_edges_node_authorBuilder> {
  GPullRequestsData_viewer_pullRequests_edges_node_author._();

  factory GPullRequestsData_viewer_pullRequests_edges_node_author(
      [Function(
              GPullRequestsData_viewer_pullRequests_edges_node_authorBuilder b)
          updates]) = _$GPullRequestsData_viewer_pullRequests_edges_node_author;

  static void _initializeBuilder(
          GPullRequestsData_viewer_pullRequests_edges_node_authorBuilder b) =>
      b..G__typename = 'Actor';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get login;
  _i2.GURI get url;
  static Serializer<GPullRequestsData_viewer_pullRequests_edges_node_author>
      get serializer =>
          _$gPullRequestsDataViewerPullRequestsEdgesNodeAuthorSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
      GPullRequestsData_viewer_pullRequests_edges_node_author.serializer,
      this) as Map<String, dynamic>);
  static GPullRequestsData_viewer_pullRequests_edges_node_author? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
          GPullRequestsData_viewer_pullRequests_edges_node_author.serializer,
          json);
}

abstract class GPullRequestsData_viewer_pullRequests_edges_node_comments
    implements
        Built<GPullRequestsData_viewer_pullRequests_edges_node_comments,
            GPullRequestsData_viewer_pullRequests_edges_node_commentsBuilder> {
  GPullRequestsData_viewer_pullRequests_edges_node_comments._();

  factory GPullRequestsData_viewer_pullRequests_edges_node_comments(
      [Function(
              GPullRequestsData_viewer_pullRequests_edges_node_commentsBuilder
                  b)
          updates]) = _$GPullRequestsData_viewer_pullRequests_edges_node_comments;

  static void _initializeBuilder(
          GPullRequestsData_viewer_pullRequests_edges_node_commentsBuilder b) =>
      b..G__typename = 'IssueCommentConnection';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int get totalCount;
  static Serializer<GPullRequestsData_viewer_pullRequests_edges_node_comments>
      get serializer =>
          _$gPullRequestsDataViewerPullRequestsEdgesNodeCommentsSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
      GPullRequestsData_viewer_pullRequests_edges_node_comments.serializer,
      this) as Map<String, dynamic>);
  static GPullRequestsData_viewer_pullRequests_edges_node_comments? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
          GPullRequestsData_viewer_pullRequests_edges_node_comments.serializer,
          json);
}

abstract class GPullRequestsData_viewer_pullRequests_edges_node_files
    implements
        Built<GPullRequestsData_viewer_pullRequests_edges_node_files,
            GPullRequestsData_viewer_pullRequests_edges_node_filesBuilder> {
  GPullRequestsData_viewer_pullRequests_edges_node_files._();

  factory GPullRequestsData_viewer_pullRequests_edges_node_files(
      [Function(GPullRequestsData_viewer_pullRequests_edges_node_filesBuilder b)
          updates]) = _$GPullRequestsData_viewer_pullRequests_edges_node_files;

  static void _initializeBuilder(
          GPullRequestsData_viewer_pullRequests_edges_node_filesBuilder b) =>
      b..G__typename = 'PullRequestChangedFileConnection';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int get totalCount;
  static Serializer<GPullRequestsData_viewer_pullRequests_edges_node_files>
      get serializer =>
          _$gPullRequestsDataViewerPullRequestsEdgesNodeFilesSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
      GPullRequestsData_viewer_pullRequests_edges_node_files.serializer,
      this) as Map<String, dynamic>);
  static GPullRequestsData_viewer_pullRequests_edges_node_files? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
          GPullRequestsData_viewer_pullRequests_edges_node_files.serializer,
          json);
}

abstract class GAssignedIssuesData
    implements Built<GAssignedIssuesData, GAssignedIssuesDataBuilder> {
  GAssignedIssuesData._();

  factory GAssignedIssuesData(
      [Function(GAssignedIssuesDataBuilder b) updates]) = _$GAssignedIssuesData;

  static void _initializeBuilder(GAssignedIssuesDataBuilder b) =>
      b..G__typename = 'Query';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GAssignedIssuesData_search get search;
  static Serializer<GAssignedIssuesData> get serializer =>
      _$gAssignedIssuesDataSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GAssignedIssuesData.serializer, this)
          as Map<String, dynamic>);
  static GAssignedIssuesData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GAssignedIssuesData.serializer, json);
}

abstract class GAssignedIssuesData_search
    implements
        Built<GAssignedIssuesData_search, GAssignedIssuesData_searchBuilder> {
  GAssignedIssuesData_search._();

  factory GAssignedIssuesData_search(
          [Function(GAssignedIssuesData_searchBuilder b) updates]) =
      _$GAssignedIssuesData_search;

  static void _initializeBuilder(GAssignedIssuesData_searchBuilder b) =>
      b..G__typename = 'SearchResultItemConnection';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  BuiltList<GAssignedIssuesData_search_edges>? get edges;
  static Serializer<GAssignedIssuesData_search> get serializer =>
      _$gAssignedIssuesDataSearchSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
      GAssignedIssuesData_search.serializer, this) as Map<String, dynamic>);
  static GAssignedIssuesData_search? fromJson(Map<String, dynamic> json) =>
      _i1.serializers
          .deserializeWith(GAssignedIssuesData_search.serializer, json);
}

abstract class GAssignedIssuesData_search_edges
    implements
        Built<GAssignedIssuesData_search_edges,
            GAssignedIssuesData_search_edgesBuilder> {
  GAssignedIssuesData_search_edges._();

  factory GAssignedIssuesData_search_edges(
          [Function(GAssignedIssuesData_search_edgesBuilder b) updates]) =
      _$GAssignedIssuesData_search_edges;

  static void _initializeBuilder(GAssignedIssuesData_search_edgesBuilder b) =>
      b..G__typename = 'SearchResultItemEdge';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GAssignedIssuesData_search_edges_node? get node;
  static Serializer<GAssignedIssuesData_search_edges> get serializer =>
      _$gAssignedIssuesDataSearchEdgesSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers
          .serializeWith(GAssignedIssuesData_search_edges.serializer, this)
      as Map<String, dynamic>);
  static GAssignedIssuesData_search_edges? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers
          .deserializeWith(GAssignedIssuesData_search_edges.serializer, json);
}

abstract class GAssignedIssuesData_search_edges_node {
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  static Serializer<GAssignedIssuesData_search_edges_node> get serializer =>
      _i3.InlineFragmentSerializer<GAssignedIssuesData_search_edges_node>(
          'GAssignedIssuesData_search_edges_node',
          GAssignedIssuesData_search_edges_node__base,
          [GAssignedIssuesData_search_edges_node__asIssue]);
  Map<String, dynamic> toJson() => (_i1.serializers
          .serializeWith(GAssignedIssuesData_search_edges_node.serializer, this)
      as Map<String, dynamic>);
  static GAssignedIssuesData_search_edges_node? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
          GAssignedIssuesData_search_edges_node.serializer, json);
}

abstract class GAssignedIssuesData_search_edges_node__base
    implements
        Built<GAssignedIssuesData_search_edges_node__base,
            GAssignedIssuesData_search_edges_node__baseBuilder>,
        GAssignedIssuesData_search_edges_node {
  GAssignedIssuesData_search_edges_node__base._();

  factory GAssignedIssuesData_search_edges_node__base(
      [Function(GAssignedIssuesData_search_edges_node__baseBuilder b)
          updates]) = _$GAssignedIssuesData_search_edges_node__base;

  static void _initializeBuilder(
          GAssignedIssuesData_search_edges_node__baseBuilder b) =>
      b..G__typename = 'SearchResultItem';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  static Serializer<GAssignedIssuesData_search_edges_node__base>
      get serializer => _$gAssignedIssuesDataSearchEdgesNodeBaseSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
          GAssignedIssuesData_search_edges_node__base.serializer, this)
      as Map<String, dynamic>);
  static GAssignedIssuesData_search_edges_node__base? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
          GAssignedIssuesData_search_edges_node__base.serializer, json);
}

abstract class GAssignedIssuesData_search_edges_node__asIssue
    implements
        Built<GAssignedIssuesData_search_edges_node__asIssue,
            GAssignedIssuesData_search_edges_node__asIssueBuilder>,
        GAssignedIssuesData_search_edges_node {
  GAssignedIssuesData_search_edges_node__asIssue._();

  factory GAssignedIssuesData_search_edges_node__asIssue(
      [Function(GAssignedIssuesData_search_edges_node__asIssueBuilder b)
          updates]) = _$GAssignedIssuesData_search_edges_node__asIssue;

  static void _initializeBuilder(
          GAssignedIssuesData_search_edges_node__asIssueBuilder b) =>
      b..G__typename = 'Issue';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GAssignedIssuesData_search_edges_node__asIssue_repository get repository;
  int get number;
  _i2.GURI get url;
  String get title;
  GAssignedIssuesData_search_edges_node__asIssue_author? get author;
  GAssignedIssuesData_search_edges_node__asIssue_labels? get labels;
  GAssignedIssuesData_search_edges_node__asIssue_comments get comments;
  static Serializer<GAssignedIssuesData_search_edges_node__asIssue>
      get serializer => _$gAssignedIssuesDataSearchEdgesNodeAsIssueSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
          GAssignedIssuesData_search_edges_node__asIssue.serializer, this)
      as Map<String, dynamic>);
  static GAssignedIssuesData_search_edges_node__asIssue? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
          GAssignedIssuesData_search_edges_node__asIssue.serializer, json);
}

abstract class GAssignedIssuesData_search_edges_node__asIssue_repository
    implements
        Built<GAssignedIssuesData_search_edges_node__asIssue_repository,
            GAssignedIssuesData_search_edges_node__asIssue_repositoryBuilder> {
  GAssignedIssuesData_search_edges_node__asIssue_repository._();

  factory GAssignedIssuesData_search_edges_node__asIssue_repository(
      [Function(
              GAssignedIssuesData_search_edges_node__asIssue_repositoryBuilder
                  b)
          updates]) = _$GAssignedIssuesData_search_edges_node__asIssue_repository;

  static void _initializeBuilder(
          GAssignedIssuesData_search_edges_node__asIssue_repositoryBuilder b) =>
      b..G__typename = 'Repository';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get nameWithOwner;
  _i2.GURI get url;
  static Serializer<GAssignedIssuesData_search_edges_node__asIssue_repository>
      get serializer =>
          _$gAssignedIssuesDataSearchEdgesNodeAsIssueRepositorySerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
      GAssignedIssuesData_search_edges_node__asIssue_repository.serializer,
      this) as Map<String, dynamic>);
  static GAssignedIssuesData_search_edges_node__asIssue_repository? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
          GAssignedIssuesData_search_edges_node__asIssue_repository.serializer,
          json);
}

abstract class GAssignedIssuesData_search_edges_node__asIssue_author
    implements
        Built<GAssignedIssuesData_search_edges_node__asIssue_author,
            GAssignedIssuesData_search_edges_node__asIssue_authorBuilder> {
  GAssignedIssuesData_search_edges_node__asIssue_author._();

  factory GAssignedIssuesData_search_edges_node__asIssue_author(
      [Function(GAssignedIssuesData_search_edges_node__asIssue_authorBuilder b)
          updates]) = _$GAssignedIssuesData_search_edges_node__asIssue_author;

  static void _initializeBuilder(
          GAssignedIssuesData_search_edges_node__asIssue_authorBuilder b) =>
      b..G__typename = 'Actor';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get login;
  _i2.GURI get url;
  static Serializer<GAssignedIssuesData_search_edges_node__asIssue_author>
      get serializer =>
          _$gAssignedIssuesDataSearchEdgesNodeAsIssueAuthorSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
      GAssignedIssuesData_search_edges_node__asIssue_author.serializer,
      this) as Map<String, dynamic>);
  static GAssignedIssuesData_search_edges_node__asIssue_author? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
          GAssignedIssuesData_search_edges_node__asIssue_author.serializer,
          json);
}

abstract class GAssignedIssuesData_search_edges_node__asIssue_labels
    implements
        Built<GAssignedIssuesData_search_edges_node__asIssue_labels,
            GAssignedIssuesData_search_edges_node__asIssue_labelsBuilder> {
  GAssignedIssuesData_search_edges_node__asIssue_labels._();

  factory GAssignedIssuesData_search_edges_node__asIssue_labels(
      [Function(GAssignedIssuesData_search_edges_node__asIssue_labelsBuilder b)
          updates]) = _$GAssignedIssuesData_search_edges_node__asIssue_labels;

  static void _initializeBuilder(
          GAssignedIssuesData_search_edges_node__asIssue_labelsBuilder b) =>
      b..G__typename = 'LabelConnection';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  BuiltList<GAssignedIssuesData_search_edges_node__asIssue_labels_nodes>?
      get nodes;
  static Serializer<GAssignedIssuesData_search_edges_node__asIssue_labels>
      get serializer =>
          _$gAssignedIssuesDataSearchEdgesNodeAsIssueLabelsSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
      GAssignedIssuesData_search_edges_node__asIssue_labels.serializer,
      this) as Map<String, dynamic>);
  static GAssignedIssuesData_search_edges_node__asIssue_labels? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
          GAssignedIssuesData_search_edges_node__asIssue_labels.serializer,
          json);
}

abstract class GAssignedIssuesData_search_edges_node__asIssue_labels_nodes
    implements
        Built<GAssignedIssuesData_search_edges_node__asIssue_labels_nodes,
            GAssignedIssuesData_search_edges_node__asIssue_labels_nodesBuilder> {
  GAssignedIssuesData_search_edges_node__asIssue_labels_nodes._();

  factory GAssignedIssuesData_search_edges_node__asIssue_labels_nodes(
      [Function(
              GAssignedIssuesData_search_edges_node__asIssue_labels_nodesBuilder
                  b)
          updates]) = _$GAssignedIssuesData_search_edges_node__asIssue_labels_nodes;

  static void _initializeBuilder(
          GAssignedIssuesData_search_edges_node__asIssue_labels_nodesBuilder
              b) =>
      b..G__typename = 'Label';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get name;
  String get color;
  static Serializer<GAssignedIssuesData_search_edges_node__asIssue_labels_nodes>
      get serializer =>
          _$gAssignedIssuesDataSearchEdgesNodeAsIssueLabelsNodesSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
      GAssignedIssuesData_search_edges_node__asIssue_labels_nodes.serializer,
      this) as Map<String, dynamic>);
  static GAssignedIssuesData_search_edges_node__asIssue_labels_nodes? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
          GAssignedIssuesData_search_edges_node__asIssue_labels_nodes
              .serializer,
          json);
}

abstract class GAssignedIssuesData_search_edges_node__asIssue_comments
    implements
        Built<GAssignedIssuesData_search_edges_node__asIssue_comments,
            GAssignedIssuesData_search_edges_node__asIssue_commentsBuilder> {
  GAssignedIssuesData_search_edges_node__asIssue_comments._();

  factory GAssignedIssuesData_search_edges_node__asIssue_comments(
      [Function(
              GAssignedIssuesData_search_edges_node__asIssue_commentsBuilder b)
          updates]) = _$GAssignedIssuesData_search_edges_node__asIssue_comments;

  static void _initializeBuilder(
          GAssignedIssuesData_search_edges_node__asIssue_commentsBuilder b) =>
      b..G__typename = 'IssueCommentConnection';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int get totalCount;
  static Serializer<GAssignedIssuesData_search_edges_node__asIssue_comments>
      get serializer =>
          _$gAssignedIssuesDataSearchEdgesNodeAsIssueCommentsSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
      GAssignedIssuesData_search_edges_node__asIssue_comments.serializer,
      this) as Map<String, dynamic>);
  static GAssignedIssuesData_search_edges_node__asIssue_comments? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
          GAssignedIssuesData_search_edges_node__asIssue_comments.serializer,
          json);
}

abstract class GRepositoriesData
    implements Built<GRepositoriesData, GRepositoriesDataBuilder> {
  GRepositoriesData._();

  factory GRepositoriesData([Function(GRepositoriesDataBuilder b) updates]) =
      _$GRepositoriesData;

  static void _initializeBuilder(GRepositoriesDataBuilder b) =>
      b..G__typename = 'Query';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GRepositoriesData_viewer get viewer;
  static Serializer<GRepositoriesData> get serializer =>
      _$gRepositoriesDataSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GRepositoriesData.serializer, this)
          as Map<String, dynamic>);
  static GRepositoriesData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GRepositoriesData.serializer, json);
}

abstract class GRepositoriesData_viewer
    implements
        Built<GRepositoriesData_viewer, GRepositoriesData_viewerBuilder> {
  GRepositoriesData_viewer._();

  factory GRepositoriesData_viewer(
          [Function(GRepositoriesData_viewerBuilder b) updates]) =
      _$GRepositoriesData_viewer;

  static void _initializeBuilder(GRepositoriesData_viewerBuilder b) =>
      b..G__typename = 'User';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GRepositoriesData_viewer_repositories get repositories;
  static Serializer<GRepositoriesData_viewer> get serializer =>
      _$gRepositoriesDataViewerSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GRepositoriesData_viewer.serializer, this)
          as Map<String, dynamic>);
  static GRepositoriesData_viewer? fromJson(Map<String, dynamic> json) =>
      _i1.serializers
          .deserializeWith(GRepositoriesData_viewer.serializer, json);
}

abstract class GRepositoriesData_viewer_repositories
    implements
        Built<GRepositoriesData_viewer_repositories,
            GRepositoriesData_viewer_repositoriesBuilder> {
  GRepositoriesData_viewer_repositories._();

  factory GRepositoriesData_viewer_repositories(
          [Function(GRepositoriesData_viewer_repositoriesBuilder b) updates]) =
      _$GRepositoriesData_viewer_repositories;

  static void _initializeBuilder(
          GRepositoriesData_viewer_repositoriesBuilder b) =>
      b..G__typename = 'RepositoryConnection';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  BuiltList<GRepositoriesData_viewer_repositories_nodes>? get nodes;
  static Serializer<GRepositoriesData_viewer_repositories> get serializer =>
      _$gRepositoriesDataViewerRepositoriesSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers
          .serializeWith(GRepositoriesData_viewer_repositories.serializer, this)
      as Map<String, dynamic>);
  static GRepositoriesData_viewer_repositories? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
          GRepositoriesData_viewer_repositories.serializer, json);
}

abstract class GRepositoriesData_viewer_repositories_nodes
    implements
        Built<GRepositoriesData_viewer_repositories_nodes,
            GRepositoriesData_viewer_repositories_nodesBuilder> {
  GRepositoriesData_viewer_repositories_nodes._();

  factory GRepositoriesData_viewer_repositories_nodes(
      [Function(GRepositoriesData_viewer_repositories_nodesBuilder b)
          updates]) = _$GRepositoriesData_viewer_repositories_nodes;

  static void _initializeBuilder(
          GRepositoriesData_viewer_repositories_nodesBuilder b) =>
      b..G__typename = 'Repository';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get name;
  String? get description;
  bool get isFork;
  bool get isPrivate;
  GRepositoriesData_viewer_repositories_nodes_stargazers get stargazers;
  _i2.GURI get url;
  GRepositoriesData_viewer_repositories_nodes_issues get issues;
  GRepositoriesData_viewer_repositories_nodes_owner get owner;
  static Serializer<GRepositoriesData_viewer_repositories_nodes>
      get serializer => _$gRepositoriesDataViewerRepositoriesNodesSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
          GRepositoriesData_viewer_repositories_nodes.serializer, this)
      as Map<String, dynamic>);
  static GRepositoriesData_viewer_repositories_nodes? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
          GRepositoriesData_viewer_repositories_nodes.serializer, json);
}

abstract class GRepositoriesData_viewer_repositories_nodes_stargazers
    implements
        Built<GRepositoriesData_viewer_repositories_nodes_stargazers,
            GRepositoriesData_viewer_repositories_nodes_stargazersBuilder> {
  GRepositoriesData_viewer_repositories_nodes_stargazers._();

  factory GRepositoriesData_viewer_repositories_nodes_stargazers(
      [Function(GRepositoriesData_viewer_repositories_nodes_stargazersBuilder b)
          updates]) = _$GRepositoriesData_viewer_repositories_nodes_stargazers;

  static void _initializeBuilder(
          GRepositoriesData_viewer_repositories_nodes_stargazersBuilder b) =>
      b..G__typename = 'StargazerConnection';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int get totalCount;
  static Serializer<GRepositoriesData_viewer_repositories_nodes_stargazers>
      get serializer =>
          _$gRepositoriesDataViewerRepositoriesNodesStargazersSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
      GRepositoriesData_viewer_repositories_nodes_stargazers.serializer,
      this) as Map<String, dynamic>);
  static GRepositoriesData_viewer_repositories_nodes_stargazers? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
          GRepositoriesData_viewer_repositories_nodes_stargazers.serializer,
          json);
}

abstract class GRepositoriesData_viewer_repositories_nodes_issues
    implements
        Built<GRepositoriesData_viewer_repositories_nodes_issues,
            GRepositoriesData_viewer_repositories_nodes_issuesBuilder> {
  GRepositoriesData_viewer_repositories_nodes_issues._();

  factory GRepositoriesData_viewer_repositories_nodes_issues(
      [Function(GRepositoriesData_viewer_repositories_nodes_issuesBuilder b)
          updates]) = _$GRepositoriesData_viewer_repositories_nodes_issues;

  static void _initializeBuilder(
          GRepositoriesData_viewer_repositories_nodes_issuesBuilder b) =>
      b..G__typename = 'IssueConnection';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int get totalCount;
  static Serializer<GRepositoriesData_viewer_repositories_nodes_issues>
      get serializer =>
          _$gRepositoriesDataViewerRepositoriesNodesIssuesSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
          GRepositoriesData_viewer_repositories_nodes_issues.serializer, this)
      as Map<String, dynamic>);
  static GRepositoriesData_viewer_repositories_nodes_issues? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
          GRepositoriesData_viewer_repositories_nodes_issues.serializer, json);
}

abstract class GRepositoriesData_viewer_repositories_nodes_owner
    implements
        Built<GRepositoriesData_viewer_repositories_nodes_owner,
            GRepositoriesData_viewer_repositories_nodes_ownerBuilder> {
  GRepositoriesData_viewer_repositories_nodes_owner._();

  factory GRepositoriesData_viewer_repositories_nodes_owner(
      [Function(GRepositoriesData_viewer_repositories_nodes_ownerBuilder b)
          updates]) = _$GRepositoriesData_viewer_repositories_nodes_owner;

  static void _initializeBuilder(
          GRepositoriesData_viewer_repositories_nodes_ownerBuilder b) =>
      b..G__typename = 'RepositoryOwner';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get login;
  _i2.GURI get avatarUrl;
  static Serializer<GRepositoriesData_viewer_repositories_nodes_owner>
      get serializer =>
          _$gRepositoriesDataViewerRepositoriesNodesOwnerSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
          GRepositoriesData_viewer_repositories_nodes_owner.serializer, this)
      as Map<String, dynamic>);
  static GRepositoriesData_viewer_repositories_nodes_owner? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
          GRepositoriesData_viewer_repositories_nodes_owner.serializer, json);
}
