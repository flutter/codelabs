// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'github_queries.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GViewerDetailData> _$gViewerDetailDataSerializer =
    new _$GViewerDetailDataSerializer();
Serializer<GViewerDetailData_viewer> _$gViewerDetailDataViewerSerializer =
    new _$GViewerDetailData_viewerSerializer();
Serializer<GPullRequestsData> _$gPullRequestsDataSerializer =
    new _$GPullRequestsDataSerializer();
Serializer<GPullRequestsData_viewer> _$gPullRequestsDataViewerSerializer =
    new _$GPullRequestsData_viewerSerializer();
Serializer<GPullRequestsData_viewer_pullRequests>
    _$gPullRequestsDataViewerPullRequestsSerializer =
    new _$GPullRequestsData_viewer_pullRequestsSerializer();
Serializer<GPullRequestsData_viewer_pullRequests_edges>
    _$gPullRequestsDataViewerPullRequestsEdgesSerializer =
    new _$GPullRequestsData_viewer_pullRequests_edgesSerializer();
Serializer<GPullRequestsData_viewer_pullRequests_edges_node>
    _$gPullRequestsDataViewerPullRequestsEdgesNodeSerializer =
    new _$GPullRequestsData_viewer_pullRequests_edges_nodeSerializer();
Serializer<GPullRequestsData_viewer_pullRequests_edges_node_repository>
    _$gPullRequestsDataViewerPullRequestsEdgesNodeRepositorySerializer =
    new _$GPullRequestsData_viewer_pullRequests_edges_node_repositorySerializer();
Serializer<GPullRequestsData_viewer_pullRequests_edges_node_author>
    _$gPullRequestsDataViewerPullRequestsEdgesNodeAuthorSerializer =
    new _$GPullRequestsData_viewer_pullRequests_edges_node_authorSerializer();
Serializer<GPullRequestsData_viewer_pullRequests_edges_node_comments>
    _$gPullRequestsDataViewerPullRequestsEdgesNodeCommentsSerializer =
    new _$GPullRequestsData_viewer_pullRequests_edges_node_commentsSerializer();
Serializer<GPullRequestsData_viewer_pullRequests_edges_node_files>
    _$gPullRequestsDataViewerPullRequestsEdgesNodeFilesSerializer =
    new _$GPullRequestsData_viewer_pullRequests_edges_node_filesSerializer();
Serializer<GAssignedIssuesData> _$gAssignedIssuesDataSerializer =
    new _$GAssignedIssuesDataSerializer();
Serializer<GAssignedIssuesData_search> _$gAssignedIssuesDataSearchSerializer =
    new _$GAssignedIssuesData_searchSerializer();
Serializer<GAssignedIssuesData_search_edges>
    _$gAssignedIssuesDataSearchEdgesSerializer =
    new _$GAssignedIssuesData_search_edgesSerializer();
Serializer<GAssignedIssuesData_search_edges_node__base>
    _$gAssignedIssuesDataSearchEdgesNodeBaseSerializer =
    new _$GAssignedIssuesData_search_edges_node__baseSerializer();
Serializer<GAssignedIssuesData_search_edges_node__asIssue>
    _$gAssignedIssuesDataSearchEdgesNodeAsIssueSerializer =
    new _$GAssignedIssuesData_search_edges_node__asIssueSerializer();
Serializer<GAssignedIssuesData_search_edges_node__asIssue_repository>
    _$gAssignedIssuesDataSearchEdgesNodeAsIssueRepositorySerializer =
    new _$GAssignedIssuesData_search_edges_node__asIssue_repositorySerializer();
Serializer<GAssignedIssuesData_search_edges_node__asIssue_author>
    _$gAssignedIssuesDataSearchEdgesNodeAsIssueAuthorSerializer =
    new _$GAssignedIssuesData_search_edges_node__asIssue_authorSerializer();
Serializer<GAssignedIssuesData_search_edges_node__asIssue_labels>
    _$gAssignedIssuesDataSearchEdgesNodeAsIssueLabelsSerializer =
    new _$GAssignedIssuesData_search_edges_node__asIssue_labelsSerializer();
Serializer<GAssignedIssuesData_search_edges_node__asIssue_labels_nodes>
    _$gAssignedIssuesDataSearchEdgesNodeAsIssueLabelsNodesSerializer =
    new _$GAssignedIssuesData_search_edges_node__asIssue_labels_nodesSerializer();
Serializer<GAssignedIssuesData_search_edges_node__asIssue_comments>
    _$gAssignedIssuesDataSearchEdgesNodeAsIssueCommentsSerializer =
    new _$GAssignedIssuesData_search_edges_node__asIssue_commentsSerializer();
Serializer<GRepositoriesData> _$gRepositoriesDataSerializer =
    new _$GRepositoriesDataSerializer();
Serializer<GRepositoriesData_viewer> _$gRepositoriesDataViewerSerializer =
    new _$GRepositoriesData_viewerSerializer();
Serializer<GRepositoriesData_viewer_repositories>
    _$gRepositoriesDataViewerRepositoriesSerializer =
    new _$GRepositoriesData_viewer_repositoriesSerializer();
Serializer<GRepositoriesData_viewer_repositories_nodes>
    _$gRepositoriesDataViewerRepositoriesNodesSerializer =
    new _$GRepositoriesData_viewer_repositories_nodesSerializer();
Serializer<GRepositoriesData_viewer_repositories_nodes_stargazers>
    _$gRepositoriesDataViewerRepositoriesNodesStargazersSerializer =
    new _$GRepositoriesData_viewer_repositories_nodes_stargazersSerializer();
Serializer<GRepositoriesData_viewer_repositories_nodes_issues>
    _$gRepositoriesDataViewerRepositoriesNodesIssuesSerializer =
    new _$GRepositoriesData_viewer_repositories_nodes_issuesSerializer();
Serializer<GRepositoriesData_viewer_repositories_nodes_owner>
    _$gRepositoriesDataViewerRepositoriesNodesOwnerSerializer =
    new _$GRepositoriesData_viewer_repositories_nodes_ownerSerializer();

class _$GViewerDetailDataSerializer
    implements StructuredSerializer<GViewerDetailData> {
  @override
  final Iterable<Type> types = const [GViewerDetailData, _$GViewerDetailData];
  @override
  final String wireName = 'GViewerDetailData';

  @override
  Iterable<Object?> serialize(Serializers serializers, GViewerDetailData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'viewer',
      serializers.serialize(object.viewer,
          specifiedType: const FullType(GViewerDetailData_viewer)),
    ];

    return result;
  }

  @override
  GViewerDetailData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GViewerDetailDataBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'viewer':
          result.viewer.replace(serializers.deserialize(value,
                  specifiedType: const FullType(GViewerDetailData_viewer))!
              as GViewerDetailData_viewer);
          break;
      }
    }

    return result.build();
  }
}

class _$GViewerDetailData_viewerSerializer
    implements StructuredSerializer<GViewerDetailData_viewer> {
  @override
  final Iterable<Type> types = const [
    GViewerDetailData_viewer,
    _$GViewerDetailData_viewer
  ];
  @override
  final String wireName = 'GViewerDetailData_viewer';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GViewerDetailData_viewer object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'login',
      serializers.serialize(object.login,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  GViewerDetailData_viewer deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GViewerDetailData_viewerBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'login':
          result.login = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$GPullRequestsDataSerializer
    implements StructuredSerializer<GPullRequestsData> {
  @override
  final Iterable<Type> types = const [GPullRequestsData, _$GPullRequestsData];
  @override
  final String wireName = 'GPullRequestsData';

  @override
  Iterable<Object?> serialize(Serializers serializers, GPullRequestsData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'viewer',
      serializers.serialize(object.viewer,
          specifiedType: const FullType(GPullRequestsData_viewer)),
    ];

    return result;
  }

  @override
  GPullRequestsData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GPullRequestsDataBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'viewer':
          result.viewer.replace(serializers.deserialize(value,
                  specifiedType: const FullType(GPullRequestsData_viewer))!
              as GPullRequestsData_viewer);
          break;
      }
    }

    return result.build();
  }
}

class _$GPullRequestsData_viewerSerializer
    implements StructuredSerializer<GPullRequestsData_viewer> {
  @override
  final Iterable<Type> types = const [
    GPullRequestsData_viewer,
    _$GPullRequestsData_viewer
  ];
  @override
  final String wireName = 'GPullRequestsData_viewer';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GPullRequestsData_viewer object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'pullRequests',
      serializers.serialize(object.pullRequests,
          specifiedType: const FullType(GPullRequestsData_viewer_pullRequests)),
    ];

    return result;
  }

  @override
  GPullRequestsData_viewer deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GPullRequestsData_viewerBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'pullRequests':
          result.pullRequests.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(GPullRequestsData_viewer_pullRequests))!
              as GPullRequestsData_viewer_pullRequests);
          break;
      }
    }

    return result.build();
  }
}

class _$GPullRequestsData_viewer_pullRequestsSerializer
    implements StructuredSerializer<GPullRequestsData_viewer_pullRequests> {
  @override
  final Iterable<Type> types = const [
    GPullRequestsData_viewer_pullRequests,
    _$GPullRequestsData_viewer_pullRequests
  ];
  @override
  final String wireName = 'GPullRequestsData_viewer_pullRequests';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GPullRequestsData_viewer_pullRequests object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.edges;
    if (value != null) {
      result
        ..add('edges')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType(GPullRequestsData_viewer_pullRequests_edges)
            ])));
    }
    return result;
  }

  @override
  GPullRequestsData_viewer_pullRequests deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GPullRequestsData_viewer_pullRequestsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'edges':
          result.edges.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(GPullRequestsData_viewer_pullRequests_edges)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$GPullRequestsData_viewer_pullRequests_edgesSerializer
    implements
        StructuredSerializer<GPullRequestsData_viewer_pullRequests_edges> {
  @override
  final Iterable<Type> types = const [
    GPullRequestsData_viewer_pullRequests_edges,
    _$GPullRequestsData_viewer_pullRequests_edges
  ];
  @override
  final String wireName = 'GPullRequestsData_viewer_pullRequests_edges';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GPullRequestsData_viewer_pullRequests_edges object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.node;
    if (value != null) {
      result
        ..add('node')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                GPullRequestsData_viewer_pullRequests_edges_node)));
    }
    return result;
  }

  @override
  GPullRequestsData_viewer_pullRequests_edges deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GPullRequestsData_viewer_pullRequests_edgesBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'node':
          result.node.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GPullRequestsData_viewer_pullRequests_edges_node))!
              as GPullRequestsData_viewer_pullRequests_edges_node);
          break;
      }
    }

    return result.build();
  }
}

class _$GPullRequestsData_viewer_pullRequests_edges_nodeSerializer
    implements
        StructuredSerializer<GPullRequestsData_viewer_pullRequests_edges_node> {
  @override
  final Iterable<Type> types = const [
    GPullRequestsData_viewer_pullRequests_edges_node,
    _$GPullRequestsData_viewer_pullRequests_edges_node
  ];
  @override
  final String wireName = 'GPullRequestsData_viewer_pullRequests_edges_node';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GPullRequestsData_viewer_pullRequests_edges_node object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'repository',
      serializers.serialize(object.repository,
          specifiedType: const FullType(
              GPullRequestsData_viewer_pullRequests_edges_node_repository)),
      'number',
      serializers.serialize(object.number, specifiedType: const FullType(int)),
      'url',
      serializers.serialize(object.url,
          specifiedType: const FullType(_i2.GURI)),
      'title',
      serializers.serialize(object.title,
          specifiedType: const FullType(String)),
      'updatedAt',
      serializers.serialize(object.updatedAt,
          specifiedType: const FullType(_i2.GDateTime)),
      'state',
      serializers.serialize(object.state,
          specifiedType: const FullType(_i2.GPullRequestState)),
      'isDraft',
      serializers.serialize(object.isDraft,
          specifiedType: const FullType(bool)),
      'comments',
      serializers.serialize(object.comments,
          specifiedType: const FullType(
              GPullRequestsData_viewer_pullRequests_edges_node_comments)),
    ];
    Object? value;
    value = object.author;
    if (value != null) {
      result
        ..add('author')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                GPullRequestsData_viewer_pullRequests_edges_node_author)));
    }
    value = object.files;
    if (value != null) {
      result
        ..add('files')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                GPullRequestsData_viewer_pullRequests_edges_node_files)));
    }
    return result;
  }

  @override
  GPullRequestsData_viewer_pullRequests_edges_node deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GPullRequestsData_viewer_pullRequests_edges_nodeBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'repository':
          result.repository.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GPullRequestsData_viewer_pullRequests_edges_node_repository))!
              as GPullRequestsData_viewer_pullRequests_edges_node_repository);
          break;
        case 'author':
          result.author.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GPullRequestsData_viewer_pullRequests_edges_node_author))!
              as GPullRequestsData_viewer_pullRequests_edges_node_author);
          break;
        case 'number':
          result.number = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'url':
          result.url.replace(serializers.deserialize(value,
              specifiedType: const FullType(_i2.GURI))! as _i2.GURI);
          break;
        case 'title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'updatedAt':
          result.updatedAt.replace(serializers.deserialize(value,
              specifiedType: const FullType(_i2.GDateTime))! as _i2.GDateTime);
          break;
        case 'state':
          result.state = serializers.deserialize(value,
                  specifiedType: const FullType(_i2.GPullRequestState))
              as _i2.GPullRequestState;
          break;
        case 'isDraft':
          result.isDraft = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'comments':
          result.comments.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GPullRequestsData_viewer_pullRequests_edges_node_comments))!
              as GPullRequestsData_viewer_pullRequests_edges_node_comments);
          break;
        case 'files':
          result.files.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GPullRequestsData_viewer_pullRequests_edges_node_files))!
              as GPullRequestsData_viewer_pullRequests_edges_node_files);
          break;
      }
    }

    return result.build();
  }
}

class _$GPullRequestsData_viewer_pullRequests_edges_node_repositorySerializer
    implements
        StructuredSerializer<
            GPullRequestsData_viewer_pullRequests_edges_node_repository> {
  @override
  final Iterable<Type> types = const [
    GPullRequestsData_viewer_pullRequests_edges_node_repository,
    _$GPullRequestsData_viewer_pullRequests_edges_node_repository
  ];
  @override
  final String wireName =
      'GPullRequestsData_viewer_pullRequests_edges_node_repository';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GPullRequestsData_viewer_pullRequests_edges_node_repository object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'nameWithOwner',
      serializers.serialize(object.nameWithOwner,
          specifiedType: const FullType(String)),
      'url',
      serializers.serialize(object.url,
          specifiedType: const FullType(_i2.GURI)),
    ];

    return result;
  }

  @override
  GPullRequestsData_viewer_pullRequests_edges_node_repository deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GPullRequestsData_viewer_pullRequests_edges_node_repositoryBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'nameWithOwner':
          result.nameWithOwner = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'url':
          result.url.replace(serializers.deserialize(value,
              specifiedType: const FullType(_i2.GURI))! as _i2.GURI);
          break;
      }
    }

    return result.build();
  }
}

class _$GPullRequestsData_viewer_pullRequests_edges_node_authorSerializer
    implements
        StructuredSerializer<
            GPullRequestsData_viewer_pullRequests_edges_node_author> {
  @override
  final Iterable<Type> types = const [
    GPullRequestsData_viewer_pullRequests_edges_node_author,
    _$GPullRequestsData_viewer_pullRequests_edges_node_author
  ];
  @override
  final String wireName =
      'GPullRequestsData_viewer_pullRequests_edges_node_author';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GPullRequestsData_viewer_pullRequests_edges_node_author object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'login',
      serializers.serialize(object.login,
          specifiedType: const FullType(String)),
      'url',
      serializers.serialize(object.url,
          specifiedType: const FullType(_i2.GURI)),
    ];

    return result;
  }

  @override
  GPullRequestsData_viewer_pullRequests_edges_node_author deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GPullRequestsData_viewer_pullRequests_edges_node_authorBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'login':
          result.login = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'url':
          result.url.replace(serializers.deserialize(value,
              specifiedType: const FullType(_i2.GURI))! as _i2.GURI);
          break;
      }
    }

    return result.build();
  }
}

