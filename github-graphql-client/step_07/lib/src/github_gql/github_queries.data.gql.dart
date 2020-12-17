// Copyright 2020 Google LLC
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//     https://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:github_graphql_client/third_party/github_graphql_schema/schema.docs.schema.gql.dart'
    as _i1;

class $ViewerDetail {
  const $ViewerDetail(this.data);

  final Map<String, dynamic> data;

  $ViewerDetail$viewer get viewer => data['viewer'] == null
      ? null
      : $ViewerDetail$viewer((data['viewer'] as Map<String, dynamic>));
}

class $ViewerDetail$viewer {
  const $ViewerDetail$viewer(this.data);

  final Map<String, dynamic> data;

  String get login => (data['login'] as String);
}

class $PullRequests {
  const $PullRequests(this.data);

  final Map<String, dynamic> data;

  $PullRequests$viewer get viewer => data['viewer'] == null
      ? null
      : $PullRequests$viewer((data['viewer'] as Map<String, dynamic>));
}

class $PullRequests$viewer {
  const $PullRequests$viewer(this.data);

  final Map<String, dynamic> data;

  $PullRequests$viewer$pullRequests get pullRequests => data['pullRequests'] ==
          null
      ? null
      : $PullRequests$viewer$pullRequests(
          (data['pullRequests'] as Map<String, dynamic>));
}

class $PullRequests$viewer$pullRequests {
  const $PullRequests$viewer$pullRequests(this.data);

  final Map<String, dynamic> data;

  List<$PullRequests$viewer$pullRequests$edges> get edges =>
      data['edges'] == null
          ? null
          : (data['edges'] as List)
              .map((dynamic e) => $PullRequests$viewer$pullRequests$edges(
                  (e as Map<String, dynamic>)))
              .toList();
}

class $PullRequests$viewer$pullRequests$edges {
  const $PullRequests$viewer$pullRequests$edges(this.data);

  final Map<String, dynamic> data;

  $PullRequests$viewer$pullRequests$edges$node get node => data['node'] == null
      ? null
      : $PullRequests$viewer$pullRequests$edges$node(
          (data['node'] as Map<String, dynamic>));
}

class $PullRequests$viewer$pullRequests$edges$node {
  const $PullRequests$viewer$pullRequests$edges$node(this.data);

  final Map<String, dynamic> data;

  $PullRequests$viewer$pullRequests$edges$node$repository get repository =>
      data['repository'] == null
          ? null
          : $PullRequests$viewer$pullRequests$edges$node$repository(
              (data['repository'] as Map<String, dynamic>));
  $PullRequests$viewer$pullRequests$edges$node$author get author =>
      data['author'] == null
          ? null
          : $PullRequests$viewer$pullRequests$edges$node$author(
              (data['author'] as Map<String, dynamic>));
  int get number => (data['number'] as int);
  _i1.URI get url => _i1.URI((data['url'] as String));
  String get title => (data['title'] as String);
  _i1.DateTime get updatedAt => _i1.DateTime((data['updatedAt'] as String));
  _i1.PullRequestState get state =>
      _i1.PullRequestState((data['state'] as String));
  bool get isDraft => (data['isDraft'] as bool);
  $PullRequests$viewer$pullRequests$edges$node$comments get comments =>
      data['comments'] == null
          ? null
          : $PullRequests$viewer$pullRequests$edges$node$comments(
              (data['comments'] as Map<String, dynamic>));
  $PullRequests$viewer$pullRequests$edges$node$files get files =>
      data['files'] == null
          ? null
          : $PullRequests$viewer$pullRequests$edges$node$files(
              (data['files'] as Map<String, dynamic>));
}

class $PullRequests$viewer$pullRequests$edges$node$repository {
  const $PullRequests$viewer$pullRequests$edges$node$repository(this.data);

  final Map<String, dynamic> data;

  String get nameWithOwner => (data['nameWithOwner'] as String);
  _i1.URI get url => _i1.URI((data['url'] as String));
}

