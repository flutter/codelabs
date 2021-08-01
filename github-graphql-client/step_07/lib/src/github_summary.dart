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
  GitHubSummary({required http.Client client})
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
          onDestinationSelected: (index) {
            setState(() {
              _selectedIndex = index;
            });
          },
          labelType: NavigationRailLabelType.selected,
          destinations: const [
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
        const VerticalDivider(thickness: 1, width: 1),
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
  const RepositoriesList({required this.link});
  final Link link;
  @override
  _RepositoriesListState createState() => _RepositoriesListState();
}

class _RepositoriesListState extends State<RepositoriesList> {
  @override
  initState() {
    super.initState();
    _repositories = _retreiveRespositories(widget.link);
  }

  late Future<List<GRepositoriesData_viewer_repositories_nodes>> _repositories;

  Future<List<GRepositoriesData_viewer_repositories_nodes>>
      _retreiveRespositories(Link link) async {
    final req = GRepositories((b) => b..vars.count = 100);
    final result = await link
        .request(Request(
          operation: req.operation,
          variables: req.vars.toJson(),
        ))
        .first;
    final errors = result.errors;
    if (errors != null && errors.isNotEmpty) {
      throw QueryException(errors);
    }
    return GRepositoriesData.fromJson(result.data!)!
        .viewer
        .repositories
        .nodes!
        .asList();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<GRepositoriesData_viewer_repositories_nodes>>(
      future: _repositories,
      builder: (context, snapshot) {
        if (snapshot.hasError) {
          return Center(child: Text('${snapshot.error}'));
        }
        if (!snapshot.hasData) {
          return const Center(child: CircularProgressIndicator());
        }
        var repositories = snapshot.data;
        return ListView.builder(
          itemBuilder: (context, index) {
            var repository = repositories![index];
            return ListTile(
              title: Text('${repository.owner.login}/${repository.name}'),
              subtitle: Text(repository.description ?? 'No description'),
              onTap: () => _launchUrl(context, repository.url.value),
            );
          },
          itemCount: repositories!.length,
        );
      },
    );
  }
}

class AssignedIssuesList extends StatefulWidget {
  const AssignedIssuesList({required this.link});
  final Link link;
  @override
  _AssignedIssuesListState createState() => _AssignedIssuesListState();
}

class _AssignedIssuesListState extends State<AssignedIssuesList> {
  @override
  initState() {
    super.initState();
    _assignedIssues = _retrieveAssignedIssues(widget.link);
  }

  late Future<List<GAssignedIssuesData_search_edges_node__asIssue>>
      _assignedIssues;

  Future<List<GAssignedIssuesData_search_edges_node__asIssue>>
      _retrieveAssignedIssues(Link link) async {
    final viewerReq = GViewerDetail((b) => b);
    var result = await link
        .request(Request(
          operation: viewerReq.operation,
          variables: viewerReq.vars.toJson(),
        ))
        .first;
    var errors = result.errors;
    if (errors != null && errors.isNotEmpty) {
      throw QueryException(errors);
    }
    final _viewer = GViewerDetailData.fromJson(result.data!)!.viewer;

    final issuesReq = GAssignedIssues((b) => b
      ..vars.count = 100
      ..vars.query = 'is:open assignee:${_viewer.login} archived:false');

    result = await link
        .request(Request(
          operation: issuesReq.operation,
          variables: issuesReq.vars.toJson(),
        ))
        .first;
    errors = result.errors;
    if (errors != null && errors.isNotEmpty) {
      throw QueryException(errors);
    }
    return GAssignedIssuesData.fromJson(result.data!)!
        .search
        .edges!
        .map((e) => e.node)
        .whereType<GAssignedIssuesData_search_edges_node__asIssue>()
        .toList();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<GAssignedIssuesData_search_edges_node__asIssue>>(
      future: _assignedIssues,
      builder: (context, snapshot) {
        if (snapshot.hasError) {
          return Center(child: Text('${snapshot.error}'));
        }
        if (!snapshot.hasData) {
          return const Center(child: CircularProgressIndicator());
        }
        var assignedIssues = snapshot.data;
        return ListView.builder(
          itemBuilder: (context, index) {
            var assignedIssue = assignedIssues![index];
            return ListTile(
              title: Text(assignedIssue.title),
              subtitle: Text('${assignedIssue.repository.nameWithOwner} '
                  'Issue #${assignedIssue.number} '
                  'opened by ${assignedIssue.author!.login}'),
              onTap: () => _launchUrl(context, assignedIssue.url.value),
            );
          },
          itemCount: assignedIssues!.length,
        );
      },
    );
  }
}

class PullRequestsList extends StatefulWidget {
  const PullRequestsList({required this.link});
  final Link link;
  @override
  _PullRequestsListState createState() => _PullRequestsListState();
}

class _PullRequestsListState extends State<PullRequestsList> {
  @override
  initState() {
    super.initState();
    _pullRequests = _retrievePullRequests(widget.link);
  }

  late Future<List<GPullRequestsData_viewer_pullRequests_edges_node>>
      _pullRequests;

  Future<List<GPullRequestsData_viewer_pullRequests_edges_node>>
      _retrievePullRequests(Link link) async {
    final req = GPullRequests((b) => b..vars.count = 100);
    final result = await link
        .request(Request(
          operation: req.operation,
          variables: req.vars.toJson(),
        ))
        .first;
    final errors = result.errors;
    if (errors != null && errors.isNotEmpty) {
      throw QueryException(errors);
    }
    return GPullRequestsData.fromJson(result.data!)!
        .viewer
        .pullRequests
        .edges!
        .map((e) => e.node)
        .whereType<GPullRequestsData_viewer_pullRequests_edges_node>()
        .toList();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<
        List<GPullRequestsData_viewer_pullRequests_edges_node>>(
      future: _pullRequests,
      builder: (context, snapshot) {
        if (snapshot.hasError) {
          return Center(child: Text('${snapshot.error}'));
        }
        if (!snapshot.hasData) {
          return const Center(child: CircularProgressIndicator());
        }
        var pullRequests = snapshot.data;
        return ListView.builder(
          itemBuilder: (context, index) {
            var pullRequest = pullRequests![index];
            return ListTile(
              title: Text(pullRequest.title),
              subtitle: Text('${pullRequest.repository.nameWithOwner} '
                  'PR #${pullRequest.number} '
                  'opened by ${pullRequest.author!.login} '
                  '(${pullRequest.state.name.toLowerCase()})'),
              onTap: () => _launchUrl(context, pullRequest.url.value),
            );
          },
          itemCount: pullRequests!.length,
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
        title: const Text('Navigation error'),
        content: Text('Could not launch $url'),
        actions: <Widget>[
          TextButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: const Text('Close'),
          ),
        ],
      ),
    );
  }
}