class _$GPullRequestsData_viewer_pullRequests_edges_node_commentsSerializer
    implements
        StructuredSerializer<
            GPullRequestsData_viewer_pullRequests_edges_node_comments> {
  @override
  final Iterable<Type> types = const [
    GPullRequestsData_viewer_pullRequests_edges_node_comments,
    _$GPullRequestsData_viewer_pullRequests_edges_node_comments
  ];
  @override
  final String wireName =
      'GPullRequestsData_viewer_pullRequests_edges_node_comments';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GPullRequestsData_viewer_pullRequests_edges_node_comments object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'totalCount',
      serializers.serialize(object.totalCount,
          specifiedType: const FullType(int)),
    ];

    return result;
  }

  @override
  GPullRequestsData_viewer_pullRequests_edges_node_comments deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GPullRequestsData_viewer_pullRequests_edges_node_commentsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'totalCount':
          result.totalCount = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
      }
    }

    return result.build();
  }
}

class _$GPullRequestsData_viewer_pullRequests_edges_node_filesSerializer
    implements
        StructuredSerializer<
            GPullRequestsData_viewer_pullRequests_edges_node_files> {
  @override
  final Iterable<Type> types = const [
    GPullRequestsData_viewer_pullRequests_edges_node_files,
    _$GPullRequestsData_viewer_pullRequests_edges_node_files
  ];
  @override
  final String wireName =
      'GPullRequestsData_viewer_pullRequests_edges_node_files';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GPullRequestsData_viewer_pullRequests_edges_node_files object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'totalCount',
      serializers.serialize(object.totalCount,
          specifiedType: const FullType(int)),
    ];

    return result;
  }

  @override
  GPullRequestsData_viewer_pullRequests_edges_node_files deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GPullRequestsData_viewer_pullRequests_edges_node_filesBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'totalCount':
          result.totalCount = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
      }
    }

    return result.build();
  }
}

class _$GAssignedIssuesDataSerializer
    implements StructuredSerializer<GAssignedIssuesData> {
  @override
  final Iterable<Type> types = const [
    GAssignedIssuesData,
    _$GAssignedIssuesData
  ];
  @override
  final String wireName = 'GAssignedIssuesData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GAssignedIssuesData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'search',
      serializers.serialize(object.search,
          specifiedType: const FullType(GAssignedIssuesData_search)),
    ];

    return result;
  }

  @override
  GAssignedIssuesData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GAssignedIssuesDataBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'search':
          result.search.replace(serializers.deserialize(value,
                  specifiedType: const FullType(GAssignedIssuesData_search))!
              as GAssignedIssuesData_search);
          break;
      }
    }

    return result.build();
  }
}

class _$GAssignedIssuesData_searchSerializer
    implements StructuredSerializer<GAssignedIssuesData_search> {
  @override
  final Iterable<Type> types = const [
    GAssignedIssuesData_search,
    _$GAssignedIssuesData_search
  ];
  @override
  final String wireName = 'GAssignedIssuesData_search';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GAssignedIssuesData_search object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.edges;
    if (value != null) {
      result
        ..add('edges')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList,
                const [const FullType(GAssignedIssuesData_search_edges)])));
    }
    return result;
  }

  @override
  GAssignedIssuesData_search deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GAssignedIssuesData_searchBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'edges':
          result.edges.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(GAssignedIssuesData_search_edges)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$GAssignedIssuesData_search_edgesSerializer
    implements StructuredSerializer<GAssignedIssuesData_search_edges> {
  @override
  final Iterable<Type> types = const [
    GAssignedIssuesData_search_edges,
    _$GAssignedIssuesData_search_edges
  ];
  @override
  final String wireName = 'GAssignedIssuesData_search_edges';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GAssignedIssuesData_search_edges object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.node;
    if (value != null) {
      result
        ..add('node')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(GAssignedIssuesData_search_edges_node)));
    }
    return result;
  }

  @override
  GAssignedIssuesData_search_edges deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GAssignedIssuesData_search_edgesBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'node':
          result.node = serializers.deserialize(value,
                  specifiedType:
                      const FullType(GAssignedIssuesData_search_edges_node))
              as GAssignedIssuesData_search_edges_node?;
          break;
      }
    }

    return result.build();
  }
}

class _$GAssignedIssuesData_search_edges_node__baseSerializer
    implements
        StructuredSerializer<GAssignedIssuesData_search_edges_node__base> {
  @override
  final Iterable<Type> types = const [
    GAssignedIssuesData_search_edges_node__base,
    _$GAssignedIssuesData_search_edges_node__base
  ];
  @override
  final String wireName = 'GAssignedIssuesData_search_edges_node__base';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GAssignedIssuesData_search_edges_node__base object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  GAssignedIssuesData_search_edges_node__base deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GAssignedIssuesData_search_edges_node__baseBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$GAssignedIssuesData_search_edges_node__asIssueSerializer
    implements
        StructuredSerializer<GAssignedIssuesData_search_edges_node__asIssue> {
  @override
  final Iterable<Type> types = const [
    GAssignedIssuesData_search_edges_node__asIssue,
    _$GAssignedIssuesData_search_edges_node__asIssue
  ];
  @override
  final String wireName = 'GAssignedIssuesData_search_edges_node__asIssue';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GAssignedIssuesData_search_edges_node__asIssue object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'repository',
      serializers.serialize(object.repository,
          specifiedType: const FullType(
              GAssignedIssuesData_search_edges_node__asIssue_repository)),
      'number',
      serializers.serialize(object.number, specifiedType: const FullType(int)),
      'url',
      serializers.serialize(object.url,
          specifiedType: const FullType(_i2.GURI)),
      'title',
      serializers.serialize(object.title,
          specifiedType: const FullType(String)),
      'comments',
      serializers.serialize(object.comments,
          specifiedType: const FullType(
              GAssignedIssuesData_search_edges_node__asIssue_comments)),
    ];
    Object? value;
    value = object.author;
    if (value != null) {
      result
        ..add('author')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                GAssignedIssuesData_search_edges_node__asIssue_author)));
    }
    value = object.labels;
    if (value != null) {
      result
        ..add('labels')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                GAssignedIssuesData_search_edges_node__asIssue_labels)));
    }
    return result;
  }

  @override
  GAssignedIssuesData_search_edges_node__asIssue deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GAssignedIssuesData_search_edges_node__asIssueBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'repository':
          result.repository.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GAssignedIssuesData_search_edges_node__asIssue_repository))!
              as GAssignedIssuesData_search_edges_node__asIssue_repository);
          break;
        case 'number':
          result.number = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'url':
          result.url.replace(serializers.deserialize(value,
              specifiedType: const FullType(_i2.GURI))! as _i2.GURI);
          break;
        case 'title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'author':
          result.author.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GAssignedIssuesData_search_edges_node__asIssue_author))!
              as GAssignedIssuesData_search_edges_node__asIssue_author);
          break;
        case 'labels':
          result.labels.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GAssignedIssuesData_search_edges_node__asIssue_labels))!
              as GAssignedIssuesData_search_edges_node__asIssue_labels);
          break;
        case 'comments':
          result.comments.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GAssignedIssuesData_search_edges_node__asIssue_comments))!
              as GAssignedIssuesData_search_edges_node__asIssue_comments);
          break;
      }
    }

    return result.build();
  }
}

class _$GAssignedIssuesData_search_edges_node__asIssue_repositorySerializer
    implements
        StructuredSerializer<
            GAssignedIssuesData_search_edges_node__asIssue_repository> {
  @override
  final Iterable<Type> types = const [
    GAssignedIssuesData_search_edges_node__asIssue_repository,
    _$GAssignedIssuesData_search_edges_node__asIssue_repository
  ];
  @override
  final String wireName =
      'GAssignedIssuesData_search_edges_node__asIssue_repository';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GAssignedIssuesData_search_edges_node__asIssue_repository object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'nameWithOwner',
      serializers.serialize(object.nameWithOwner,
          specifiedType: const FullType(String)),
      'url',
      serializers.serialize(object.url,
          specifiedType: const FullType(_i2.GURI)),
    ];

    return result;
  }

  @override
  GAssignedIssuesData_search_edges_node__asIssue_repository deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GAssignedIssuesData_search_edges_node__asIssue_repositoryBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'nameWithOwner':
          result.nameWithOwner = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'url':
          result.url.replace(serializers.deserialize(value,
              specifiedType: const FullType(_i2.GURI))! as _i2.GURI);
          break;
      }
    }

    return result.build();
  }
}

class _$GAssignedIssuesData_search_edges_node__asIssue_authorSerializer
    implements
        StructuredSerializer<
            GAssignedIssuesData_search_edges_node__asIssue_author> {
  @override
  final Iterable<Type> types = const [
    GAssignedIssuesData_search_edges_node__asIssue_author,
    _$GAssignedIssuesData_search_edges_node__asIssue_author
  ];
  @override
  final String wireName =
      'GAssignedIssuesData_search_edges_node__asIssue_author';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GAssignedIssuesData_search_edges_node__asIssue_author object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'login',
      serializers.serialize(object.login,
          specifiedType: const FullType(String)),
      'url',
      serializers.serialize(object.url,
          specifiedType: const FullType(_i2.GURI)),
    ];

    return result;
  }

  @override
  GAssignedIssuesData_search_edges_node__asIssue_author deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GAssignedIssuesData_search_edges_node__asIssue_authorBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'login':
          result.login = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'url':
          result.url.replace(serializers.deserialize(value,
              specifiedType: const FullType(_i2.GURI))! as _i2.GURI);
          break;
      }
    }

    return result.build();
  }
}

class _$GAssignedIssuesData_search_edges_node__asIssue_labelsSerializer
    implements
        StructuredSerializer<
            GAssignedIssuesData_search_edges_node__asIssue_labels> {
  @override
  final Iterable<Type> types = const [
    GAssignedIssuesData_search_edges_node__asIssue_labels,
    _$GAssignedIssuesData_search_edges_node__asIssue_labels
  ];
  @override
  final String wireName =
      'GAssignedIssuesData_search_edges_node__asIssue_labels';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GAssignedIssuesData_search_edges_node__asIssue_labels object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.nodes;
    if (value != null) {
      result
        ..add('nodes')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType(
                  GAssignedIssuesData_search_edges_node__asIssue_labels_nodes)
            ])));
    }
    return result;
  }

  @override
  GAssignedIssuesData_search_edges_node__asIssue_labels deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GAssignedIssuesData_search_edges_node__asIssue_labelsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'nodes':
          result.nodes.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(
                    GAssignedIssuesData_search_edges_node__asIssue_labels_nodes)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$GAssignedIssuesData_search_edges_node__asIssue_labels_nodesSerializer
    implements
        StructuredSerializer<
            GAssignedIssuesData_search_edges_node__asIssue_labels_nodes> {
  @override
  final Iterable<Type> types = const [
    GAssignedIssuesData_search_edges_node__asIssue_labels_nodes,
    _$GAssignedIssuesData_search_edges_node__asIssue_labels_nodes
  ];
  @override
  final String wireName =
      'GAssignedIssuesData_search_edges_node__asIssue_labels_nodes';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GAssignedIssuesData_search_edges_node__asIssue_labels_nodes object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
      'color',
      serializers.serialize(object.color,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  GAssignedIssuesData_search_edges_node__asIssue_labels_nodes deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GAssignedIssuesData_search_edges_node__asIssue_labels_nodesBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'color':
          result.color = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$GAssignedIssuesData_search_edges_node__asIssue_commentsSerializer
    implements
        StructuredSerializer<
            GAssignedIssuesData_search_edges_node__asIssue_comments> {
  @override
  final Iterable<Type> types = const [
    GAssignedIssuesData_search_edges_node__asIssue_comments,
    _$GAssignedIssuesData_search_edges_node__asIssue_comments
  ];
  @override
  final String wireName =
      'GAssignedIssuesData_search_edges_node__asIssue_comments';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GAssignedIssuesData_search_edges_node__asIssue_comments object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'totalCount',
      serializers.serialize(object.totalCount,
          specifiedType: const FullType(int)),
    ];

    return result;
  }

  @override
  GAssignedIssuesData_search_edges_node__asIssue_comments deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GAssignedIssuesData_search_edges_node__asIssue_commentsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'totalCount':
          result.totalCount = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
      }
    }

    return result.build();
  }
}

class _$GRepositoriesDataSerializer
    implements StructuredSerializer<GRepositoriesData> {
  @override
  final Iterable<Type> types = const [GRepositoriesData, _$GRepositoriesData];
  @override
  final String wireName = 'GRepositoriesData';

  @override
  Iterable<Object?> serialize(Serializers serializers, GRepositoriesData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'viewer',
      serializers.serialize(object.viewer,
          specifiedType: const FullType(GRepositoriesData_viewer)),
    ];

    return result;
  }

  @override
  GRepositoriesData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GRepositoriesDataBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'viewer':
          result.viewer.replace(serializers.deserialize(value,
                  specifiedType: const FullType(GRepositoriesData_viewer))!
              as GRepositoriesData_viewer);
          break;
      }
    }

    return result.build();
  }
}

class _$GRepositoriesData_viewerSerializer
    implements StructuredSerializer<GRepositoriesData_viewer> {
  @override
  final Iterable<Type> types = const [
    GRepositoriesData_viewer,
    _$GRepositoriesData_viewer
  ];
  @override
  final String wireName = 'GRepositoriesData_viewer';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GRepositoriesData_viewer object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'repositories',
      serializers.serialize(object.repositories,
          specifiedType: const FullType(GRepositoriesData_viewer_repositories)),
    ];

    return result;
  }

  @override
  GRepositoriesData_viewer deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GRepositoriesData_viewerBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'repositories':
          result.repositories.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(GRepositoriesData_viewer_repositories))!
              as GRepositoriesData_viewer_repositories);
          break;
      }
    }

    return result.build();
  }
}

class _$GRepositoriesData_viewer_repositoriesSerializer
    implements StructuredSerializer<GRepositoriesData_viewer_repositories> {
  @override
  final Iterable<Type> types = const [
    GRepositoriesData_viewer_repositories,
    _$GRepositoriesData_viewer_repositories
  ];
  @override
  final String wireName = 'GRepositoriesData_viewer_repositories';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GRepositoriesData_viewer_repositories object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.nodes;
    if (value != null) {
      result
        ..add('nodes')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType(GRepositoriesData_viewer_repositories_nodes)
            ])));
    }
    return result;
  }

  @override
  GRepositoriesData_viewer_repositories deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GRepositoriesData_viewer_repositoriesBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'nodes':
          result.nodes.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(GRepositoriesData_viewer_repositories_nodes)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$GRepositoriesData_viewer_repositories_nodesSerializer
    implements
        StructuredSerializer<GRepositoriesData_viewer_repositories_nodes> {
  @override
  final Iterable<Type> types = const [
    GRepositoriesData_viewer_repositories_nodes,
    _$GRepositoriesData_viewer_repositories_nodes
  ];
  @override
  final String wireName = 'GRepositoriesData_viewer_repositories_nodes';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GRepositoriesData_viewer_repositories_nodes object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
      'isFork',
      serializers.serialize(object.isFork, specifiedType: const FullType(bool)),
      'isPrivate',
      serializers.serialize(object.isPrivate,
          specifiedType: const FullType(bool)),
      'stargazers',
      serializers.serialize(object.stargazers,
          specifiedType: const FullType(
              GRepositoriesData_viewer_repositories_nodes_stargazers)),
      'url',
      serializers.serialize(object.url,
          specifiedType: const FullType(_i2.GURI)),
      'issues',
      serializers.serialize(object.issues,
          specifiedType: const FullType(
              GRepositoriesData_viewer_repositories_nodes_issues)),
      'owner',
      serializers.serialize(object.owner,
          specifiedType: const FullType(
              GRepositoriesData_viewer_repositories_nodes_owner)),
    ];
    Object? value;
    value = object.description;
    if (value != null) {
      result
        ..add('description')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GRepositoriesData_viewer_repositories_nodes deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GRepositoriesData_viewer_repositories_nodesBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'isFork':
          result.isFork = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'isPrivate':
          result.isPrivate = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'stargazers':
          result.stargazers.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GRepositoriesData_viewer_repositories_nodes_stargazers))!
              as GRepositoriesData_viewer_repositories_nodes_stargazers);
          break;
        case 'url':
          result.url.replace(serializers.deserialize(value,
              specifiedType: const FullType(_i2.GURI))! as _i2.GURI);
          break;
        case 'issues':
          result.issues.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GRepositoriesData_viewer_repositories_nodes_issues))!
              as GRepositoriesData_viewer_repositories_nodes_issues);
          break;
        case 'owner':
          result.owner.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GRepositoriesData_viewer_repositories_nodes_owner))!
              as GRepositoriesData_viewer_repositories_nodes_owner);
          break;
      }
    }

    return result.build();
  }
}

