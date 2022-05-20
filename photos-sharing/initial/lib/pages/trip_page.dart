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

import 'dart:async';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:scoped_model/scoped_model.dart';
import '../components/contribute_photo_dialog.dart';
import '../components/primary_raised_button.dart';
import '../model/photos_library_api_model.dart';
import '../photos_library_api/album.dart';
import '../photos_library_api/media_item.dart';
import '../photos_library_api/search_media_items_response.dart';
import '../util/to_be_implemented.dart';

class TripPage extends StatefulWidget {
  const TripPage({super.key, this.searchResponse, required this.album});

  final Future<SearchMediaItemsResponse>? searchResponse;

  final Album album;

  @override
  State<StatefulWidget> createState() =>
      // ignore: no_logic_in_create_state
      _TripPageState(searchResponse: searchResponse, album: album);
}

class _TripPageState extends State<TripPage> {
  _TripPageState({this.searchResponse, required this.album});

  Album album;
  Future<SearchMediaItemsResponse>? searchResponse;
  bool _inSharingApiCall = false; // ignore: prefer_final_fields

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
      ),
      body: Builder(builder: (context) {
        return Column(
          children: <Widget>[
            SizedBox(
              width: 370,
              child: Text(
                album.title ?? '[no title]',
                style: const TextStyle(
                  fontSize: 36,
                ),
              ),
            ),
            _buildShareButtons(context),
            Container(
              width: 348,
              margin: const EdgeInsets.only(bottom: 32),
              child: PrimaryRaisedButton(
                label: const Text('ADD PHOTO'),
                onPressed: () => _contributePhoto(context),
              ),
            ),
            FutureBuilder<SearchMediaItemsResponse>(
              future: searchResponse,
              builder: _buildMediaItemList,
            )
          ],
        );
      }),
    );
  }

  // ignore: unused_element
  Future<void> _shareAlbum(BuildContext context) async {
    // TODO(codelab): Implement this method.
    ToBeImplemented.showMessage();

    // If the album is not shared yet, call the Library API to share it and
    // update the local model

    // Once the album contains the shareInfo data, display its share token
  }

  Future<void> _showShareableUrl(BuildContext context) async {
    // TODO(codelab): Implement this method.
    ToBeImplemented.showMessage();
  }

  Future<void> _showShareToken(BuildContext context) async {
    // TODO(codelab): Implement this method.
    ToBeImplemented.showMessage();
  }

  // ignore: unused_element
  void _showTokenDialog(BuildContext context) {
    // TODO(codelab): Implement this method.
    ToBeImplemented.showMessage();
  }

  // ignore: unused_element
  void _showUrlDialog(BuildContext context) {
    // TODO(codelab): Implement this method.
    ToBeImplemented.showMessage();
  }

  // ignore: unused_element
  void _showShareDialog(BuildContext context, String title, String text) {
    showDialog<void>(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text(title),
            content: Row(
              children: [
                Flexible(
                  child: Text(
                    text,
                  ),
                ),
                TextButton(
                  onPressed: () => Clipboard.setData(ClipboardData(text: text)),
                  child: const Text('Copy'),
                )
              ],
            ),
            actions: <Widget>[
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: const Text('Close'),
              ),
            ],
          );
        });
  }

  Future<void> _contributePhoto(BuildContext context) async {
    // Show the contribute  dialog and upload a photo.
    final contributeResult = await (showDialog<ContributePhotoResult>(
      context: context,
      builder: (context) {
        return const ContributePhotoDialog();
      },
    ));

    if (!mounted) {
      // The context is invalid if the widget has been unmounted.
      return;
    }

    if (contributeResult == null) {
      // No contribution created or no media items to create.
      return;
    }

    // Create the media item from the uploaded photo.
    await ScopedModel.of<PhotosLibraryApiModel>(context).createMediaItem(
        contributeResult.uploadToken, album.id!, contributeResult.description);
    if (!mounted) return;

    // Do a new search for items inside this album and store its Future for display.
    final response = ScopedModel.of<PhotosLibraryApiModel>(context)
        .searchMediaItems(album.id);
    setState(() {
      searchResponse = response;
    });
  }

  Widget _buildShareButtons(BuildContext context) {
    if (_inSharingApiCall) {
      return const CircularProgressIndicator();
    }

    return Column(children: <Widget>[
      SizedBox(
        width: 254,
        child: TextButton(
          onPressed: () => _showShareableUrl(context),
          child: const Text('SHARE WITH ANYONE'),
        ),
      ),
      SizedBox(
        width: 254,
        child: TextButton(
          onPressed: () => _showShareToken(context),
          child: const Text('SHARE IN FIELD TRIPPA'),
        ),
      ),
    ]);
  }

  Widget _buildMediaItemList(
      BuildContext context, AsyncSnapshot<SearchMediaItemsResponse> snapshot) {
    if (snapshot.hasData) {
      final List<MediaItem>? items = snapshot.data!.mediaItems;
      if (items == null) {
        return Container();
      }

      return Expanded(
        child: ListView.builder(
          itemCount: items.length,
          itemBuilder: (context, index) {
            return _buildMediaItem(items[index]);
          },
        ),
      );
    }

    if (snapshot.hasError) {
      print(snapshot.error);
      return Container();
    }

    return const Center(
      child: CircularProgressIndicator(),
    );
  }

  Widget _buildMediaItem(MediaItem mediaItem) {
    return Column(
      children: <Widget>[
        Center(
          child: CachedNetworkImage(
            imageUrl: '${mediaItem.baseUrl}=w364',
            progressIndicatorBuilder: (context, url, downloadProgress) =>
                CircularProgressIndicator(value: downloadProgress.progress),
            errorWidget: (context, url, dynamic error) {
              print(error);
              return const Icon(Icons.error);
            },
          ),
        ),
        Container(
          padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 2),
          width: 364,
          child: Text(
            mediaItem.description ?? '',
            textAlign: TextAlign.left,
          ),
        ),
      ],
    );
  }
}

class ContributePhotoResult {
  ContributePhotoResult(this.uploadToken, this.description);

  String uploadToken;
  String description;
}
