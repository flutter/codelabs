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