class _$GRepositoriesData_viewer_repositories_nodes_stargazersSerializer
    implements
        StructuredSerializer<
            GRepositoriesData_viewer_repositories_nodes_stargazers> {
  @override
  final Iterable<Type> types = const [
    GRepositoriesData_viewer_repositories_nodes_stargazers,
    _$GRepositoriesData_viewer_repositories_nodes_stargazers
  ];
  @override
  final String wireName =
      'GRepositoriesData_viewer_repositories_nodes_stargazers';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GRepositoriesData_viewer_repositories_nodes_stargazers object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'totalCount',
      serializers.serialize(object.totalCount,
          specifiedType: const FullType(int)),
    ];

    return result;
  }

  @override
  GRepositoriesData_viewer_repositories_nodes_stargazers deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GRepositoriesData_viewer_repositories_nodes_stargazersBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'totalCount':
          result.totalCount = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
      }
    }

    return result.build();
  }
}

class _$GRepositoriesData_viewer_repositories_nodes_issuesSerializer
    implements
        StructuredSerializer<
            GRepositoriesData_viewer_repositories_nodes_issues> {
  @override
  final Iterable<Type> types = const [
    GRepositoriesData_viewer_repositories_nodes_issues,
    _$GRepositoriesData_viewer_repositories_nodes_issues
  ];
  @override
  final String wireName = 'GRepositoriesData_viewer_repositories_nodes_issues';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GRepositoriesData_viewer_repositories_nodes_issues object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'totalCount',
      serializers.serialize(object.totalCount,
          specifiedType: const FullType(int)),
    ];

    return result;
  }

  @override
  GRepositoriesData_viewer_repositories_nodes_issues deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GRepositoriesData_viewer_repositories_nodes_issuesBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'totalCount':
          result.totalCount = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
      }
    }

    return result.build();
  }
}

class _$GRepositoriesData_viewer_repositories_nodes_ownerSerializer
    implements
        StructuredSerializer<
            GRepositoriesData_viewer_repositories_nodes_owner> {
  @override
  final Iterable<Type> types = const [
    GRepositoriesData_viewer_repositories_nodes_owner,
    _$GRepositoriesData_viewer_repositories_nodes_owner
  ];
  @override
  final String wireName = 'GRepositoriesData_viewer_repositories_nodes_owner';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GRepositoriesData_viewer_repositories_nodes_owner object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'login',
      serializers.serialize(object.login,
          specifiedType: const FullType(String)),
      'avatarUrl',
      serializers.serialize(object.avatarUrl,
          specifiedType: const FullType(_i2.GURI)),
    ];

    return result;
  }

  @override
  GRepositoriesData_viewer_repositories_nodes_owner deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GRepositoriesData_viewer_repositories_nodes_ownerBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'login':
          result.login = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'avatarUrl':
          result.avatarUrl.replace(serializers.deserialize(value,
              specifiedType: const FullType(_i2.GURI))! as _i2.GURI);
          break;
      }
    }

    return result.build();
  }
}

class _$GViewerDetailData extends GViewerDetailData {
  @override
  final String G__typename;
  @override
  final GViewerDetailData_viewer viewer;

  factory _$GViewerDetailData(
          [void Function(GViewerDetailDataBuilder)? updates]) =>
      (new GViewerDetailDataBuilder()..update(updates)).build();

  _$GViewerDetailData._({required this.G__typename, required this.viewer})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GViewerDetailData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        viewer, 'GViewerDetailData', 'viewer');
  }

  @override
  GViewerDetailData rebuild(void Function(GViewerDetailDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GViewerDetailDataBuilder toBuilder() =>
      new GViewerDetailDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GViewerDetailData &&
        G__typename == other.G__typename &&
        viewer == other.viewer;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, G__typename.hashCode), viewer.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GViewerDetailData')
          ..add('G__typename', G__typename)
          ..add('viewer', viewer))
        .toString();
  }
}

class GViewerDetailDataBuilder
    implements Builder<GViewerDetailData, GViewerDetailDataBuilder> {
  _$GViewerDetailData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GViewerDetailData_viewerBuilder? _viewer;
  GViewerDetailData_viewerBuilder get viewer =>
      _$this._viewer ??= new GViewerDetailData_viewerBuilder();
  set viewer(GViewerDetailData_viewerBuilder? viewer) =>
      _$this._viewer = viewer;

  GViewerDetailDataBuilder() {
    GViewerDetailData._initializeBuilder(this);
  }

  GViewerDetailDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _viewer = $v.viewer.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GViewerDetailData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GViewerDetailData;
  }

  @override
  void update(void Function(GViewerDetailDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GViewerDetailData build() {
    _$GViewerDetailData _$result;
    try {
      _$result = _$v ??
          new _$GViewerDetailData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, 'GViewerDetailData', 'G__typename'),
              viewer: viewer.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'viewer';
        viewer.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GViewerDetailData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GViewerDetailData_viewer extends GViewerDetailData_viewer {
  @override
  final String G__typename;
  @override
  final String login;

  factory _$GViewerDetailData_viewer(
          [void Function(GViewerDetailData_viewerBuilder)? updates]) =>
      (new GViewerDetailData_viewerBuilder()..update(updates)).build();

  _$GViewerDetailData_viewer._({required this.G__typename, required this.login})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GViewerDetailData_viewer', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        login, 'GViewerDetailData_viewer', 'login');
  }

  @override
  GViewerDetailData_viewer rebuild(
          void Function(GViewerDetailData_viewerBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GViewerDetailData_viewerBuilder toBuilder() =>
      new GViewerDetailData_viewerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GViewerDetailData_viewer &&
        G__typename == other.G__typename &&
        login == other.login;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, G__typename.hashCode), login.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GViewerDetailData_viewer')
          ..add('G__typename', G__typename)
          ..add('login', login))
        .toString();
  }
}

class GViewerDetailData_viewerBuilder
    implements
        Builder<GViewerDetailData_viewer, GViewerDetailData_viewerBuilder> {
  _$GViewerDetailData_viewer? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _login;
  String? get login => _$this._login;
  set login(String? login) => _$this._login = login;

  GViewerDetailData_viewerBuilder() {
    GViewerDetailData_viewer._initializeBuilder(this);
  }

  GViewerDetailData_viewerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _login = $v.login;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GViewerDetailData_viewer other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GViewerDetailData_viewer;
  }

  @override
  void update(void Function(GViewerDetailData_viewerBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GViewerDetailData_viewer build() {
    final _$result = _$v ??
        new _$GViewerDetailData_viewer._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, 'GViewerDetailData_viewer', 'G__typename'),
            login: BuiltValueNullFieldError.checkNotNull(
                login, 'GViewerDetailData_viewer', 'login'));
    replace(_$result);
    return _$result;
  }
}

class _$GPullRequestsData extends GPullRequestsData {
  @override
  final String G__typename;
  @override
  final GPullRequestsData_viewer viewer;

  factory _$GPullRequestsData(
          [void Function(GPullRequestsDataBuilder)? updates]) =>
      (new GPullRequestsDataBuilder()..update(updates)).build();

  _$GPullRequestsData._({required this.G__typename, required this.viewer})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GPullRequestsData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        viewer, 'GPullRequestsData', 'viewer');
  }

  @override
  GPullRequestsData rebuild(void Function(GPullRequestsDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GPullRequestsDataBuilder toBuilder() =>
      new GPullRequestsDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GPullRequestsData &&
        G__typename == other.G__typename &&
        viewer == other.viewer;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, G__typename.hashCode), viewer.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GPullRequestsData')
          ..add('G__typename', G__typename)
          ..add('viewer', viewer))
        .toString();
  }
}

class GPullRequestsDataBuilder
    implements Builder<GPullRequestsData, GPullRequestsDataBuilder> {
  _$GPullRequestsData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GPullRequestsData_viewerBuilder? _viewer;
  GPullRequestsData_viewerBuilder get viewer =>
      _$this._viewer ??= new GPullRequestsData_viewerBuilder();
  set viewer(GPullRequestsData_viewerBuilder? viewer) =>
      _$this._viewer = viewer;

  GPullRequestsDataBuilder() {
    GPullRequestsData._initializeBuilder(this);
  }

  GPullRequestsDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _viewer = $v.viewer.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GPullRequestsData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GPullRequestsData;
  }

  @override
  void update(void Function(GPullRequestsDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GPullRequestsData build() {
    _$GPullRequestsData _$result;
    try {
      _$result = _$v ??
          new _$GPullRequestsData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, 'GPullRequestsData', 'G__typename'),
              viewer: viewer.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'viewer';
        viewer.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GPullRequestsData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GPullRequestsData_viewer extends GPullRequestsData_viewer {
  @override
  final String G__typename;
  @override
  final GPullRequestsData_viewer_pullRequests pullRequests;

  factory _$GPullRequestsData_viewer(
          [void Function(GPullRequestsData_viewerBuilder)? updates]) =>
      (new GPullRequestsData_viewerBuilder()..update(updates)).build();

  _$GPullRequestsData_viewer._(
      {required this.G__typename, required this.pullRequests})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GPullRequestsData_viewer', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        pullRequests, 'GPullRequestsData_viewer', 'pullRequests');
  }

  @override
  GPullRequestsData_viewer rebuild(
          void Function(GPullRequestsData_viewerBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GPullRequestsData_viewerBuilder toBuilder() =>
      new GPullRequestsData_viewerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GPullRequestsData_viewer &&
        G__typename == other.G__typename &&
        pullRequests == other.pullRequests;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, G__typename.hashCode), pullRequests.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GPullRequestsData_viewer')
          ..add('G__typename', G__typename)
          ..add('pullRequests', pullRequests))
        .toString();
  }
}

class GPullRequestsData_viewerBuilder
    implements
        Builder<GPullRequestsData_viewer, GPullRequestsData_viewerBuilder> {
  _$GPullRequestsData_viewer? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GPullRequestsData_viewer_pullRequestsBuilder? _pullRequests;
  GPullRequestsData_viewer_pullRequestsBuilder get pullRequests =>
      _$this._pullRequests ??=
          new GPullRequestsData_viewer_pullRequestsBuilder();
  set pullRequests(
          GPullRequestsData_viewer_pullRequestsBuilder? pullRequests) =>
      _$this._pullRequests = pullRequests;

  GPullRequestsData_viewerBuilder() {
    GPullRequestsData_viewer._initializeBuilder(this);
  }

  GPullRequestsData_viewerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _pullRequests = $v.pullRequests.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GPullRequestsData_viewer other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GPullRequestsData_viewer;
  }

  @override
  void update(void Function(GPullRequestsData_viewerBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GPullRequestsData_viewer build() {
    _$GPullRequestsData_viewer _$result;
    try {
      _$result = _$v ??
          new _$GPullRequestsData_viewer._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, 'GPullRequestsData_viewer', 'G__typename'),
              pullRequests: pullRequests.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'pullRequests';
        pullRequests.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GPullRequestsData_viewer', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GPullRequestsData_viewer_pullRequests
    extends GPullRequestsData_viewer_pullRequests {
  @override
  final String G__typename;
  @override
  final BuiltList<GPullRequestsData_viewer_pullRequests_edges>? edges;

  factory _$GPullRequestsData_viewer_pullRequests(
          [void Function(GPullRequestsData_viewer_pullRequestsBuilder)?
              updates]) =>
      (new GPullRequestsData_viewer_pullRequestsBuilder()..update(updates))
          .build();

  _$GPullRequestsData_viewer_pullRequests._(
      {required this.G__typename, this.edges})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GPullRequestsData_viewer_pullRequests', 'G__typename');
  }

  @override
  GPullRequestsData_viewer_pullRequests rebuild(
          void Function(GPullRequestsData_viewer_pullRequestsBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GPullRequestsData_viewer_pullRequestsBuilder toBuilder() =>
      new GPullRequestsData_viewer_pullRequestsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GPullRequestsData_viewer_pullRequests &&
        G__typename == other.G__typename &&
        edges == other.edges;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, G__typename.hashCode), edges.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GPullRequestsData_viewer_pullRequests')
          ..add('G__typename', G__typename)
          ..add('edges', edges))
        .toString();
  }
}

class GPullRequestsData_viewer_pullRequestsBuilder
    implements
        Builder<GPullRequestsData_viewer_pullRequests,
            GPullRequestsData_viewer_pullRequestsBuilder> {
  _$GPullRequestsData_viewer_pullRequests? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  ListBuilder<GPullRequestsData_viewer_pullRequests_edges>? _edges;
  ListBuilder<GPullRequestsData_viewer_pullRequests_edges> get edges =>
      _$this._edges ??=
          new ListBuilder<GPullRequestsData_viewer_pullRequests_edges>();
  set edges(ListBuilder<GPullRequestsData_viewer_pullRequests_edges>? edges) =>
      _$this._edges = edges;

  GPullRequestsData_viewer_pullRequestsBuilder() {
    GPullRequestsData_viewer_pullRequests._initializeBuilder(this);
  }

  GPullRequestsData_viewer_pullRequestsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _edges = $v.edges?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GPullRequestsData_viewer_pullRequests other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GPullRequestsData_viewer_pullRequests;
  }

  @override
  void update(
      void Function(GPullRequestsData_viewer_pullRequestsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GPullRequestsData_viewer_pullRequests build() {
    _$GPullRequestsData_viewer_pullRequests _$result;
    try {
      _$result = _$v ??
          new _$GPullRequestsData_viewer_pullRequests._(
              G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                  'GPullRequestsData_viewer_pullRequests', 'G__typename'),
              edges: _edges?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'edges';
        _edges?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GPullRequestsData_viewer_pullRequests',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GPullRequestsData_viewer_pullRequests_edges
    extends GPullRequestsData_viewer_pullRequests_edges {
  @override
  final String G__typename;
  @override
  final GPullRequestsData_viewer_pullRequests_edges_node? node;

  factory _$GPullRequestsData_viewer_pullRequests_edges(
          [void Function(GPullRequestsData_viewer_pullRequests_edgesBuilder)?
              updates]) =>
      (new GPullRequestsData_viewer_pullRequests_edgesBuilder()
            ..update(updates))
          .build();

  _$GPullRequestsData_viewer_pullRequests_edges._(
      {required this.G__typename, this.node})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        'GPullRequestsData_viewer_pullRequests_edges', 'G__typename');
  }

  @override
  GPullRequestsData_viewer_pullRequests_edges rebuild(
          void Function(GPullRequestsData_viewer_pullRequests_edgesBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GPullRequestsData_viewer_pullRequests_edgesBuilder toBuilder() =>
      new GPullRequestsData_viewer_pullRequests_edgesBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GPullRequestsData_viewer_pullRequests_edges &&
        G__typename == other.G__typename &&
        node == other.node;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, G__typename.hashCode), node.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            'GPullRequestsData_viewer_pullRequests_edges')
          ..add('G__typename', G__typename)
          ..add('node', node))
        .toString();
  }
}

class GPullRequestsData_viewer_pullRequests_edgesBuilder
    implements
        Builder<GPullRequestsData_viewer_pullRequests_edges,
            GPullRequestsData_viewer_pullRequests_edgesBuilder> {
  _$GPullRequestsData_viewer_pullRequests_edges? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GPullRequestsData_viewer_pullRequests_edges_nodeBuilder? _node;
  GPullRequestsData_viewer_pullRequests_edges_nodeBuilder get node =>
      _$this._node ??=
          new GPullRequestsData_viewer_pullRequests_edges_nodeBuilder();
  set node(GPullRequestsData_viewer_pullRequests_edges_nodeBuilder? node) =>
      _$this._node = node;

  GPullRequestsData_viewer_pullRequests_edgesBuilder() {
    GPullRequestsData_viewer_pullRequests_edges._initializeBuilder(this);
  }

  GPullRequestsData_viewer_pullRequests_edgesBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _node = $v.node?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GPullRequestsData_viewer_pullRequests_edges other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GPullRequestsData_viewer_pullRequests_edges;
  }

  @override
  void update(
      void Function(GPullRequestsData_viewer_pullRequests_edgesBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GPullRequestsData_viewer_pullRequests_edges build() {
    _$GPullRequestsData_viewer_pullRequests_edges _$result;
    try {
      _$result = _$v ??
          new _$GPullRequestsData_viewer_pullRequests_edges._(
              G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                  'GPullRequestsData_viewer_pullRequests_edges', 'G__typename'),
              node: _node?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'node';
        _node?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GPullRequestsData_viewer_pullRequests_edges',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GPullRequestsData_viewer_pullRequests_edges_node
    extends GPullRequestsData_viewer_pullRequests_edges_node {
  @override
  final String G__typename;
  @override
  final GPullRequestsData_viewer_pullRequests_edges_node_repository repository;
  @override
  final GPullRequestsData_viewer_pullRequests_edges_node_author? author;
  @override
  final int number;
  @override
  final _i2.GURI url;
  @override
  final String title;
  @override
  final _i2.GDateTime updatedAt;
  @override
  final _i2.GPullRequestState state;
  @override
  final bool isDraft;
  @override
  final GPullRequestsData_viewer_pullRequests_edges_node_comments comments;
  @override
  final GPullRequestsData_viewer_pullRequests_edges_node_files? files;

  factory _$GPullRequestsData_viewer_pullRequests_edges_node(
          [void Function(
                  GPullRequestsData_viewer_pullRequests_edges_nodeBuilder)?
              updates]) =>
      (new GPullRequestsData_viewer_pullRequests_edges_nodeBuilder()
            ..update(updates))
          .build();

  _$GPullRequestsData_viewer_pullRequests_edges_node._(
      {required this.G__typename,
      required this.repository,
      this.author,
      required this.number,
      required this.url,
      required this.title,
      required this.updatedAt,
      required this.state,
      required this.isDraft,
      required this.comments,
      this.files})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        'GPullRequestsData_viewer_pullRequests_edges_node', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(repository,
        'GPullRequestsData_viewer_pullRequests_edges_node', 'repository');
    BuiltValueNullFieldError.checkNotNull(
        number, 'GPullRequestsData_viewer_pullRequests_edges_node', 'number');
    BuiltValueNullFieldError.checkNotNull(
        url, 'GPullRequestsData_viewer_pullRequests_edges_node', 'url');
    BuiltValueNullFieldError.checkNotNull(
        title, 'GPullRequestsData_viewer_pullRequests_edges_node', 'title');
    BuiltValueNullFieldError.checkNotNull(updatedAt,
        'GPullRequestsData_viewer_pullRequests_edges_node', 'updatedAt');
    BuiltValueNullFieldError.checkNotNull(
        state, 'GPullRequestsData_viewer_pullRequests_edges_node', 'state');
    BuiltValueNullFieldError.checkNotNull(
        isDraft, 'GPullRequestsData_viewer_pullRequests_edges_node', 'isDraft');
    BuiltValueNullFieldError.checkNotNull(comments,
        'GPullRequestsData_viewer_pullRequests_edges_node', 'comments');
  }

  @override
  GPullRequestsData_viewer_pullRequests_edges_node rebuild(
          void Function(GPullRequestsData_viewer_pullRequests_edges_nodeBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GPullRequestsData_viewer_pullRequests_edges_nodeBuilder toBuilder() =>
      new GPullRequestsData_viewer_pullRequests_edges_nodeBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GPullRequestsData_viewer_pullRequests_edges_node &&
        G__typename == other.G__typename &&
        repository == other.repository &&
        author == other.author &&
        number == other.number &&
        url == other.url &&
        title == other.title &&
        updatedAt == other.updatedAt &&
        state == other.state &&
        isDraft == other.isDraft &&
        comments == other.comments &&
        files == other.files;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc(
                                    $jc(
                                        $jc($jc(0, G__typename.hashCode),
                                            repository.hashCode),
                                        author.hashCode),
                                    number.hashCode),
                                url.hashCode),
                            title.hashCode),
                        updatedAt.hashCode),
                    state.hashCode),
                isDraft.hashCode),
            comments.hashCode),
        files.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            'GPullRequestsData_viewer_pullRequests_edges_node')
          ..add('G__typename', G__typename)
          ..add('repository', repository)
          ..add('author', author)
          ..add('number', number)
          ..add('url', url)
          ..add('title', title)
          ..add('updatedAt', updatedAt)
          ..add('state', state)
          ..add('isDraft', isDraft)
          ..add('comments', comments)
          ..add('files', files))
        .toString();
  }
}

