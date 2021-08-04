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

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'share_album_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ShareAlbumResponse _$ShareAlbumResponseFromJson(Map<String, dynamic> json) {
  return ShareAlbumResponse(
    json['shareInfo'] == null
        ? null
        : ShareInfo.fromJson(json['shareInfo'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$ShareAlbumResponseToJson(ShareAlbumResponse instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('shareInfo', instance.shareInfo);
  return val;
}
