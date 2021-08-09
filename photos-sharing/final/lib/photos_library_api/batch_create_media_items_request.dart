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

part 'batch_create_media_items_request.g.dart';

@JsonSerializable()
class BatchCreateMediaItemsRequest {
  BatchCreateMediaItemsRequest(this.albumId, this.newMediaItems,
      [this.albumPosition]);

  static BatchCreateMediaItemsRequest inAlbum(
      String uploadToken, String? albumId, String? description) {
    return BatchCreateMediaItemsRequest(
        albumId, <NewMediaItem>[NewMediaItem.simple(uploadToken, description)]);
  }

  factory BatchCreateMediaItemsRequest.fromJson(Map<String, dynamic> json) =>
      _$BatchCreateMediaItemsRequestFromJson(json);

  Map<String, dynamic> toJson() => _$BatchCreateMediaItemsRequestToJson(this);

  String? albumId;
  List<NewMediaItem> newMediaItems;
  AlbumPosition? albumPosition;
}

@JsonSerializable()
class NewMediaItem {
  NewMediaItem(this.description, this.simpleMediaItem);

  NewMediaItem.simple(String uploadToken, this.description)
      : simpleMediaItem = SimpleMediaItem(uploadToken);

  factory NewMediaItem.fromJson(Map<String, dynamic> json) =>
      _$NewMediaItemFromJson(json);

  Map<String, dynamic> toJson() => _$NewMediaItemToJson(this);
  String? description;

  SimpleMediaItem? simpleMediaItem;
}

@JsonSerializable()
class SimpleMediaItem {
  SimpleMediaItem(this.uploadToken);

  factory SimpleMediaItem.fromJson(Map<String, dynamic> json) =>
      _$SimpleMediaItemFromJson(json);

  Map<String, dynamic> toJson() => _$SimpleMediaItemToJson(this);

  String uploadToken;
}

@JsonSerializable()
class AlbumPosition {
  AlbumPosition(
      this.relativeMediaItemId, this.relativeEnrichmentItemId, this.position);
  AlbumPosition.absolute(this.position);

  factory AlbumPosition.fromJson(Map<String, dynamic> json) =>
      _$AlbumPositionFromJson(json);

  Map<String, dynamic> toJson() => _$AlbumPositionToJson(this);

  String? relativeMediaItemId;
  String? relativeEnrichmentItemId;
  PositionType position;

  static AlbumPosition lastInAlbum() =>
      AlbumPosition.absolute(PositionType.LAST_IN_ALBUM);
}

enum PositionType {
  POSITION_TYPE_UNSPECIFIED,
  FIRST_IN_ALBUM,
  LAST_IN_ALBUM,
  AFTER_MEDIA_ITEM,
  AFTER_ENRICHMENT_ITEM
}