class GPullRequestsData_viewer_pullRequests_edges_nodeBuilder
    implements
        Builder<GPullRequestsData_viewer_pullRequests_edges_node,
            GPullRequestsData_viewer_pullRequests_edges_nodeBuilder> {
  _$GPullRequestsData_viewer_pullRequests_edges_node? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GPullRequestsData_viewer_pullRequests_edges_node_repositoryBuilder?
      _repository;
  GPullRequestsData_viewer_pullRequests_edges_node_repositoryBuilder
      get repository => _$this._repository ??=
          new GPullRequestsData_viewer_pullRequests_edges_node_repositoryBuilder();
  set repository(
          GPullRequestsData_viewer_pullRequests_edges_node_repositoryBuilder?
              repository) =>
      _$this._repository = repository;

  GPullRequestsData_viewer_pullRequests_edges_node_authorBuilder? _author;
  GPullRequestsData_viewer_pullRequests_edges_node_authorBuilder get author =>
      _$this._author ??=
          new GPullRequestsData_viewer_pullRequests_edges_node_authorBuilder();
  set author(
          GPullRequestsData_viewer_pullRequests_edges_node_authorBuilder?
              author) =>
      _$this._author = author;

  int? _number;
  int? get number => _$this._number;
  set number(int? number) => _$this._number = number;

  _i2.GURIBuilder? _url;
  _i2.GURIBuilder get url => _$this._url ??= new _i2.GURIBuilder();
  set url(_i2.GURIBuilder? url) => _$this._url = url;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  _i2.GDateTimeBuilder? _updatedAt;
  _i2.GDateTimeBuilder get updatedAt =>
      _$this._updatedAt ??= new _i2.GDateTimeBuilder();
  set updatedAt(_i2.GDateTimeBuilder? updatedAt) =>
      _$this._updatedAt = updatedAt;

  _i2.GPullRequestState? _state;
  _i2.GPullRequestState? get state => _$this._state;
  set state(_i2.GPullRequestState? state) => _$this._state = state;

  bool? _isDraft;
  bool? get isDraft => _$this._isDraft;
  set isDraft(bool? isDraft) => _$this._isDraft = isDraft;

  GPullRequestsData_viewer_pullRequests_edges_node_commentsBuilder? _comments;
  GPullRequestsData_viewer_pullRequests_edges_node_commentsBuilder
      get comments => _$this._comments ??=
          new GPullRequestsData_viewer_pullRequests_edges_node_commentsBuilder();
  set comments(
          GPullRequestsData_viewer_pullRequests_edges_node_commentsBuilder?
              comments) =>
      _$this._comments = comments;

  GPullRequestsData_viewer_pullRequests_edges_node_filesBuilder? _files;
  GPullRequestsData_viewer_pullRequests_edges_node_filesBuilder get files =>
      _$this._files ??=
          new GPullRequestsData_viewer_pullRequests_edges_node_filesBuilder();
  set files(
          GPullRequestsData_viewer_pullRequests_edges_node_filesBuilder?
              files) =>
      _$this._files = files;

  GPullRequestsData_viewer_pullRequests_edges_nodeBuilder() {
    GPullRequestsData_viewer_pullRequests_edges_node._initializeBuilder(this);
  }

  GPullRequestsData_viewer_pullRequests_edges_nodeBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _repository = $v.repository.toBuilder();
      _author = $v.author?.toBuilder();
      _number = $v.number;
      _url = $v.url.toBuilder();
      _title = $v.title;
      _updatedAt = $v.updatedAt.toBuilder();
      _state = $v.state;
      _isDraft = $v.isDraft;
      _comments = $v.comments.toBuilder();
      _files = $v.files?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GPullRequestsData_viewer_pullRequests_edges_node other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GPullRequestsData_viewer_pullRequests_edges_node;
  }

  @override
  void update(
      void Function(GPullRequestsData_viewer_pullRequests_edges_nodeBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GPullRequestsData_viewer_pullRequests_edges_node build() {
    _$GPullRequestsData_viewer_pullRequests_edges_node _$result;
    try {
      _$result = _$v ??
          new _$GPullRequestsData_viewer_pullRequests_edges_node._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename,
                  'GPullRequestsData_viewer_pullRequests_edges_node',
                  'G__typename'),
              repository: repository.build(),
              author: _author?.build(),
              number: BuiltValueNullFieldError.checkNotNull(number,
                  'GPullRequestsData_viewer_pullRequests_edges_node', 'number'),
              url: url.build(),
              title: BuiltValueNullFieldError.checkNotNull(
                  title, 'GPullRequestsData_viewer_pullRequests_edges_node', 'title'),
              updatedAt: updatedAt.build(),
              state: BuiltValueNullFieldError.checkNotNull(state,
                  'GPullRequestsData_viewer_pullRequests_edges_node', 'state'),
              isDraft: BuiltValueNullFieldError.checkNotNull(
                  isDraft,
                  'GPullRequestsData_viewer_pullRequests_edges_node',
                  'isDraft'),
              comments: comments.build(),
              files: _files?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'repository';
        repository.build();
        _$failedField = 'author';
        _author?.build();

        _$failedField = 'url';
        url.build();

        _$failedField = 'updatedAt';
        updatedAt.build();

        _$failedField = 'comments';
        comments.build();
        _$failedField = 'files';
        _files?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GPullRequestsData_viewer_pullRequests_edges_node',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GPullRequestsData_viewer_pullRequests_edges_node_repository
    extends GPullRequestsData_viewer_pullRequests_edges_node_repository {
  @override
  final String G__typename;
  @override
  final String nameWithOwner;
  @override
  final _i2.GURI url;

  factory _$GPullRequestsData_viewer_pullRequests_edges_node_repository(
          [void Function(
                  GPullRequestsData_viewer_pullRequests_edges_node_repositoryBuilder)?
              updates]) =>
      (new GPullRequestsData_viewer_pullRequests_edges_node_repositoryBuilder()
            ..update(updates))
          .build();

  _$GPullRequestsData_viewer_pullRequests_edges_node_repository._(
      {required this.G__typename,
      required this.nameWithOwner,
      required this.url})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        'GPullRequestsData_viewer_pullRequests_edges_node_repository',
        'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        nameWithOwner,
        'GPullRequestsData_viewer_pullRequests_edges_node_repository',
        'nameWithOwner');
    BuiltValueNullFieldError.checkNotNull(url,
        'GPullRequestsData_viewer_pullRequests_edges_node_repository', 'url');
  }

  @override
  GPullRequestsData_viewer_pullRequests_edges_node_repository rebuild(
          void Function(
                  GPullRequestsData_viewer_pullRequests_edges_node_repositoryBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GPullRequestsData_viewer_pullRequests_edges_node_repositoryBuilder
      toBuilder() =>
          new GPullRequestsData_viewer_pullRequests_edges_node_repositoryBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is GPullRequestsData_viewer_pullRequests_edges_node_repository &&
        G__typename == other.G__typename &&
        nameWithOwner == other.nameWithOwner &&
        url == other.url;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, G__typename.hashCode), nameWithOwner.hashCode),
        url.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            'GPullRequestsData_viewer_pullRequests_edges_node_repository')
          ..add('G__typename', G__typename)
          ..add('nameWithOwner', nameWithOwner)
          ..add('url', url))
        .toString();
  }
}

class GPullRequestsData_viewer_pullRequests_edges_node_repositoryBuilder
    implements
        Builder<GPullRequestsData_viewer_pullRequests_edges_node_repository,
            GPullRequestsData_viewer_pullRequests_edges_node_repositoryBuilder> {
  _$GPullRequestsData_viewer_pullRequests_edges_node_repository? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _nameWithOwner;
  String? get nameWithOwner => _$this._nameWithOwner;
  set nameWithOwner(String? nameWithOwner) =>
      _$this._nameWithOwner = nameWithOwner;

  _i2.GURIBuilder? _url;
  _i2.GURIBuilder get url => _$this._url ??= new _i2.GURIBuilder();
  set url(_i2.GURIBuilder? url) => _$this._url = url;

  GPullRequestsData_viewer_pullRequests_edges_node_repositoryBuilder() {
    GPullRequestsData_viewer_pullRequests_edges_node_repository
        ._initializeBuilder(this);
  }

  GPullRequestsData_viewer_pullRequests_edges_node_repositoryBuilder
      get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _nameWithOwner = $v.nameWithOwner;
      _url = $v.url.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(
      GPullRequestsData_viewer_pullRequests_edges_node_repository other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v =
        other as _$GPullRequestsData_viewer_pullRequests_edges_node_repository;
  }

  @override
  void update(
      void Function(
              GPullRequestsData_viewer_pullRequests_edges_node_repositoryBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GPullRequestsData_viewer_pullRequests_edges_node_repository build() {
    _$GPullRequestsData_viewer_pullRequests_edges_node_repository _$result;
    try {
      _$result = _$v ??
          new _$GPullRequestsData_viewer_pullRequests_edges_node_repository._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename,
                  'GPullRequestsData_viewer_pullRequests_edges_node_repository',
                  'G__typename'),
              nameWithOwner: BuiltValueNullFieldError.checkNotNull(
                  nameWithOwner,
                  'GPullRequestsData_viewer_pullRequests_edges_node_repository',
                  'nameWithOwner'),
              url: url.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'url';
        url.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GPullRequestsData_viewer_pullRequests_edges_node_repository',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GPullRequestsData_viewer_pullRequests_edges_node_author
    extends GPullRequestsData_viewer_pullRequests_edges_node_author {
  @override
  final String G__typename;
  @override
  final String login;
  @override
  final _i2.GURI url;

  factory _$GPullRequestsData_viewer_pullRequests_edges_node_author(
          [void Function(
                  GPullRequestsData_viewer_pullRequests_edges_node_authorBuilder)?
              updates]) =>
      (new GPullRequestsData_viewer_pullRequests_edges_node_authorBuilder()
            ..update(updates))
          .build();

  _$GPullRequestsData_viewer_pullRequests_edges_node_author._(
      {required this.G__typename, required this.login, required this.url})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        'GPullRequestsData_viewer_pullRequests_edges_node_author',
        'G__typename');
    BuiltValueNullFieldError.checkNotNull(login,
        'GPullRequestsData_viewer_pullRequests_edges_node_author', 'login');
    BuiltValueNullFieldError.checkNotNull(
        url, 'GPullRequestsData_viewer_pullRequests_edges_node_author', 'url');
  }

  @override
  GPullRequestsData_viewer_pullRequests_edges_node_author rebuild(
          void Function(
                  GPullRequestsData_viewer_pullRequests_edges_node_authorBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GPullRequestsData_viewer_pullRequests_edges_node_authorBuilder toBuilder() =>
      new GPullRequestsData_viewer_pullRequests_edges_node_authorBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GPullRequestsData_viewer_pullRequests_edges_node_author &&
        G__typename == other.G__typename &&
        login == other.login &&
        url == other.url;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc($jc(0, G__typename.hashCode), login.hashCode), url.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            'GPullRequestsData_viewer_pullRequests_edges_node_author')
          ..add('G__typename', G__typename)
          ..add('login', login)
          ..add('url', url))
        .toString();
  }
}

class GPullRequestsData_viewer_pullRequests_edges_node_authorBuilder
    implements
        Builder<GPullRequestsData_viewer_pullRequests_edges_node_author,
            GPullRequestsData_viewer_pullRequests_edges_node_authorBuilder> {
  _$GPullRequestsData_viewer_pullRequests_edges_node_author? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _login;
  String? get login => _$this._login;
  set login(String? login) => _$this._login = login;

  _i2.GURIBuilder? _url;
  _i2.GURIBuilder get url => _$this._url ??= new _i2.GURIBuilder();
  set url(_i2.GURIBuilder? url) => _$this._url = url;

  GPullRequestsData_viewer_pullRequests_edges_node_authorBuilder() {
    GPullRequestsData_viewer_pullRequests_edges_node_author._initializeBuilder(
        this);
  }

  GPullRequestsData_viewer_pullRequests_edges_node_authorBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _login = $v.login;
      _url = $v.url.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GPullRequestsData_viewer_pullRequests_edges_node_author other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GPullRequestsData_viewer_pullRequests_edges_node_author;
  }

  @override
  void update(
      void Function(
              GPullRequestsData_viewer_pullRequests_edges_node_authorBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GPullRequestsData_viewer_pullRequests_edges_node_author build() {
    _$GPullRequestsData_viewer_pullRequests_edges_node_author _$result;
    try {
      _$result = _$v ??
          new _$GPullRequestsData_viewer_pullRequests_edges_node_author._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename,
                  'GPullRequestsData_viewer_pullRequests_edges_node_author',
                  'G__typename'),
              login: BuiltValueNullFieldError.checkNotNull(
                  login,
                  'GPullRequestsData_viewer_pullRequests_edges_node_author',
                  'login'),
              url: url.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'url';
        url.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GPullRequestsData_viewer_pullRequests_edges_node_author',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GPullRequestsData_viewer_pullRequests_edges_node_comments
    extends GPullRequestsData_viewer_pullRequests_edges_node_comments {
  @override
  final String G__typename;
  @override
  final int totalCount;

  factory _$GPullRequestsData_viewer_pullRequests_edges_node_comments(
          [void Function(
                  GPullRequestsData_viewer_pullRequests_edges_node_commentsBuilder)?
              updates]) =>
      (new GPullRequestsData_viewer_pullRequests_edges_node_commentsBuilder()
            ..update(updates))
          .build();

  _$GPullRequestsData_viewer_pullRequests_edges_node_comments._(
      {required this.G__typename, required this.totalCount})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        'GPullRequestsData_viewer_pullRequests_edges_node_comments',
        'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        totalCount,
        'GPullRequestsData_viewer_pullRequests_edges_node_comments',
        'totalCount');
  }

  @override
  GPullRequestsData_viewer_pullRequests_edges_node_comments rebuild(
          void Function(
                  GPullRequestsData_viewer_pullRequests_edges_node_commentsBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GPullRequestsData_viewer_pullRequests_edges_node_commentsBuilder
      toBuilder() =>
          new GPullRequestsData_viewer_pullRequests_edges_node_commentsBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GPullRequestsData_viewer_pullRequests_edges_node_comments &&
        G__typename == other.G__typename &&
        totalCount == other.totalCount;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, G__typename.hashCode), totalCount.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            'GPullRequestsData_viewer_pullRequests_edges_node_comments')
          ..add('G__typename', G__typename)
          ..add('totalCount', totalCount))
        .toString();
  }
}