class $PullRequests$viewer$pullRequests$edges$node$author {
  const $PullRequests$viewer$pullRequests$edges$node$author(this.data);

  final Map<String, dynamic> data;

  String get login => (data['login'] as String);
  _i1.URI get url => _i1.URI((data['url'] as String));
}

class $PullRequests$viewer$pullRequests$edges$node$comments {
  const $PullRequests$viewer$pullRequests$edges$node$comments(this.data);

  final Map<String, dynamic> data;

  int get totalCount => (data['totalCount'] as int);
}

class $PullRequests$viewer$pullRequests$edges$node$files {
  const $PullRequests$viewer$pullRequests$edges$node$files(this.data);

  final Map<String, dynamic> data;

  int get totalCount => (data['totalCount'] as int);
}

class $AssignedIssues {
  const $AssignedIssues(this.data);

  final Map<String, dynamic> data;

  $AssignedIssues$search get search => data['search'] == null
      ? null
      : $AssignedIssues$search((data['search'] as Map<String, dynamic>));
}

class $AssignedIssues$search {
  const $AssignedIssues$search(this.data);

  final Map<String, dynamic> data;

  List<$AssignedIssues$search$edges> get edges => data['edges'] == null
      ? null
      : (data['edges'] as List)
          .map((dynamic e) =>
              $AssignedIssues$search$edges((e as Map<String, dynamic>)))
          .toList();
}

class $AssignedIssues$search$edges {
  const $AssignedIssues$search$edges(this.data);

  final Map<String, dynamic> data;

  $AssignedIssues$search$edges$node get node => data['node'] == null
      ? null
      : $AssignedIssues$search$edges$node(
          (data['node'] as Map<String, dynamic>));
}

class $AssignedIssues$search$edges$node {
  const $AssignedIssues$search$edges$node.fromData(this.data);

  factory $AssignedIssues$search$edges$node(data) {
    switch (data['__typename']) {
      case "Issue":
        return $AssignedIssues$search$edges$node$asIssue(data);
      default:
        return $AssignedIssues$search$edges$node.fromData(data);
    }
  }

  final Map<String, dynamic> data;
}

class $AssignedIssues$search$edges$node$asIssue
    implements $AssignedIssues$search$edges$node {
  const $AssignedIssues$search$edges$node$asIssue(this.data);

  final Map<String, dynamic> data;

  String get $__typename => (data['__typename'] as String);
  $AssignedIssues$search$edges$node$asIssue$repository get repository =>
      data['repository'] == null
          ? null
          : $AssignedIssues$search$edges$node$asIssue$repository(
              (data['repository'] as Map<String, dynamic>));
  int get number => (data['number'] as int);
  _i1.URI get url => _i1.URI((data['url'] as String));
  String get title => (data['title'] as String);
  $AssignedIssues$search$edges$node$asIssue$author get author =>
      data['author'] == null
          ? null
          : $AssignedIssues$search$edges$node$asIssue$author(
              (data['author'] as Map<String, dynamic>));
  $AssignedIssues$search$edges$node$asIssue$labels get labels =>
      data['labels'] == null
          ? null
          : $AssignedIssues$search$edges$node$asIssue$labels(
              (data['labels'] as Map<String, dynamic>));
  $AssignedIssues$search$edges$node$asIssue$comments get comments =>
      data['comments'] == null
          ? null
          : $AssignedIssues$search$edges$node$asIssue$comments(
              (data['comments'] as Map<String, dynamic>));
}

class $AssignedIssues$search$edges$node$asIssue$repository {
  const $AssignedIssues$search$edges$node$asIssue$repository(this.data);

  final Map<String, dynamic> data;

  String get nameWithOwner => (data['nameWithOwner'] as String);
  _i1.URI get url => _i1.URI((data['url'] as String));
}

class $AssignedIssues$search$edges$node$asIssue$author {
  const $AssignedIssues$search$edges$node$asIssue$author(this.data);

  final Map<String, dynamic> data;

