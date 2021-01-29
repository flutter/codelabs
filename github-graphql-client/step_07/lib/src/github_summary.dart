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

import 'package:flutter/material.dart';
import 'package:fluttericon/octicons_icons.dart';
import 'package:gql_exec/gql_exec.dart';
import 'package:gql_http_link/gql_http_link.dart';
import 'package:gql_link/gql_link.dart';
import 'package:http/http.dart' as http;
import 'package:url_launcher/url_launcher.dart';
import 'github_gql/github_queries.data.gql.dart';
import 'github_gql/github_queries.req.gql.dart';

class GitHubSummary extends StatefulWidget {
  GitHubSummary({@required http.Client client})
      : _link = HttpLink(
          'https://api.github.com/graphql',
          httpClient: client,
        );
  final HttpLink _link;
  @override
  _GitHubSummaryState createState() => _GitHubSummaryState();
}

class _GitHubSummaryState extends State<GitHubSummary> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        NavigationRail(
          selectedIndex: _selectedIndex,
          onDestinationSelected: (int index) {
            setState(() {
              _selectedIndex = index;
            });
          },
          labelType: NavigationRailLabelType.selected,
          destinations: [
            NavigationRailDestination(
              icon: Icon(Octicons.repo),
              label: Text('Repositories'),
            ),
            NavigationRailDestination(
              icon: Icon(Octicons.issue_opened),
              label: Text('Assigned Issues'),
            ),
            NavigationRailDestination(
              icon: Icon(Octicons.git_pull_request),
              label: Text('Pull Requests'),
            ),
          ],
        ),
        VerticalDivider(thickness: 1, width: 1),
        // This is the main content.
        Expanded(
          child: IndexedStack(
            index: _selectedIndex,
            children: [
              RepositoriesList(link: widget._link),
              AssignedIssuesList(link: widget._link),
              PullRequestsList(link: widget._link),
            ],
          ),
        ),
      ],
    );
  }
}

class RepositoriesList extends StatefulWidget {
  const RepositoriesList({@required this.link});
  final Link link;
  @override
  _RepositoriesListState createState() => _RepositoriesListState(link: link);
}

class _RepositoriesListState extends State<RepositoriesList> {
  _RepositoriesListState({@required Link link}) {
    _repositories = _retreiveRespositories(link);
  }
  Future<List<$Repositories$viewer$repositories$nodes>> _repositories;

  Future<List<$Repositories$viewer$repositories$nodes>> _retreiveRespositories(
      Link link) async {
    var result = await link.request(Repositories((b) => b..count = 100)).first;
    if (result.errors != null && result.errors.isNotEmpty) {
      throw QueryException(result.errors);
    }
    return $Repositories(result.data).viewer.repositories.nodes;
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<$Repositories$viewer$repositories$nodes>>(
      future: _repositories,
      builder: (context, snapshot) {
        if (snapshot.hasError) {
          return Center(child: Text('${snapshot.error}'));
        }
        if (!snapshot.hasData) {
          return Center(child: CircularProgressIndicator());
        }
        var repositories = snapshot.data;
        return ListView.builder(
          itemBuilder: (context, index) {
            var repository = repositories[index];
            return ListTile(
              title: Text('${repository.owner.login}/${repository.name}'),
              subtitle: Text(repository.description ?? 'No description'),
              onTap: () => _launchUrl(context, repository.url.value),
            );
          },
          itemCount: repositories.length,
        );
      },
    );
  }
}

class AssignedIssuesList extends StatefulWidget {
  const AssignedIssuesList({@required this.link});
  final Link link;
  @override
  _AssignedIssuesListState createState() =>
      _AssignedIssuesListState(link: link);
}

class _AssignedIssuesListState extends State<AssignedIssuesList> {
  _AssignedIssuesListState({@required Link link}) {
    _assignedIssues = _retrieveAssignedIssues(link);
  }

  Future<List<$AssignedIssues$search$edges$node$asIssue>> _assignedIssues;