class GPullRequestsData_viewer_pullRequests_edges_node_commentsBuilder
    implements
        Builder<GPullRequestsData_viewer_pullRequests_edges_node_comments,
            GPullRequestsData_viewer_pullRequests_edges_node_commentsBuilder> {
  _$GPullRequestsData_viewer_pullRequests_edges_node_comments? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  int? _totalCount;
  int? get totalCount => _$this._totalCount;
  set totalCount(int? totalCount) => _$this._totalCount = totalCount;

  GPullRequestsData_viewer_pullRequests_edges_node_commentsBuilder() {
    GPullRequestsData_viewer_pullRequests_edges_node_comments
        ._initializeBuilder(this);
  }

  GPullRequestsData_viewer_pullRequests_edges_node_commentsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _totalCount = $v.totalCount;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(
      GPullRequestsData_viewer_pullRequests_edges_node_comments other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GPullRequestsData_viewer_pullRequests_edges_node_comments;
  }

  @override
  void update(
      void Function(
              GPullRequestsData_viewer_pullRequests_edges_node_commentsBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GPullRequestsData_viewer_pullRequests_edges_node_comments build() {
    final _$result = _$v ??
        new _$GPullRequestsData_viewer_pullRequests_edges_node_comments._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                'GPullRequestsData_viewer_pullRequests_edges_node_comments',
                'G__typename'),
            totalCount: BuiltValueNullFieldError.checkNotNull(
                totalCount,
                'GPullRequestsData_viewer_pullRequests_edges_node_comments',
                'totalCount'));
    replace(_$result);
    return _$result;
  }
}

class _$GPullRequestsData_viewer_pullRequests_edges_node_files
    extends GPullRequestsData_viewer_pullRequests_edges_node_files {
  @override
  final String G__typename;
  @override
  final int totalCount;

  factory _$GPullRequestsData_viewer_pullRequests_edges_node_files(
          [void Function(
                  GPullRequestsData_viewer_pullRequests_edges_node_filesBuilder)?
              updates]) =>
      (new GPullRequestsData_viewer_pullRequests_edges_node_filesBuilder()
            ..update(updates))
          .build();

  _$GPullRequestsData_viewer_pullRequests_edges_node_files._(
      {required this.G__typename, required this.totalCount})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        'GPullRequestsData_viewer_pullRequests_edges_node_files',
        'G__typename');
    BuiltValueNullFieldError.checkNotNull(totalCount,
        'GPullRequestsData_viewer_pullRequests_edges_node_files', 'totalCount');
  }

  @override
  GPullRequestsData_viewer_pullRequests_edges_node_files rebuild(
          void Function(
                  GPullRequestsData_viewer_pullRequests_edges_node_filesBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GPullRequestsData_viewer_pullRequests_edges_node_filesBuilder toBuilder() =>
      new GPullRequestsData_viewer_pullRequests_edges_node_filesBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GPullRequestsData_viewer_pullRequests_edges_node_files &&
        G__typename == other.G__typename &&
        totalCount == other.totalCount;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, G__typename.hashCode), totalCount.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            'GPullRequestsData_viewer_pullRequests_edges_node_files')
          ..add('G__typename', G__typename)
          ..add('totalCount', totalCount))
        .toString();
  }
}

class GPullRequestsData_viewer_pullRequests_edges_node_filesBuilder
    implements
        Builder<GPullRequestsData_viewer_pullRequests_edges_node_files,
            GPullRequestsData_viewer_pullRequests_edges_node_filesBuilder> {
  _$GPullRequestsData_viewer_pullRequests_edges_node_files? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  int? _totalCount;
  int? get totalCount => _$this._totalCount;
  set totalCount(int? totalCount) => _$this._totalCount = totalCount;

  GPullRequestsData_viewer_pullRequests_edges_node_filesBuilder() {
    GPullRequestsData_viewer_pullRequests_edges_node_files._initializeBuilder(
        this);
  }

  GPullRequestsData_viewer_pullRequests_edges_node_filesBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _totalCount = $v.totalCount;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GPullRequestsData_viewer_pullRequests_edges_node_files other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GPullRequestsData_viewer_pullRequests_edges_node_files;
  }

  @override
  void update(
      void Function(
              GPullRequestsData_viewer_pullRequests_edges_node_filesBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GPullRequestsData_viewer_pullRequests_edges_node_files build() {
    final _$result = _$v ??
        new _$GPullRequestsData_viewer_pullRequests_edges_node_files._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                'GPullRequestsData_viewer_pullRequests_edges_node_files',
                'G__typename'),
            totalCount: BuiltValueNullFieldError.checkNotNull(
                totalCount,
                'GPullRequestsData_viewer_pullRequests_edges_node_files',
                'totalCount'));
    replace(_$result);
    return _$result;
  }
}

class _$GAssignedIssuesData extends GAssignedIssuesData {
  @override
  final String G__typename;
  @override
  final GAssignedIssuesData_search search;

  factory _$GAssignedIssuesData(
          [void Function(GAssignedIssuesDataBuilder)? updates]) =>
      (new GAssignedIssuesDataBuilder()..update(updates)).build();

  _$GAssignedIssuesData._({required this.G__typename, required this.search})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GAssignedIssuesData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        search, 'GAssignedIssuesData', 'search');
  }

  @override
  GAssignedIssuesData rebuild(
          void Function(GAssignedIssuesDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GAssignedIssuesDataBuilder toBuilder() =>
      new GAssignedIssuesDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GAssignedIssuesData &&
        G__typename == other.G__typename &&
        search == other.search;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, G__typename.hashCode), search.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GAssignedIssuesData')
          ..add('G__typename', G__typename)
          ..add('search', search))
        .toString();
  }
}

class GAssignedIssuesDataBuilder
    implements Builder<GAssignedIssuesData, GAssignedIssuesDataBuilder> {
  _$GAssignedIssuesData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GAssignedIssuesData_searchBuilder? _search;
  GAssignedIssuesData_searchBuilder get search =>
      _$this._search ??= new GAssignedIssuesData_searchBuilder();
  set search(GAssignedIssuesData_searchBuilder? search) =>
      _$this._search = search;

  GAssignedIssuesDataBuilder() {
    GAssignedIssuesData._initializeBuilder(this);
  }

  GAssignedIssuesDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _search = $v.search.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GAssignedIssuesData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GAssignedIssuesData;
  }

  @override
  void update(void Function(GAssignedIssuesDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GAssignedIssuesData build() {
    _$GAssignedIssuesData _$result;
    try {
      _$result = _$v ??
          new _$GAssignedIssuesData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, 'GAssignedIssuesData', 'G__typename'),
              search: search.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'search';
        search.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GAssignedIssuesData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GAssignedIssuesData_search extends GAssignedIssuesData_search {
  @override
  final String G__typename;
  @override
  final BuiltList<GAssignedIssuesData_search_edges>? edges;

  factory _$GAssignedIssuesData_search(
          [void Function(GAssignedIssuesData_searchBuilder)? updates]) =>
      (new GAssignedIssuesData_searchBuilder()..update(updates)).build();

  _$GAssignedIssuesData_search._({required this.G__typename, this.edges})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GAssignedIssuesData_search', 'G__typename');
  }

  @override
  GAssignedIssuesData_search rebuild(
          void Function(GAssignedIssuesData_searchBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GAssignedIssuesData_searchBuilder toBuilder() =>
      new GAssignedIssuesData_searchBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GAssignedIssuesData_search &&
        G__typename == other.G__typename &&
        edges == other.edges;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, G__typename.hashCode), edges.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GAssignedIssuesData_search')
          ..add('G__typename', G__typename)
          ..add('edges', edges))
        .toString();
  }
}

class GAssignedIssuesData_searchBuilder
    implements
        Builder<GAssignedIssuesData_search, GAssignedIssuesData_searchBuilder> {
  _$GAssignedIssuesData_search? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  ListBuilder<GAssignedIssuesData_search_edges>? _edges;
  ListBuilder<GAssignedIssuesData_search_edges> get edges =>
      _$this._edges ??= new ListBuilder<GAssignedIssuesData_search_edges>();
  set edges(ListBuilder<GAssignedIssuesData_search_edges>? edges) =>
      _$this._edges = edges;

  GAssignedIssuesData_searchBuilder() {
    GAssignedIssuesData_search._initializeBuilder(this);
  }

  GAssignedIssuesData_searchBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _edges = $v.edges?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GAssignedIssuesData_search other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GAssignedIssuesData_search;
  }

  @override
  void update(void Function(GAssignedIssuesData_searchBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GAssignedIssuesData_search build() {
    _$GAssignedIssuesData_search _$result;
    try {
      _$result = _$v ??
          new _$GAssignedIssuesData_search._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, 'GAssignedIssuesData_search', 'G__typename'),
              edges: _edges?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'edges';
        _edges?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GAssignedIssuesData_search', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GAssignedIssuesData_search_edges
    extends GAssignedIssuesData_search_edges {
  @override
  final String G__typename;
  @override
  final GAssignedIssuesData_search_edges_node? node;

  factory _$GAssignedIssuesData_search_edges(
          [void Function(GAssignedIssuesData_search_edgesBuilder)? updates]) =>
      (new GAssignedIssuesData_search_edgesBuilder()..update(updates)).build();

  _$GAssignedIssuesData_search_edges._({required this.G__typename, this.node})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GAssignedIssuesData_search_edges', 'G__typename');
  }

  @override
  GAssignedIssuesData_search_edges rebuild(
          void Function(GAssignedIssuesData_search_edgesBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GAssignedIssuesData_search_edgesBuilder toBuilder() =>
      new GAssignedIssuesData_search_edgesBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GAssignedIssuesData_search_edges &&
        G__typename == other.G__typename &&
        node == other.node;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, G__typename.hashCode), node.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GAssignedIssuesData_search_edges')
          ..add('G__typename', G__typename)
          ..add('node', node))
        .toString();
  }
}

class GAssignedIssuesData_search_edgesBuilder
    implements
        Builder<GAssignedIssuesData_search_edges,
            GAssignedIssuesData_search_edgesBuilder> {
  _$GAssignedIssuesData_search_edges? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GAssignedIssuesData_search_edges_node? _node;
  GAssignedIssuesData_search_edges_node? get node => _$this._node;
  set node(GAssignedIssuesData_search_edges_node? node) => _$this._node = node;

  GAssignedIssuesData_search_edgesBuilder() {
    GAssignedIssuesData_search_edges._initializeBuilder(this);
  }

  GAssignedIssuesData_search_edgesBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _node = $v.node;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GAssignedIssuesData_search_edges other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GAssignedIssuesData_search_edges;
  }

  @override
  void update(void Function(GAssignedIssuesData_search_edgesBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GAssignedIssuesData_search_edges build() {
    final _$result = _$v ??
        new _$GAssignedIssuesData_search_edges._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, 'GAssignedIssuesData_search_edges', 'G__typename'),
            node: node);
    replace(_$result);
    return _$result;
  }
}

class _$GAssignedIssuesData_search_edges_node__base
    extends GAssignedIssuesData_search_edges_node__base {
  @override
  final String G__typename;

  factory _$GAssignedIssuesData_search_edges_node__base(
          [void Function(GAssignedIssuesData_search_edges_node__baseBuilder)?
              updates]) =>
      (new GAssignedIssuesData_search_edges_node__baseBuilder()
            ..update(updates))
          .build();

  _$GAssignedIssuesData_search_edges_node__base._({required this.G__typename})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        'GAssignedIssuesData_search_edges_node__base', 'G__typename');
  }

  @override
  GAssignedIssuesData_search_edges_node__base rebuild(
          void Function(GAssignedIssuesData_search_edges_node__baseBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GAssignedIssuesData_search_edges_node__baseBuilder toBuilder() =>
      new GAssignedIssuesData_search_edges_node__baseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GAssignedIssuesData_search_edges_node__base &&
        G__typename == other.G__typename;
  }

  @override
  int get hashCode {
    return $jf($jc(0, G__typename.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            'GAssignedIssuesData_search_edges_node__base')
          ..add('G__typename', G__typename))
        .toString();
  }
}

class GAssignedIssuesData_search_edges_node__baseBuilder
    implements
        Builder<GAssignedIssuesData_search_edges_node__base,
            GAssignedIssuesData_search_edges_node__baseBuilder> {
  _$GAssignedIssuesData_search_edges_node__base? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GAssignedIssuesData_search_edges_node__baseBuilder() {
    GAssignedIssuesData_search_edges_node__base._initializeBuilder(this);
  }

  GAssignedIssuesData_search_edges_node__baseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GAssignedIssuesData_search_edges_node__base other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GAssignedIssuesData_search_edges_node__base;
  }

  @override
  void update(
      void Function(GAssignedIssuesData_search_edges_node__baseBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GAssignedIssuesData_search_edges_node__base build() {
    final _$result = _$v ??
        new _$GAssignedIssuesData_search_edges_node__base._(
            G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                'GAssignedIssuesData_search_edges_node__base', 'G__typename'));
    replace(_$result);
    return _$result;
  }
}

