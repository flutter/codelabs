import 'package:flutter/material.dart';
import 'package:github/github.dart';
import 'package:intl/intl.dart' as intl;

class GitHubStarCounter extends StatefulWidget {
  /// The full repository name, e.g. torvalds/linux
  final String repositoryName;

  const GitHubStarCounter({
    required this.repositoryName,
    super.key,
  });

  @override
  State<GitHubStarCounter> createState() => _GitHubStarCounterState();
}

class _GitHubStarCounterState extends State<GitHubStarCounter> {
  // The GitHub API client
  late GitHub github;

  // The repository information
  Repository? repository;

  // A human-readable error when the repository isn't found.
  String? errorMessage;

  @override
  void initState() {
    super.initState();
    github = GitHub();

    fetchRepository();
  }

  @override
  void didUpdateWidget(GitHubStarCounter oldWidget) {
    super.didUpdateWidget(oldWidget);

    // When this widget's [repositoryName] changes,
    // load the Repository information.
    if (widget.repositoryName == oldWidget.repositoryName) {
      return;
    }

    fetchRepository();
  }

  Future<void> fetchRepository() async {
    setState(() {
      repository = null;
      errorMessage = null;
    });

    if (widget.repositoryName.isNotEmpty) {
      try {
        var repo = await github.repositories
            .getRepository(RepositorySlug.full(widget.repositoryName));
        setState(() {
          repository = repo;
        });
      } on RepositoryNotFound {
        setState(() {
          repository = null;
          errorMessage = '${widget.repositoryName} not found.';
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final textStyle = textTheme.headline4?.apply(color: Colors.green);
    final errorStyle = textTheme.bodyText1?.apply(color: Colors.red);
    final numberFormat = intl.NumberFormat.decimalPattern();

    if (errorMessage != null) {
      return Text(errorMessage!, style: errorStyle);
    }

    if (widget.repositoryName.isNotEmpty && repository == null) {
      return const Text('loading...');
    }

    if (repository == null) {
      // If no repository is entered, return an empty widget.
      return const SizedBox();
    }

    return Text(
      numberFormat.format(repository!.stargazersCount),
      style: textStyle,
    );
  }
}
