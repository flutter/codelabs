# Flutter Github GraphQL Client

A Flutter desktop Github client using Github API v4 (GraphQL). This repository is the code behind the
[Write a Flutter desktop application](https://codelabs.developers.google.com/codelabs/flutter-github-graphql-client/#0)
codelab.

## Github GraphQL Schema generation
 - GitHub's GraphQL Schema is from [GitHub's developer documentation](https://docs.github.com/en/graphql/overview/public-schema)
 - The schema is cached in
   [`lib/third_party/github_graphql_schema`](lib/third_party/github_graphql_schema)
 - GraphQL classes are generated with `flutter pub build_runner build`
 - GraphQL code generation is configured in [`build.yaml`](build.yaml)

 ## Things to look at
  - [Introduction to GraphQL](https://graphql.org/learn/)
  - [GitHub's GraphQL API v4](https://docs.github.com/en/graphql)
  - [GitHub's GraphQl API Explorer](https://developer.github.com/v4/explorer/)
  - [GroovinChip's GitHub-Activity-Feed](https://github.com/GroovinChip/GitHub-Activity-Feed)
