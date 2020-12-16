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

import 'package:gql_exec/gql_exec.dart' as _i1;
import 'package:github_graphql_client/src/github_gql/github_queries.var.gql.dart'
    as _i2;
import 'package:github_graphql_client/src/github_gql/github_queries.op.gql.dart'
    as _i3;

class ViewerDetail extends _i1.Request {
  ViewerDetail(
      _i2.ViewerDetailVarBuilder Function(_i2.ViewerDetailVarBuilder) buildVars)
      : super(
            operation: _i3.ViewerDetail,
            variables: buildVars(_i2.ViewerDetailVarBuilder()).variables);
}
