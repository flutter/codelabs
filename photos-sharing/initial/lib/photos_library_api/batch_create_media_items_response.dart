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
import 'media_item.dart';

part 'batch_create_media_items_response.g.dart';

@JsonSerializable()
class BatchCreateMediaItemsResponse {
  BatchCreateMediaItemsResponse(this.newMediaItemResults);

  factory BatchCreateMediaItemsResponse.fromJson(Map<String, dynamic> json) =>
      _$BatchCreateMediaItemsResponseFromJson(json);

  Map<String, dynamic> toJson() => _$BatchCreateMediaItemsResponseToJson(this);

  List<NewMediaItemResult>? newMediaItemResults;
}

@JsonSerializable()
class NewMediaItemResult {
  NewMediaItemResult(this.uploadToken, this.mediaItem);

  factory NewMediaItemResult.fromJson(Map<String, dynamic> json) =>
      _$NewMediaItemResultFromJson(json);

  Map<String, dynamic> toJson() => _$NewMediaItemResultToJson(this);

  String uploadToken;
  MediaItem? mediaItem;
}
