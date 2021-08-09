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
import 'package:sharing_codelab/components/contribute_photo_dialog.dart';
import 'package:sharing_codelab/components/primary_raised_button.dart';
import 'package:sharing_codelab/model/photos_library_api_model.dart';
import 'package:sharing_codelab/photos_library_api/album.dart';
import 'package:sharing_codelab/photos_library_api/media_item.dart';
import 'package:sharing_codelab/photos_library_api/search_media_items_response.dart';

class TripPage extends StatefulWidget {
  const TripPage({Key? key, this.searchResponse, required this.album})
      : super(key: key);

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
  bool _inSharingApiCall = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
      ),
      body: Builder(builder: (BuildContext context) {
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

  Future<void> _shareAlbum(BuildContext context) async {
    String? id = album.id;

    if (id == null) {
      // Album is missing an ID.
      const snackBar = SnackBar(
        duration: Duration(seconds: 3),
        content: Text('Could not share album. Try reopening this page.'),
      );
      ScaffoldMessenger.of(context).showSnackBar(snackBar);
      return;
    }

    // Show the loading indicator
    setState(() => _inSharingApiCall = true);

    const snackBar = SnackBar(
      duration: Duration(seconds: 3),
      content: Text('Sharing Album...'),
    );
    ScaffoldMessenger.of(context).showSnackBar(snackBar);

    // Share the album and update the local model
    await ScopedModel.of<PhotosLibraryApiModel>(context).shareAlbum(id);
    final updatedAlbum =
        await ScopedModel.of<PhotosLibraryApiModel>(context).getAlbum(id);

    print('Album has been shared.');
    setState(() {
      album = updatedAlbum;
      // Hide the loading indicator
      _inSharingApiCall = false;
    });
  }

  Future<void> _showShareableUrl(BuildContext context) async {
    if (album.shareInfo == null || album.shareInfo!.shareableUrl == null) {
      print('Not shared, sharing album first.');

      // Album is not shared yet, share it first, then display dialog
      await _shareAlbum(context);
      _showUrlDialog(context);
    } else {
      // Album is already shared, display dialog with URL
      _showUrlDialog(context);
    }
  }

  Future<void> _showShareToken(BuildContext context) async {
    if (album.shareInfo == null) {
      print('Not shared, sharing album first.');

      // Album is not shared yet, share it first, then display dialog
      await _shareAlbum(context);
      _showTokenDialog(context);
    } else {
      // Album is already shared, display dialog with token
      _showTokenDialog(context);
    }
  }

  void _showTokenDialog(BuildContext context) {
    print('This is the shareToken:\n${album.shareInfo!.shareToken}');

    _showShareDialog(
        context, 'Use this token to share', album.shareInfo!.shareToken!);
  }

  void _showUrlDialog(BuildContext context) {
    print('This is the shareableUrl:\n${album.shareInfo!.shareableUrl}');

    _showShareDialog(
        context,
        'Share this URL with anyone. '
        'Anyone with this URL can access all items.',
        album.shareInfo!.shareableUrl!);
  }

  void _showShareDialog(BuildContext context, String title, String text) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
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

  void _contributePhoto(BuildContext context) async {
    // Show the contribute  dialog and upload a photo.
    final contributeResult = await (showDialog<ContributePhotoResult>(
      context: context,
      builder: (BuildContext context) {
        return const ContributePhotoDialog();
      },
    ));

    if (contributeResult == null) {
      // No contribution created or no media items to create.
      return;
    }

    // Create the media item from the uploaded photo.
    await ScopedModel.of<PhotosLibraryApiModel>(context).createMediaItem(
        contributeResult.uploadToken, album.id!, contributeResult.description);

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
          itemBuilder: (BuildContext context, int index) {
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
            errorWidget: (BuildContext context, String url, Object? error) {
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