  Future<List<$AssignedIssues$search$edges$node$asIssue>>
      _retrieveAssignedIssues(Link link) async {
    var result = await link.request(ViewerDetail((b) => b)).first;
    if (result.errors != null && result.errors.isNotEmpty) {
      throw QueryException(result.errors);
    }
    var _viewer = $ViewerDetail(result.data).viewer;

    result = await link
        .request(AssignedIssues((b) => b
          ..count = 100
          ..query = 'is:open assignee:${_viewer.login} archived:false'))
        .first;
    if (result.errors != null && result.errors.isNotEmpty) {
      throw QueryException(result.errors);
    }
    return $AssignedIssues(result.data)
        .search
        .edges
        .map((e) => e.node)
        .whereType<$AssignedIssues$search$edges$node$asIssue>()
        .toList();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<$AssignedIssues$search$edges$node$asIssue>>(
      future: _assignedIssues,
      builder: (context, snapshot) {
        if (snapshot.hasError) {
          return Center(child: Text('${snapshot.error}'));
        }
        if (!snapshot.hasData) {
          return Center(child: CircularProgressIndicator());
        }
        var assignedIssues = snapshot.data;
        return ListView.builder(
          itemBuilder: (context, index) {
            var assignedIssue = assignedIssues[index];
            return ListTile(
              title: Text('${assignedIssue.title}'),
              subtitle: Text('${assignedIssue.repository.nameWithOwner} '
                  'Issue #${assignedIssue.number} '
                  'opened by ${assignedIssue.author.login}'),
              onTap: () => _launchUrl(context, assignedIssue.url.value),
            );
          },
          itemCount: assignedIssues.length,
        );
      },
    );
  }
}

class PullRequestsList extends StatefulWidget {
  const PullRequestsList({@required this.link});
  final Link link;
  @override
  _PullRequestsListState createState() => _PullRequestsListState(link: link);
}

class _PullRequestsListState extends State<PullRequestsList> {
  _PullRequestsListState({@required Link link}) {
    _pullRequests = _retrievePullRequests(link);
  }
  Future<List<$PullRequests$viewer$pullRequests$edges$node>> _pullRequests;

  Future<List<$PullRequests$viewer$pullRequests$edges$node>>
      _retrievePullRequests(Link link) async {
    var result = await link.request(PullRequests((b) => b..count = 100)).first;
    if (result.errors != null && result.errors.isNotEmpty) {
      throw QueryException(result.errors);
    }
    return $PullRequests(result.data)
        .viewer
        .pullRequests
        .edges
        .map((e) => e.node)
        .toList();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<$PullRequests$viewer$pullRequests$edges$node>>(
      future: _pullRequests,
      builder: (context, snapshot) {
        if (snapshot.hasError) {
          return Center(child: Text('${snapshot.error}'));
        }
        if (!snapshot.hasData) {
          return Center(child: CircularProgressIndicator());
        }
        var pullRequests = snapshot.data;
        return ListView.builder(
          itemBuilder: (context, index) {
            var pullRequest = pullRequests[index];
            return ListTile(
              title: Text('${pullRequest.title}'),
              subtitle: Text('${pullRequest.repository.nameWithOwner} '
                  'PR #${pullRequest.number} '
                  'opened by ${pullRequest.author.login} '
                  '(${pullRequest.state.value.toLowerCase()})'),
              onTap: () => _launchUrl(context, pullRequest.url.value),
            );
          },
          itemCount: pullRequests.length,
        );
      },
    );
  }
}

class QueryException implements Exception {
  QueryException(this.errors);
  List<GraphQLError> errors;
  @override
  String toString() {
    return 'Query Exception: ${errors.map((err) => '$err').join(',')}';
  }
}

Future<void> _launchUrl(BuildContext context, String url) async {
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    return showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text('Navigation error'),
        content: Text('Could not launch $url'),
        actions: <Widget>[
          TextButton(
            child: Text('Close'),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ],
      ),
    );
  }
}