class _$GAssignedIssuesData_search_edges_node__asIssue
    extends GAssignedIssuesData_search_edges_node__asIssue {
  @override
  final String G__typename;
  @override
  final GAssignedIssuesData_search_edges_node__asIssue_repository repository;
  @override
  final int number;
  @override
  final _i2.GURI url;
  @override
  final String title;
  @override
  final GAssignedIssuesData_search_edges_node__asIssue_author? author;
  @override
  final GAssignedIssuesData_search_edges_node__asIssue_labels? labels;
  @override
  final GAssignedIssuesData_search_edges_node__asIssue_comments comments;

  factory _$GAssignedIssuesData_search_edges_node__asIssue(
          [void Function(GAssignedIssuesData_search_edges_node__asIssueBuilder)?
              updates]) =>
      (new GAssignedIssuesData_search_edges_node__asIssueBuilder()
            ..update(updates))
          .build();

  _$GAssignedIssuesData_search_edges_node__asIssue._(
      {required this.G__typename,
      required this.repository,
      required this.number,
      required this.url,
      required this.title,
      this.author,
      this.labels,
      required this.comments})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        'GAssignedIssuesData_search_edges_node__asIssue', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(repository,
        'GAssignedIssuesData_search_edges_node__asIssue', 'repository');
    BuiltValueNullFieldError.checkNotNull(
        number, 'GAssignedIssuesData_search_edges_node__asIssue', 'number');
    BuiltValueNullFieldError.checkNotNull(
        url, 'GAssignedIssuesData_search_edges_node__asIssue', 'url');
    BuiltValueNullFieldError.checkNotNull(
        title, 'GAssignedIssuesData_search_edges_node__asIssue', 'title');
    BuiltValueNullFieldError.checkNotNull(
        comments, 'GAssignedIssuesData_search_edges_node__asIssue', 'comments');
  }

  @override
  GAssignedIssuesData_search_edges_node__asIssue rebuild(
          void Function(GAssignedIssuesData_search_edges_node__asIssueBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GAssignedIssuesData_search_edges_node__asIssueBuilder toBuilder() =>
      new GAssignedIssuesData_search_edges_node__asIssueBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GAssignedIssuesData_search_edges_node__asIssue &&
        G__typename == other.G__typename &&
        repository == other.repository &&
        number == other.number &&
        url == other.url &&
        title == other.title &&
        author == other.author &&
        labels == other.labels &&
        comments == other.comments;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc($jc(0, G__typename.hashCode),
                                repository.hashCode),
                            number.hashCode),
                        url.hashCode),
                    title.hashCode),
                author.hashCode),
            labels.hashCode),
        comments.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            'GAssignedIssuesData_search_edges_node__asIssue')
          ..add('G__typename', G__typename)
          ..add('repository', repository)
          ..add('number', number)
          ..add('url', url)
          ..add('title', title)
          ..add('author', author)
          ..add('labels', labels)
          ..add('comments', comments))
        .toString();
  }
}

class GAssignedIssuesData_search_edges_node__asIssueBuilder
    implements
        Builder<GAssignedIssuesData_search_edges_node__asIssue,
            GAssignedIssuesData_search_edges_node__asIssueBuilder> {
  _$GAssignedIssuesData_search_edges_node__asIssue? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GAssignedIssuesData_search_edges_node__asIssue_repositoryBuilder? _repository;
  GAssignedIssuesData_search_edges_node__asIssue_repositoryBuilder
      get repository => _$this._repository ??=
          new GAssignedIssuesData_search_edges_node__asIssue_repositoryBuilder();
  set repository(
          GAssignedIssuesData_search_edges_node__asIssue_repositoryBuilder?
              repository) =>
      _$this._repository = repository;

  int? _number;
  int? get number => _$this._number;
  set number(int? number) => _$this._number = number;

  _i2.GURIBuilder? _url;
  _i2.GURIBuilder get url => _$this._url ??= new _i2.GURIBuilder();
  set url(_i2.GURIBuilder? url) => _$this._url = url;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  GAssignedIssuesData_search_edges_node__asIssue_authorBuilder? _author;
  GAssignedIssuesData_search_edges_node__asIssue_authorBuilder get author =>
      _$this._author ??=
          new GAssignedIssuesData_search_edges_node__asIssue_authorBuilder();
  set author(
          GAssignedIssuesData_search_edges_node__asIssue_authorBuilder?
              author) =>
      _$this._author = author;

  GAssignedIssuesData_search_edges_node__asIssue_labelsBuilder? _labels;
  GAssignedIssuesData_search_edges_node__asIssue_labelsBuilder get labels =>
      _$this._labels ??=
          new GAssignedIssuesData_search_edges_node__asIssue_labelsBuilder();
  set labels(
          GAssignedIssuesData_search_edges_node__asIssue_labelsBuilder?
              labels) =>
      _$this._labels = labels;

  GAssignedIssuesData_search_edges_node__asIssue_commentsBuilder? _comments;
  GAssignedIssuesData_search_edges_node__asIssue_commentsBuilder get comments =>
      _$this._comments ??=
          new GAssignedIssuesData_search_edges_node__asIssue_commentsBuilder();
  set comments(
          GAssignedIssuesData_search_edges_node__asIssue_commentsBuilder?
              comments) =>
      _$this._comments = comments;

  GAssignedIssuesData_search_edges_node__asIssueBuilder() {
    GAssignedIssuesData_search_edges_node__asIssue._initializeBuilder(this);
  }

  GAssignedIssuesData_search_edges_node__asIssueBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _repository = $v.repository.toBuilder();
      _number = $v.number;
      _url = $v.url.toBuilder();
      _title = $v.title;
      _author = $v.author?.toBuilder();
      _labels = $v.labels?.toBuilder();
      _comments = $v.comments.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GAssignedIssuesData_search_edges_node__asIssue other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GAssignedIssuesData_search_edges_node__asIssue;
  }

  @override
  void update(
      void Function(GAssignedIssuesData_search_edges_node__asIssueBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GAssignedIssuesData_search_edges_node__asIssue build() {
    _$GAssignedIssuesData_search_edges_node__asIssue _$result;
    try {
      _$result = _$v ??
          new _$GAssignedIssuesData_search_edges_node__asIssue._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename,
                  'GAssignedIssuesData_search_edges_node__asIssue',
                  'G__typename'),
              repository: repository.build(),
              number: BuiltValueNullFieldError.checkNotNull(number,
                  'GAssignedIssuesData_search_edges_node__asIssue', 'number'),
              url: url.build(),
              title: BuiltValueNullFieldError.checkNotNull(title,
                  'GAssignedIssuesData_search_edges_node__asIssue', 'title'),
              author: _author?.build(),
              labels: _labels?.build(),
              comments: comments.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'repository';
        repository.build();

        _$failedField = 'url';
        url.build();

        _$failedField = 'author';
        _author?.build();
        _$failedField = 'labels';
        _labels?.build();
        _$failedField = 'comments';
        comments.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GAssignedIssuesData_search_edges_node__asIssue',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GAssignedIssuesData_search_edges_node__asIssue_repository
    extends GAssignedIssuesData_search_edges_node__asIssue_repository {
  @override
  final String G__typename;
  @override
  final String nameWithOwner;
  @override
  final _i2.GURI url;

  factory _$GAssignedIssuesData_search_edges_node__asIssue_repository(
          [void Function(
                  GAssignedIssuesData_search_edges_node__asIssue_repositoryBuilder)?
              updates]) =>
      (new GAssignedIssuesData_search_edges_node__asIssue_repositoryBuilder()
            ..update(updates))
          .build();

  _$GAssignedIssuesData_search_edges_node__asIssue_repository._(
      {required this.G__typename,
      required this.nameWithOwner,
      required this.url})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        'GAssignedIssuesData_search_edges_node__asIssue_repository',
        'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        nameWithOwner,
        'GAssignedIssuesData_search_edges_node__asIssue_repository',
        'nameWithOwner');
    BuiltValueNullFieldError.checkNotNull(url,
        'GAssignedIssuesData_search_edges_node__asIssue_repository', 'url');
  }

  @override
  GAssignedIssuesData_search_edges_node__asIssue_repository rebuild(
          void Function(
                  GAssignedIssuesData_search_edges_node__asIssue_repositoryBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GAssignedIssuesData_search_edges_node__asIssue_repositoryBuilder
      toBuilder() =>
          new GAssignedIssuesData_search_edges_node__asIssue_repositoryBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GAssignedIssuesData_search_edges_node__asIssue_repository &&
        G__typename == other.G__typename &&
        nameWithOwner == other.nameWithOwner &&
        url == other.url;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, G__typename.hashCode), nameWithOwner.hashCode),
        url.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            'GAssignedIssuesData_search_edges_node__asIssue_repository')
          ..add('G__typename', G__typename)
          ..add('nameWithOwner', nameWithOwner)
          ..add('url', url))
        .toString();
  }
}

