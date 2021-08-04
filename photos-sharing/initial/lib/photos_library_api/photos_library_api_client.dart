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

import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart';
import 'package:sharing_codelab/photos_library_api/album.dart';
import 'package:http/http.dart' as http;
import 'package:sharing_codelab/photos_library_api/batch_create_media_items_request.dart';
import 'package:sharing_codelab/photos_library_api/batch_create_media_items_response.dart';
import 'package:sharing_codelab/photos_library_api/create_album_request.dart';
import 'package:sharing_codelab/photos_library_api/get_album_request.dart';
import 'package:sharing_codelab/photos_library_api/join_shared_album_request.dart';
import 'package:sharing_codelab/photos_library_api/join_shared_album_response.dart';
import 'package:sharing_codelab/photos_library_api/list_albums_response.dart';
import 'package:sharing_codelab/photos_library_api/list_shared_albums_response.dart';
import 'package:sharing_codelab/photos_library_api/search_media_items_request.dart';
import 'package:sharing_codelab/photos_library_api/search_media_items_response.dart';
import 'package:sharing_codelab/photos_library_api/share_album_request.dart';
import 'package:sharing_codelab/photos_library_api/share_album_response.dart';
import 'package:path/path.dart' as path;

class PhotosLibraryApiClient {
  PhotosLibraryApiClient(this._authHeaders);

  final Future<Map<String, String>> _authHeaders;

  Future<Album> createAlbum(CreateAlbumRequest request) async {
    final response = await http.post(
      Uri.parse('https://photoslibrary.googleapis.com/v1/albums'),
      body: jsonEncode(request),
      headers: await _authHeaders,
    );

    printError(response);

    return Album.fromJson(jsonDecode(response.body));
  }

  Future<JoinSharedAlbumResponse> joinSharedAlbum(
      JoinSharedAlbumRequest request) async {
    final response = await http.post(
        Uri.parse('https://photoslibrary.googleapis.com/v1/sharedAlbums:join'),
        headers: await _authHeaders,
        body: jsonEncode(request));

    printError(response);

    return JoinSharedAlbumResponse.fromJson(jsonDecode(response.body));
  }

  Future<ShareAlbumResponse> shareAlbum(ShareAlbumRequest request) async {
    final response = await http.post(
        Uri.parse(
            'https://photoslibrary.googleapis.com/v1/albums/${request.albumId}:share'),
        headers: await _authHeaders,
        body: jsonEncode(request));

    printError(response);

    return ShareAlbumResponse.fromJson(jsonDecode(response.body));
  }

  Future<Album> getAlbum(GetAlbumRequest request) async {
    final response = await http.get(
        Uri.parse(
            'https://photoslibrary.googleapis.com/v1/albums/${request.albumId}'),
        headers: await _authHeaders);

    printError(response);

    return Album.fromJson(jsonDecode(response.body));
  }

  Future<ListAlbumsResponse> listAlbums() async {
    final response = await http.get(
        Uri.parse('https://photoslibrary.googleapis.com/v1/albums?'
            'pageSize=50&excludeNonAppCreatedData=true'),
        headers: await _authHeaders);

    printError(response);

    print(response.body);

    return ListAlbumsResponse.fromJson(jsonDecode(response.body));
  }

  Future<ListSharedAlbumsResponse> listSharedAlbums() async {
    final response = await http.get(
        Uri.parse('https://photoslibrary.googleapis.com/v1/sharedAlbums?'
            'pageSize=50&excludeNonAppCreatedData=true'),
        headers: await _authHeaders);

    printError(response);

    print(response.body);

    return ListSharedAlbumsResponse.fromJson(jsonDecode(response.body));
  }

  Future<String> uploadMediaItem(File image) async {
    // Get the filename of the image
    final filename = path.basename(image.path);

    // Set up the headers required for this request.
    final headers = <String, String>{};
    headers.addAll(await _authHeaders);
    headers['Content-type'] = 'application/octet-stream';
    headers['X-Goog-Upload-Protocol'] = 'raw';
    headers['X-Goog-Upload-File-Name'] = filename;

    // Make the HTTP request to upload the image. The file is sent in the body.
    final response = await http.post(
      Uri.parse('https://photoslibrary.googleapis.com/v1/uploads'),
      body: image.readAsBytesSync(),
      headers: await _authHeaders,
    );

    printError(response);

    return response.body;
  }

  Future<SearchMediaItemsResponse> searchMediaItems(
      SearchMediaItemsRequest request) async {
    final response = await http.post(
      Uri.parse('https://photoslibrary.googleapis.com/v1/mediaItems:search'),
      body: jsonEncode(request),
      headers: await _authHeaders,
    );

    printError(response);

    return SearchMediaItemsResponse.fromJson(jsonDecode(response.body));
  }

  Future<BatchCreateMediaItemsResponse> batchCreateMediaItems(
      BatchCreateMediaItemsRequest request) async {
    print(request.toJson());
    final response = await http.post(
        Uri.parse(
            'https://photoslibrary.googleapis.com/v1/mediaItems:batchCreate'),
        body: jsonEncode(request),
        headers: await _authHeaders);

    printError(response);

    return BatchCreateMediaItemsResponse.fromJson(jsonDecode(response.body));
  }

  static void printError(final Response response) {
    if (response.statusCode != 200) {
      print(response.reasonPhrase);
      print(response.body);
    }
  }
}
