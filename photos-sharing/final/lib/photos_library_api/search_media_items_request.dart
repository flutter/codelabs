/*
 * Copyright 2019 Google LLC
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     https://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

import 'package:json_annotation/json_annotation.dart';

part 'search_media_items_request.g.dart';

@JsonSerializable()
class SearchMediaItemsRequest {
  SearchMediaItemsRequest(this.albumId, this.pageSize, this.pageToken);

  SearchMediaItemsRequest.albumId(this.albumId);

  factory SearchMediaItemsRequest.fromJson(Map<String, dynamic> json) =>
      _$SearchMediaItemsRequestFromJson(json);

  Map<String, dynamic> toJson() => _$SearchMediaItemsRequestToJson(this);

  String? albumId;
  int? pageSize;
  String? pageToken;
}