class GAssignedIssuesData_search_edges_node__asIssue_repositoryBuilder
    implements
        Builder<GAssignedIssuesData_search_edges_node__asIssue_repository,
            GAssignedIssuesData_search_edges_node__asIssue_repositoryBuilder> {
  _$GAssignedIssuesData_search_edges_node__asIssue_repository? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _nameWithOwner;
  String? get nameWithOwner => _$this._nameWithOwner;
  set nameWithOwner(String? nameWithOwner) =>
      _$this._nameWithOwner = nameWithOwner;

  _i2.GURIBuilder? _url;
  _i2.GURIBuilder get url => _$this._url ??= new _i2.GURIBuilder();
  set url(_i2.GURIBuilder? url) => _$this._url = url;

  GAssignedIssuesData_search_edges_node__asIssue_repositoryBuilder() {
    GAssignedIssuesData_search_edges_node__asIssue_repository
        ._initializeBuilder(this);
  }

  GAssignedIssuesData_search_edges_node__asIssue_repositoryBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _nameWithOwner = $v.nameWithOwner;
      _url = $v.url.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(
      GAssignedIssuesData_search_edges_node__asIssue_repository other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GAssignedIssuesData_search_edges_node__asIssue_repository;
  }

  @override
  void update(
      void Function(
              GAssignedIssuesData_search_edges_node__asIssue_repositoryBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GAssignedIssuesData_search_edges_node__asIssue_repository build() {
    _$GAssignedIssuesData_search_edges_node__asIssue_repository _$result;
    try {
      _$result = _$v ??
          new _$GAssignedIssuesData_search_edges_node__asIssue_repository._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename,
                  'GAssignedIssuesData_search_edges_node__asIssue_repository',
                  'G__typename'),
              nameWithOwner: BuiltValueNullFieldError.checkNotNull(
                  nameWithOwner,
                  'GAssignedIssuesData_search_edges_node__asIssue_repository',
                  'nameWithOwner'),
              url: url.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'url';
        url.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GAssignedIssuesData_search_edges_node__asIssue_repository',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GAssignedIssuesData_search_edges_node__asIssue_author
    extends GAssignedIssuesData_search_edges_node__asIssue_author {
  @override
  final String G__typename;
  @override
  final String login;
  @override
  final _i2.GURI url;

  factory _$GAssignedIssuesData_search_edges_node__asIssue_author(
          [void Function(
                  GAssignedIssuesData_search_edges_node__asIssue_authorBuilder)?
              updates]) =>
      (new GAssignedIssuesData_search_edges_node__asIssue_authorBuilder()
            ..update(updates))
          .build();

  _$GAssignedIssuesData_search_edges_node__asIssue_author._(
      {required this.G__typename, required this.login, required this.url})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        'GAssignedIssuesData_search_edges_node__asIssue_author', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(login,
        'GAssignedIssuesData_search_edges_node__asIssue_author', 'login');
    BuiltValueNullFieldError.checkNotNull(
        url, 'GAssignedIssuesData_search_edges_node__asIssue_author', 'url');
  }

  @override
  GAssignedIssuesData_search_edges_node__asIssue_author rebuild(
          void Function(
                  GAssignedIssuesData_search_edges_node__asIssue_authorBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GAssignedIssuesData_search_edges_node__asIssue_authorBuilder toBuilder() =>
      new GAssignedIssuesData_search_edges_node__asIssue_authorBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GAssignedIssuesData_search_edges_node__asIssue_author &&
        G__typename == other.G__typename &&
        login == other.login &&
        url == other.url;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc($jc(0, G__typename.hashCode), login.hashCode), url.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            'GAssignedIssuesData_search_edges_node__asIssue_author')
          ..add('G__typename', G__typename)
          ..add('login', login)
          ..add('url', url))
        .toString();
  }
}

class GAssignedIssuesData_search_edges_node__asIssue_authorBuilder
    implements
        Builder<GAssignedIssuesData_search_edges_node__asIssue_author,
            GAssignedIssuesData_search_edges_node__asIssue_authorBuilder> {
  _$GAssignedIssuesData_search_edges_node__asIssue_author? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _login;
  String? get login => _$this._login;
  set login(String? login) => _$this._login = login;

  _i2.GURIBuilder? _url;
  _i2.GURIBuilder get url => _$this._url ??= new _i2.GURIBuilder();
  set url(_i2.GURIBuilder? url) => _$this._url = url;

  GAssignedIssuesData_search_edges_node__asIssue_authorBuilder() {
    GAssignedIssuesData_search_edges_node__asIssue_author._initializeBuilder(
        this);
  }

  GAssignedIssuesData_search_edges_node__asIssue_authorBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _login = $v.login;
      _url = $v.url.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GAssignedIssuesData_search_edges_node__asIssue_author other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GAssignedIssuesData_search_edges_node__asIssue_author;
  }

  @override
  void update(
      void Function(
              GAssignedIssuesData_search_edges_node__asIssue_authorBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GAssignedIssuesData_search_edges_node__asIssue_author build() {
    _$GAssignedIssuesData_search_edges_node__asIssue_author _$result;
    try {
      _$result = _$v ??
          new _$GAssignedIssuesData_search_edges_node__asIssue_author._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename,
                  'GAssignedIssuesData_search_edges_node__asIssue_author',
                  'G__typename'),
              login: BuiltValueNullFieldError.checkNotNull(
                  login,
                  'GAssignedIssuesData_search_edges_node__asIssue_author',
                  'login'),
              url: url.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'url';
        url.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GAssignedIssuesData_search_edges_node__asIssue_author',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GAssignedIssuesData_search_edges_node__asIssue_labels
    extends GAssignedIssuesData_search_edges_node__asIssue_labels {
  @override
  final String G__typename;
  @override
  final BuiltList<GAssignedIssuesData_search_edges_node__asIssue_labels_nodes>?
      nodes;

  factory _$GAssignedIssuesData_search_edges_node__asIssue_labels(
          [void Function(
                  GAssignedIssuesData_search_edges_node__asIssue_labelsBuilder)?
              updates]) =>
      (new GAssignedIssuesData_search_edges_node__asIssue_labelsBuilder()
            ..update(updates))
          .build();

  _$GAssignedIssuesData_search_edges_node__asIssue_labels._(
      {required this.G__typename, this.nodes})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        'GAssignedIssuesData_search_edges_node__asIssue_labels', 'G__typename');
  }

  @override
  GAssignedIssuesData_search_edges_node__asIssue_labels rebuild(
          void Function(
                  GAssignedIssuesData_search_edges_node__asIssue_labelsBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GAssignedIssuesData_search_edges_node__asIssue_labelsBuilder toBuilder() =>
      new GAssignedIssuesData_search_edges_node__asIssue_labelsBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GAssignedIssuesData_search_edges_node__asIssue_labels &&
        G__typename == other.G__typename &&
        nodes == other.nodes;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, G__typename.hashCode), nodes.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            'GAssignedIssuesData_search_edges_node__asIssue_labels')
          ..add('G__typename', G__typename)
          ..add('nodes', nodes))
        .toString();
  }
}

class GAssignedIssuesData_search_edges_node__asIssue_labelsBuilder
    implements
        Builder<GAssignedIssuesData_search_edges_node__asIssue_labels,
            GAssignedIssuesData_search_edges_node__asIssue_labelsBuilder> {
  _$GAssignedIssuesData_search_edges_node__asIssue_labels? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  ListBuilder<GAssignedIssuesData_search_edges_node__asIssue_labels_nodes>?
      _nodes;
  ListBuilder<GAssignedIssuesData_search_edges_node__asIssue_labels_nodes>
      get nodes => _$this._nodes ??= new ListBuilder<
          GAssignedIssuesData_search_edges_node__asIssue_labels_nodes>();
  set nodes(
          ListBuilder<
                  GAssignedIssuesData_search_edges_node__asIssue_labels_nodes>?
              nodes) =>
      _$this._nodes = nodes;

  GAssignedIssuesData_search_edges_node__asIssue_labelsBuilder() {
    GAssignedIssuesData_search_edges_node__asIssue_labels._initializeBuilder(
        this);
  }

  GAssignedIssuesData_search_edges_node__asIssue_labelsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _nodes = $v.nodes?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GAssignedIssuesData_search_edges_node__asIssue_labels other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GAssignedIssuesData_search_edges_node__asIssue_labels;
  }

  @override
  void update(
      void Function(
              GAssignedIssuesData_search_edges_node__asIssue_labelsBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GAssignedIssuesData_search_edges_node__asIssue_labels build() {
    _$GAssignedIssuesData_search_edges_node__asIssue_labels _$result;
    try {
      _$result = _$v ??
          new _$GAssignedIssuesData_search_edges_node__asIssue_labels._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename,
                  'GAssignedIssuesData_search_edges_node__asIssue_labels',
                  'G__typename'),
              nodes: _nodes?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'nodes';
        _nodes?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GAssignedIssuesData_search_edges_node__asIssue_labels',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GAssignedIssuesData_search_edges_node__asIssue_labels_nodes
    extends GAssignedIssuesData_search_edges_node__asIssue_labels_nodes {
  @override
  final String G__typename;
  @override
  final String name;
  @override
  final String color;

  factory _$GAssignedIssuesData_search_edges_node__asIssue_labels_nodes(
          [void Function(
                  GAssignedIssuesData_search_edges_node__asIssue_labels_nodesBuilder)?
              updates]) =>
      (new GAssignedIssuesData_search_edges_node__asIssue_labels_nodesBuilder()
            ..update(updates))
          .build();

  _$GAssignedIssuesData_search_edges_node__asIssue_labels_nodes._(
      {required this.G__typename, required this.name, required this.color})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        'GAssignedIssuesData_search_edges_node__asIssue_labels_nodes',
        'G__typename');
    BuiltValueNullFieldError.checkNotNull(name,
        'GAssignedIssuesData_search_edges_node__asIssue_labels_nodes', 'name');
    BuiltValueNullFieldError.checkNotNull(color,
        'GAssignedIssuesData_search_edges_node__asIssue_labels_nodes', 'color');
  }

  @override
  GAssignedIssuesData_search_edges_node__asIssue_labels_nodes rebuild(
          void Function(
                  GAssignedIssuesData_search_edges_node__asIssue_labels_nodesBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GAssignedIssuesData_search_edges_node__asIssue_labels_nodesBuilder
      toBuilder() =>
          new GAssignedIssuesData_search_edges_node__asIssue_labels_nodesBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is GAssignedIssuesData_search_edges_node__asIssue_labels_nodes &&
        G__typename == other.G__typename &&
        name == other.name &&
        color == other.color;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc($jc(0, G__typename.hashCode), name.hashCode), color.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            'GAssignedIssuesData_search_edges_node__asIssue_labels_nodes')
          ..add('G__typename', G__typename)
          ..add('name', name)
          ..add('color', color))
        .toString();
  }
}

class GAssignedIssuesData_search_edges_node__asIssue_labels_nodesBuilder
    implements
        Builder<GAssignedIssuesData_search_edges_node__asIssue_labels_nodes,
            GAssignedIssuesData_search_edges_node__asIssue_labels_nodesBuilder> {
  _$GAssignedIssuesData_search_edges_node__asIssue_labels_nodes? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _color;
  String? get color => _$this._color;
  set color(String? color) => _$this._color = color;

  GAssignedIssuesData_search_edges_node__asIssue_labels_nodesBuilder() {
    GAssignedIssuesData_search_edges_node__asIssue_labels_nodes
        ._initializeBuilder(this);
  }

  GAssignedIssuesData_search_edges_node__asIssue_labels_nodesBuilder
      get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _name = $v.name;
      _color = $v.color;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(
      GAssignedIssuesData_search_edges_node__asIssue_labels_nodes other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v =
        other as _$GAssignedIssuesData_search_edges_node__asIssue_labels_nodes;
  }

  @override
  void update(
      void Function(
              GAssignedIssuesData_search_edges_node__asIssue_labels_nodesBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GAssignedIssuesData_search_edges_node__asIssue_labels_nodes build() {
    final _$result = _$v ??
        new _$GAssignedIssuesData_search_edges_node__asIssue_labels_nodes._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                'GAssignedIssuesData_search_edges_node__asIssue_labels_nodes',
                'G__typename'),
            name: BuiltValueNullFieldError.checkNotNull(
                name,
                'GAssignedIssuesData_search_edges_node__asIssue_labels_nodes',
                'name'),
            color: BuiltValueNullFieldError.checkNotNull(
                color,
                'GAssignedIssuesData_search_edges_node__asIssue_labels_nodes',
                'color'));
    replace(_$result);
    return _$result;
  }
}

class _$GAssignedIssuesData_search_edges_node__asIssue_comments
    extends GAssignedIssuesData_search_edges_node__asIssue_comments {
  @override
  final String G__typename;
  @override
  final int totalCount;

  factory _$GAssignedIssuesData_search_edges_node__asIssue_comments(
          [void Function(
                  GAssignedIssuesData_search_edges_node__asIssue_commentsBuilder)?
              updates]) =>
      (new GAssignedIssuesData_search_edges_node__asIssue_commentsBuilder()
            ..update(updates))
          .build();

  _$GAssignedIssuesData_search_edges_node__asIssue_comments._(
      {required this.G__typename, required this.totalCount})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        'GAssignedIssuesData_search_edges_node__asIssue_comments',
        'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        totalCount,
        'GAssignedIssuesData_search_edges_node__asIssue_comments',
        'totalCount');
  }

  @override
  GAssignedIssuesData_search_edges_node__asIssue_comments rebuild(
          void Function(
                  GAssignedIssuesData_search_edges_node__asIssue_commentsBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GAssignedIssuesData_search_edges_node__asIssue_commentsBuilder toBuilder() =>
      new GAssignedIssuesData_search_edges_node__asIssue_commentsBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GAssignedIssuesData_search_edges_node__asIssue_comments &&
        G__typename == other.G__typename &&
        totalCount == other.totalCount;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, G__typename.hashCode), totalCount.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            'GAssignedIssuesData_search_edges_node__asIssue_comments')
          ..add('G__typename', G__typename)
          ..add('totalCount', totalCount))
        .toString();
  }
}

class GAssignedIssuesData_search_edges_node__asIssue_commentsBuilder
    implements
        Builder<GAssignedIssuesData_search_edges_node__asIssue_comments,
            GAssignedIssuesData_search_edges_node__asIssue_commentsBuilder> {
  _$GAssignedIssuesData_search_edges_node__asIssue_comments? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  int? _totalCount;
  int? get totalCount => _$this._totalCount;
  set totalCount(int? totalCount) => _$this._totalCount = totalCount;

  GAssignedIssuesData_search_edges_node__asIssue_commentsBuilder() {
    GAssignedIssuesData_search_edges_node__asIssue_comments._initializeBuilder(
        this);
  }

  GAssignedIssuesData_search_edges_node__asIssue_commentsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _totalCount = $v.totalCount;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GAssignedIssuesData_search_edges_node__asIssue_comments other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GAssignedIssuesData_search_edges_node__asIssue_comments;
  }

  @override
  void update(
      void Function(
              GAssignedIssuesData_search_edges_node__asIssue_commentsBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GAssignedIssuesData_search_edges_node__asIssue_comments build() {
    final _$result = _$v ??
        new _$GAssignedIssuesData_search_edges_node__asIssue_comments._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                'GAssignedIssuesData_search_edges_node__asIssue_comments',
                'G__typename'),
            totalCount: BuiltValueNullFieldError.checkNotNull(
                totalCount,
                'GAssignedIssuesData_search_edges_node__asIssue_comments',
                'totalCount'));
    replace(_$result);
    return _$result;
  }
}

class _$GRepositoriesData extends GRepositoriesData {
  @override
  final String G__typename;
  @override
  final GRepositoriesData_viewer viewer;

  factory _$GRepositoriesData(
          [void Function(GRepositoriesDataBuilder)? updates]) =>
      (new GRepositoriesDataBuilder()..update(updates)).build();

  _$GRepositoriesData._({required this.G__typename, required this.viewer})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GRepositoriesData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        viewer, 'GRepositoriesData', 'viewer');
  }

  @override
  GRepositoriesData rebuild(void Function(GRepositoriesDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GRepositoriesDataBuilder toBuilder() =>
      new GRepositoriesDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GRepositoriesData &&
        G__typename == other.G__typename &&
        viewer == other.viewer;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, G__typename.hashCode), viewer.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GRepositoriesData')
          ..add('G__typename', G__typename)
          ..add('viewer', viewer))
        .toString();
  }
}

class GRepositoriesDataBuilder
    implements Builder<GRepositoriesData, GRepositoriesDataBuilder> {
  _$GRepositoriesData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GRepositoriesData_viewerBuilder? _viewer;
  GRepositoriesData_viewerBuilder get viewer =>
      _$this._viewer ??= new GRepositoriesData_viewerBuilder();
  set viewer(GRepositoriesData_viewerBuilder? viewer) =>
      _$this._viewer = viewer;

  GRepositoriesDataBuilder() {
    GRepositoriesData._initializeBuilder(this);
  }

  GRepositoriesDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _viewer = $v.viewer.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GRepositoriesData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GRepositoriesData;
  }

  @override
  void update(void Function(GRepositoriesDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GRepositoriesData build() {
    _$GRepositoriesData _$result;
    try {
      _$result = _$v ??
          new _$GRepositoriesData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, 'GRepositoriesData', 'G__typename'),
              viewer: viewer.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'viewer';
        viewer.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GRepositoriesData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GRepositoriesData_viewer extends GRepositoriesData_viewer {
  @override
  final String G__typename;
  @override
  final GRepositoriesData_viewer_repositories repositories;

  factory _$GRepositoriesData_viewer(
          [void Function(GRepositoriesData_viewerBuilder)? updates]) =>
      (new GRepositoriesData_viewerBuilder()..update(updates)).build();

  _$GRepositoriesData_viewer._(
      {required this.G__typename, required this.repositories})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GRepositoriesData_viewer', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        repositories, 'GRepositoriesData_viewer', 'repositories');
  }

  @override
  GRepositoriesData_viewer rebuild(
          void Function(GRepositoriesData_viewerBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GRepositoriesData_viewerBuilder toBuilder() =>
      new GRepositoriesData_viewerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GRepositoriesData_viewer &&
        G__typename == other.G__typename &&
        repositories == other.repositories;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, G__typename.hashCode), repositories.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GRepositoriesData_viewer')
          ..add('G__typename', G__typename)
          ..add('repositories', repositories))
        .toString();
  }
}

class GRepositoriesData_viewerBuilder
    implements
        Builder<GRepositoriesData_viewer, GRepositoriesData_viewerBuilder> {
  _$GRepositoriesData_viewer? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GRepositoriesData_viewer_repositoriesBuilder? _repositories;
  GRepositoriesData_viewer_repositoriesBuilder get repositories =>
      _$this._repositories ??=
          new GRepositoriesData_viewer_repositoriesBuilder();
  set repositories(
          GRepositoriesData_viewer_repositoriesBuilder? repositories) =>
      _$this._repositories = repositories;

  GRepositoriesData_viewerBuilder() {
    GRepositoriesData_viewer._initializeBuilder(this);
  }

  GRepositoriesData_viewerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _repositories = $v.repositories.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GRepositoriesData_viewer other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GRepositoriesData_viewer;
  }

  @override
  void update(void Function(GRepositoriesData_viewerBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GRepositoriesData_viewer build() {
    _$GRepositoriesData_viewer _$result;
    try {
      _$result = _$v ??
          new _$GRepositoriesData_viewer._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, 'GRepositoriesData_viewer', 'G__typename'),
              repositories: repositories.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'repositories';
        repositories.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GRepositoriesData_viewer', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GRepositoriesData_viewer_repositories
    extends GRepositoriesData_viewer_repositories {
  @override
  final String G__typename;
  @override
  final BuiltList<GRepositoriesData_viewer_repositories_nodes>? nodes;

  factory _$GRepositoriesData_viewer_repositories(
          [void Function(GRepositoriesData_viewer_repositoriesBuilder)?
              updates]) =>
      (new GRepositoriesData_viewer_repositoriesBuilder()..update(updates))
          .build();

  _$GRepositoriesData_viewer_repositories._(
      {required this.G__typename, this.nodes})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GRepositoriesData_viewer_repositories', 'G__typename');
  }

  @override
  GRepositoriesData_viewer_repositories rebuild(
          void Function(GRepositoriesData_viewer_repositoriesBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GRepositoriesData_viewer_repositoriesBuilder toBuilder() =>
      new GRepositoriesData_viewer_repositoriesBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GRepositoriesData_viewer_repositories &&
        G__typename == other.G__typename &&
        nodes == other.nodes;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, G__typename.hashCode), nodes.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GRepositoriesData_viewer_repositories')
          ..add('G__typename', G__typename)
          ..add('nodes', nodes))
        .toString();
  }
}

class GRepositoriesData_viewer_repositoriesBuilder
    implements
        Builder<GRepositoriesData_viewer_repositories,
            GRepositoriesData_viewer_repositoriesBuilder> {
  _$GRepositoriesData_viewer_repositories? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  ListBuilder<GRepositoriesData_viewer_repositories_nodes>? _nodes;
  ListBuilder<GRepositoriesData_viewer_repositories_nodes> get nodes =>
      _$this._nodes ??=
          new ListBuilder<GRepositoriesData_viewer_repositories_nodes>();
  set nodes(ListBuilder<GRepositoriesData_viewer_repositories_nodes>? nodes) =>
      _$this._nodes = nodes;

  GRepositoriesData_viewer_repositoriesBuilder() {
    GRepositoriesData_viewer_repositories._initializeBuilder(this);
  }

  GRepositoriesData_viewer_repositoriesBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _nodes = $v.nodes?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GRepositoriesData_viewer_repositories other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GRepositoriesData_viewer_repositories;
  }

  @override
  void update(
      void Function(GRepositoriesData_viewer_repositoriesBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GRepositoriesData_viewer_repositories build() {
    _$GRepositoriesData_viewer_repositories _$result;
    try {
      _$result = _$v ??
          new _$GRepositoriesData_viewer_repositories._(
              G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                  'GRepositoriesData_viewer_repositories', 'G__typename'),
              nodes: _nodes?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'nodes';
        _nodes?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GRepositoriesData_viewer_repositories',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GRepositoriesData_viewer_repositories_nodes
    extends GRepositoriesData_viewer_repositories_nodes {
  @override
  final String G__typename;
  @override
  final String name;
  @override
  final String? description;
  @override
  final bool isFork;
  @override
  final bool isPrivate;
  @override
  final GRepositoriesData_viewer_repositories_nodes_stargazers stargazers;
  @override
  final _i2.GURI url;
  @override
  final GRepositoriesData_viewer_repositories_nodes_issues issues;
  @override
  final GRepositoriesData_viewer_repositories_nodes_owner owner;

  factory _$GRepositoriesData_viewer_repositories_nodes(
          [void Function(GRepositoriesData_viewer_repositories_nodesBuilder)?
              updates]) =>
      (new GRepositoriesData_viewer_repositories_nodesBuilder()
            ..update(updates))
          .build();

  _$GRepositoriesData_viewer_repositories_nodes._(
      {required this.G__typename,
      required this.name,
      this.description,
      required this.isFork,
      required this.isPrivate,
      required this.stargazers,
      required this.url,
      required this.issues,
      required this.owner})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        'GRepositoriesData_viewer_repositories_nodes', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        name, 'GRepositoriesData_viewer_repositories_nodes', 'name');
    BuiltValueNullFieldError.checkNotNull(
        isFork, 'GRepositoriesData_viewer_repositories_nodes', 'isFork');
    BuiltValueNullFieldError.checkNotNull(
        isPrivate, 'GRepositoriesData_viewer_repositories_nodes', 'isPrivate');
    BuiltValueNullFieldError.checkNotNull(stargazers,
        'GRepositoriesData_viewer_repositories_nodes', 'stargazers');
    BuiltValueNullFieldError.checkNotNull(
        url, 'GRepositoriesData_viewer_repositories_nodes', 'url');
    BuiltValueNullFieldError.checkNotNull(
        issues, 'GRepositoriesData_viewer_repositories_nodes', 'issues');
    BuiltValueNullFieldError.checkNotNull(
        owner, 'GRepositoriesData_viewer_repositories_nodes', 'owner');
  }

  @override
  GRepositoriesData_viewer_repositories_nodes rebuild(
          void Function(GRepositoriesData_viewer_repositories_nodesBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GRepositoriesData_viewer_repositories_nodesBuilder toBuilder() =>
      new GRepositoriesData_viewer_repositories_nodesBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GRepositoriesData_viewer_repositories_nodes &&
        G__typename == other.G__typename &&
        name == other.name &&
        description == other.description &&
        isFork == other.isFork &&
        isPrivate == other.isPrivate &&
        stargazers == other.stargazers &&
        url == other.url &&
        issues == other.issues &&
        owner == other.owner;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc($jc(0, G__typename.hashCode),
                                    name.hashCode),
                                description.hashCode),
                            isFork.hashCode),
                        isPrivate.hashCode),
                    stargazers.hashCode),
                url.hashCode),
            issues.hashCode),
        owner.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            'GRepositoriesData_viewer_repositories_nodes')
          ..add('G__typename', G__typename)
          ..add('name', name)
          ..add('description', description)
          ..add('isFork', isFork)
          ..add('isPrivate', isPrivate)
          ..add('stargazers', stargazers)
          ..add('url', url)
          ..add('issues', issues)
          ..add('owner', owner))
        .toString();
  }
}

