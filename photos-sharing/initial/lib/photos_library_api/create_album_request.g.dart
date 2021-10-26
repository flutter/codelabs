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

part of 'create_album_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CreateAlbumRequest _$CreateAlbumRequestFromJson(Map<String, dynamic> json) {
  return CreateAlbumRequest(
    Album.fromJson(json['album'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$CreateAlbumRequestToJson(CreateAlbumRequest instance) =>
    <String, dynamic>{
      'album': instance.album,
    };