  String get login => (data['login'] as String);
  _i1.URI get url => _i1.URI((data['url'] as String));
}

class $AssignedIssues$search$edges$node$asIssue$labels {
  const $AssignedIssues$search$edges$node$asIssue$labels(this.data);

  final Map<String, dynamic> data;

  List<$AssignedIssues$search$edges$node$asIssue$labels$nodes> get nodes =>
      data['nodes'] == null
          ? null
          : (data['nodes'] as List)
              .map((dynamic e) =>
                  $AssignedIssues$search$edges$node$asIssue$labels$nodes(
                      (e as Map<String, dynamic>)))
              .toList();
}

class $AssignedIssues$search$edges$node$asIssue$labels$nodes {
  const $AssignedIssues$search$edges$node$asIssue$labels$nodes(this.data);

  final Map<String, dynamic> data;

  String get name => (data['name'] as String);
  String get color => (data['color'] as String);
}

class $AssignedIssues$search$edges$node$asIssue$comments {
  const $AssignedIssues$search$edges$node$asIssue$comments(this.data);

  final Map<String, dynamic> data;

  int get totalCount => (data['totalCount'] as int);
}

class $Repositories {
  const $Repositories(this.data);

  final Map<String, dynamic> data;

  $Repositories$viewer get viewer => data['viewer'] == null
      ? null
      : $Repositories$viewer((data['viewer'] as Map<String, dynamic>));
}

class $Repositories$viewer {
  const $Repositories$viewer(this.data);

  final Map<String, dynamic> data;

  $Repositories$viewer$repositories get repositories => data['repositories'] ==
          null
      ? null
      : $Repositories$viewer$repositories(
          (data['repositories'] as Map<String, dynamic>));
}

class $Repositories$viewer$repositories {
  const $Repositories$viewer$repositories(this.data);

  final Map<String, dynamic> data;

  List<$Repositories$viewer$repositories$nodes> get nodes =>
      data['nodes'] == null
          ? null
          : (data['nodes'] as List)
              .map((dynamic e) => $Repositories$viewer$repositories$nodes(
                  (e as Map<String, dynamic>)))
              .toList();
}

class $Repositories$viewer$repositories$nodes {
  const $Repositories$viewer$repositories$nodes(this.data);

  final Map<String, dynamic> data;

  String get name => (data['name'] as String);
  String get description => (data['description'] as String);
  bool get isFork => (data['isFork'] as bool);
  bool get isPrivate => (data['isPrivate'] as bool);
  $Repositories$viewer$repositories$nodes$stargazers get stargazers =>
      data['stargazers'] == null
          ? null
          : $Repositories$viewer$repositories$nodes$stargazers(
              (data['stargazers'] as Map<String, dynamic>));
  _i1.URI get url => _i1.URI((data['url'] as String));
  $Repositories$viewer$repositories$nodes$issues get issues =>
      data['issues'] == null
          ? null
          : $Repositories$viewer$repositories$nodes$issues(
              (data['issues'] as Map<String, dynamic>));
  $Repositories$viewer$repositories$nodes$owner get owner =>
      data['owner'] == null
          ? null
          : $Repositories$viewer$repositories$nodes$owner(
              (data['owner'] as Map<String, dynamic>));
}

class $Repositories$viewer$repositories$nodes$stargazers {
  const $Repositories$viewer$repositories$nodes$stargazers(this.data);

  final Map<String, dynamic> data;

  int get totalCount => (data['totalCount'] as int);
}

class $Repositories$viewer$repositories$nodes$issues {
  const $Repositories$viewer$repositories$nodes$issues(this.data);

  final Map<String, dynamic> data;

  int get totalCount => (data['totalCount'] as int);
}

class $Repositories$viewer$repositories$nodes$owner {
  const $Repositories$viewer$repositories$nodes$owner(this.data);

  final Map<String, dynamic> data;

  String get login => (data['login'] as String);
  _i1.URI get avatarUrl => _i1.URI((data['avatarUrl'] as String));
}