class GRepositoriesData_viewer_repositories_nodesBuilder
    implements
        Builder<GRepositoriesData_viewer_repositories_nodes,
            GRepositoriesData_viewer_repositories_nodesBuilder> {
  _$GRepositoriesData_viewer_repositories_nodes? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  bool? _isFork;
  bool? get isFork => _$this._isFork;
  set isFork(bool? isFork) => _$this._isFork = isFork;

  bool? _isPrivate;
  bool? get isPrivate => _$this._isPrivate;
  set isPrivate(bool? isPrivate) => _$this._isPrivate = isPrivate;

  GRepositoriesData_viewer_repositories_nodes_stargazersBuilder? _stargazers;
  GRepositoriesData_viewer_repositories_nodes_stargazersBuilder
      get stargazers => _$this._stargazers ??=
          new GRepositoriesData_viewer_repositories_nodes_stargazersBuilder();
  set stargazers(
          GRepositoriesData_viewer_repositories_nodes_stargazersBuilder?
              stargazers) =>
      _$this._stargazers = stargazers;

  _i2.GURIBuilder? _url;
  _i2.GURIBuilder get url => _$this._url ??= new _i2.GURIBuilder();
  set url(_i2.GURIBuilder? url) => _$this._url = url;

  GRepositoriesData_viewer_repositories_nodes_issuesBuilder? _issues;
  GRepositoriesData_viewer_repositories_nodes_issuesBuilder get issues =>
      _$this._issues ??=
          new GRepositoriesData_viewer_repositories_nodes_issuesBuilder();
  set issues(
          GRepositoriesData_viewer_repositories_nodes_issuesBuilder? issues) =>
      _$this._issues = issues;

  GRepositoriesData_viewer_repositories_nodes_ownerBuilder? _owner;
  GRepositoriesData_viewer_repositories_nodes_ownerBuilder get owner =>
      _$this._owner ??=
          new GRepositoriesData_viewer_repositories_nodes_ownerBuilder();
  set owner(GRepositoriesData_viewer_repositories_nodes_ownerBuilder? owner) =>
      _$this._owner = owner;

  GRepositoriesData_viewer_repositories_nodesBuilder() {
    GRepositoriesData_viewer_repositories_nodes._initializeBuilder(this);
  }

  GRepositoriesData_viewer_repositories_nodesBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _name = $v.name;
      _description = $v.description;
      _isFork = $v.isFork;
      _isPrivate = $v.isPrivate;
      _stargazers = $v.stargazers.toBuilder();
      _url = $v.url.toBuilder();
      _issues = $v.issues.toBuilder();
      _owner = $v.owner.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GRepositoriesData_viewer_repositories_nodes other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GRepositoriesData_viewer_repositories_nodes;
  }

  @override
  void update(
      void Function(GRepositoriesData_viewer_repositories_nodesBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GRepositoriesData_viewer_repositories_nodes build() {
    _$GRepositoriesData_viewer_repositories_nodes _$result;
    try {
      _$result = _$v ??
          new _$GRepositoriesData_viewer_repositories_nodes._(
              G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                  'GRepositoriesData_viewer_repositories_nodes', 'G__typename'),
              name: BuiltValueNullFieldError.checkNotNull(
                  name, 'GRepositoriesData_viewer_repositories_nodes', 'name'),
              description: description,
              isFork: BuiltValueNullFieldError.checkNotNull(isFork,
                  'GRepositoriesData_viewer_repositories_nodes', 'isFork'),
              isPrivate: BuiltValueNullFieldError.checkNotNull(isPrivate,
                  'GRepositoriesData_viewer_repositories_nodes', 'isPrivate'),
              stargazers: stargazers.build(),
              url: url.build(),
              issues: issues.build(),
              owner: owner.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'stargazers';
        stargazers.build();
        _$failedField = 'url';
        url.build();
        _$failedField = 'issues';
        issues.build();
        _$failedField = 'owner';
        owner.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GRepositoriesData_viewer_repositories_nodes',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GRepositoriesData_viewer_repositories_nodes_stargazers
    extends GRepositoriesData_viewer_repositories_nodes_stargazers {
  @override
  final String G__typename;
  @override
  final int totalCount;

  factory _$GRepositoriesData_viewer_repositories_nodes_stargazers(
          [void Function(
                  GRepositoriesData_viewer_repositories_nodes_stargazersBuilder)?
              updates]) =>
      (new GRepositoriesData_viewer_repositories_nodes_stargazersBuilder()
            ..update(updates))
          .build();

  _$GRepositoriesData_viewer_repositories_nodes_stargazers._(
      {required this.G__typename, required this.totalCount})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        'GRepositoriesData_viewer_repositories_nodes_stargazers',
        'G__typename');
    BuiltValueNullFieldError.checkNotNull(totalCount,
        'GRepositoriesData_viewer_repositories_nodes_stargazers', 'totalCount');
  }

  @override
  GRepositoriesData_viewer_repositories_nodes_stargazers rebuild(
          void Function(
                  GRepositoriesData_viewer_repositories_nodes_stargazersBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GRepositoriesData_viewer_repositories_nodes_stargazersBuilder toBuilder() =>
      new GRepositoriesData_viewer_repositories_nodes_stargazersBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GRepositoriesData_viewer_repositories_nodes_stargazers &&
        G__typename == other.G__typename &&
        totalCount == other.totalCount;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, G__typename.hashCode), totalCount.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            'GRepositoriesData_viewer_repositories_nodes_stargazers')
          ..add('G__typename', G__typename)
          ..add('totalCount', totalCount))
        .toString();
  }
}

class GRepositoriesData_viewer_repositories_nodes_stargazersBuilder
    implements
        Builder<GRepositoriesData_viewer_repositories_nodes_stargazers,
            GRepositoriesData_viewer_repositories_nodes_stargazersBuilder> {
  _$GRepositoriesData_viewer_repositories_nodes_stargazers? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  int? _totalCount;
  int? get totalCount => _$this._totalCount;
  set totalCount(int? totalCount) => _$this._totalCount = totalCount;

  GRepositoriesData_viewer_repositories_nodes_stargazersBuilder() {
    GRepositoriesData_viewer_repositories_nodes_stargazers._initializeBuilder(
        this);
  }

  GRepositoriesData_viewer_repositories_nodes_stargazersBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _totalCount = $v.totalCount;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GRepositoriesData_viewer_repositories_nodes_stargazers other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GRepositoriesData_viewer_repositories_nodes_stargazers;
  }

  @override
  void update(
      void Function(
              GRepositoriesData_viewer_repositories_nodes_stargazersBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GRepositoriesData_viewer_repositories_nodes_stargazers build() {
    final _$result = _$v ??
        new _$GRepositoriesData_viewer_repositories_nodes_stargazers._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                'GRepositoriesData_viewer_repositories_nodes_stargazers',
                'G__typename'),
            totalCount: BuiltValueNullFieldError.checkNotNull(
                totalCount,
                'GRepositoriesData_viewer_repositories_nodes_stargazers',
                'totalCount'));
    replace(_$result);
    return _$result;
  }
}

class _$GRepositoriesData_viewer_repositories_nodes_issues
    extends GRepositoriesData_viewer_repositories_nodes_issues {
  @override
  final String G__typename;
  @override
  final int totalCount;

  factory _$GRepositoriesData_viewer_repositories_nodes_issues(
          [void Function(
                  GRepositoriesData_viewer_repositories_nodes_issuesBuilder)?
              updates]) =>
      (new GRepositoriesData_viewer_repositories_nodes_issuesBuilder()
            ..update(updates))
          .build();

  _$GRepositoriesData_viewer_repositories_nodes_issues._(
      {required this.G__typename, required this.totalCount})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        'GRepositoriesData_viewer_repositories_nodes_issues', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(totalCount,
        'GRepositoriesData_viewer_repositories_nodes_issues', 'totalCount');
  }

  @override
  GRepositoriesData_viewer_repositories_nodes_issues rebuild(
          void Function(
                  GRepositoriesData_viewer_repositories_nodes_issuesBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GRepositoriesData_viewer_repositories_nodes_issuesBuilder toBuilder() =>
      new GRepositoriesData_viewer_repositories_nodes_issuesBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GRepositoriesData_viewer_repositories_nodes_issues &&
        G__typename == other.G__typename &&
        totalCount == other.totalCount;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, G__typename.hashCode), totalCount.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            'GRepositoriesData_viewer_repositories_nodes_issues')
          ..add('G__typename', G__typename)
          ..add('totalCount', totalCount))
        .toString();
  }
}

class GRepositoriesData_viewer_repositories_nodes_issuesBuilder
    implements
        Builder<GRepositoriesData_viewer_repositories_nodes_issues,
            GRepositoriesData_viewer_repositories_nodes_issuesBuilder> {
  _$GRepositoriesData_viewer_repositories_nodes_issues? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  int? _totalCount;
  int? get totalCount => _$this._totalCount;
  set totalCount(int? totalCount) => _$this._totalCount = totalCount;

  GRepositoriesData_viewer_repositories_nodes_issuesBuilder() {
    GRepositoriesData_viewer_repositories_nodes_issues._initializeBuilder(this);
  }

  GRepositoriesData_viewer_repositories_nodes_issuesBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _totalCount = $v.totalCount;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GRepositoriesData_viewer_repositories_nodes_issues other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GRepositoriesData_viewer_repositories_nodes_issues;
  }

  @override
  void update(
      void Function(GRepositoriesData_viewer_repositories_nodes_issuesBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GRepositoriesData_viewer_repositories_nodes_issues build() {
    final _$result = _$v ??
        new _$GRepositoriesData_viewer_repositories_nodes_issues._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                'GRepositoriesData_viewer_repositories_nodes_issues',
                'G__typename'),
            totalCount: BuiltValueNullFieldError.checkNotNull(
                totalCount,
                'GRepositoriesData_viewer_repositories_nodes_issues',
                'totalCount'));
    replace(_$result);
    return _$result;
  }
}

class _$GRepositoriesData_viewer_repositories_nodes_owner
    extends GRepositoriesData_viewer_repositories_nodes_owner {
  @override
  final String G__typename;
  @override
  final String login;
  @override
  final _i2.GURI avatarUrl;

  factory _$GRepositoriesData_viewer_repositories_nodes_owner(
          [void Function(
                  GRepositoriesData_viewer_repositories_nodes_ownerBuilder)?
              updates]) =>
      (new GRepositoriesData_viewer_repositories_nodes_ownerBuilder()
            ..update(updates))
          .build();

  _$GRepositoriesData_viewer_repositories_nodes_owner._(
      {required this.G__typename, required this.login, required this.avatarUrl})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        'GRepositoriesData_viewer_repositories_nodes_owner', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        login, 'GRepositoriesData_viewer_repositories_nodes_owner', 'login');
    BuiltValueNullFieldError.checkNotNull(avatarUrl,
        'GRepositoriesData_viewer_repositories_nodes_owner', 'avatarUrl');
  }

  @override
  GRepositoriesData_viewer_repositories_nodes_owner rebuild(
          void Function(
                  GRepositoriesData_viewer_repositories_nodes_ownerBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GRepositoriesData_viewer_repositories_nodes_ownerBuilder toBuilder() =>
      new GRepositoriesData_viewer_repositories_nodes_ownerBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GRepositoriesData_viewer_repositories_nodes_owner &&
        G__typename == other.G__typename &&
        login == other.login &&
        avatarUrl == other.avatarUrl;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc(0, G__typename.hashCode), login.hashCode), avatarUrl.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            'GRepositoriesData_viewer_repositories_nodes_owner')
          ..add('G__typename', G__typename)
          ..add('login', login)
          ..add('avatarUrl', avatarUrl))
        .toString();
  }
}

class GRepositoriesData_viewer_repositories_nodes_ownerBuilder
    implements
        Builder<GRepositoriesData_viewer_repositories_nodes_owner,
            GRepositoriesData_viewer_repositories_nodes_ownerBuilder> {
  _$GRepositoriesData_viewer_repositories_nodes_owner? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _login;
  String? get login => _$this._login;
  set login(String? login) => _$this._login = login;

  _i2.GURIBuilder? _avatarUrl;
  _i2.GURIBuilder get avatarUrl => _$this._avatarUrl ??= new _i2.GURIBuilder();
  set avatarUrl(_i2.GURIBuilder? avatarUrl) => _$this._avatarUrl = avatarUrl;

  GRepositoriesData_viewer_repositories_nodes_ownerBuilder() {
    GRepositoriesData_viewer_repositories_nodes_owner._initializeBuilder(this);
  }

  GRepositoriesData_viewer_repositories_nodes_ownerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _login = $v.login;
      _avatarUrl = $v.avatarUrl.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GRepositoriesData_viewer_repositories_nodes_owner other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GRepositoriesData_viewer_repositories_nodes_owner;
  }

  @override
  void update(
      void Function(GRepositoriesData_viewer_repositories_nodes_ownerBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GRepositoriesData_viewer_repositories_nodes_owner build() {
    _$GRepositoriesData_viewer_repositories_nodes_owner _$result;
    try {
      _$result = _$v ??
          new _$GRepositoriesData_viewer_repositories_nodes_owner._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename,
                  'GRepositoriesData_viewer_repositories_nodes_owner',
                  'G__typename'),
              login: BuiltValueNullFieldError.checkNotNull(login,
                  'GRepositoriesData_viewer_repositories_nodes_owner', 'login'),
              avatarUrl: avatarUrl.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'avatarUrl';
        avatarUrl.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GRepositoriesData_viewer_repositories_nodes_owner',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
