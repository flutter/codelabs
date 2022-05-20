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

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:scoped_model/scoped_model.dart';

import '../components/primary_raised_button.dart';
import '../components/trip_app_bar.dart';
import '../model/photos_library_api_model.dart';
import '../photos_library_api/album.dart';
import 'create_trip_page.dart';
import 'join_trip_page.dart';
import 'trip_page.dart';

class TripListPage extends StatelessWidget {
  const TripListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: const TripAppBar(),
      body: _buildTripList(),
    );
  }

  Widget _buildTripList() {
    return ScopedModelDescendant<PhotosLibraryApiModel>(
      builder: (context, child, photosLibraryApi) {
        if (!photosLibraryApi.hasAlbums) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }

        if (photosLibraryApi.albums.isEmpty) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              SvgPicture.asset(
                'assets/ic_fieldTrippa.svg',
                color: Colors.grey[300],
                height: 148,
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  "You're not currently a member of any trip albums. "
                  'Create a new trip album or join an existing one below.',
                  style: TextStyle(color: Colors.grey[600], fontSize: 16),
                  textAlign: TextAlign.center,
                ),
              ),
              _buildButtons(context),
            ],
          );
        }

        return ListView.builder(
          itemCount: photosLibraryApi.albums.length + 1,
          itemBuilder: (context, index) {
            if (index == 0) {
              return _buildButtons(context);
            }

            return _buildTripCard(
                context, photosLibraryApi.albums[index - 1], photosLibraryApi);
          },
        );
      },
    );
  }

  Widget _buildTripCard(BuildContext context, Album sharedAlbum,
      PhotosLibraryApiModel photosLibraryApi) {
    return Card(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(8)),
      ),
      elevation: 3,
      clipBehavior: Clip.antiAlias,
      margin: const EdgeInsets.symmetric(
        vertical: 12,
        horizontal: 33,
      ),
      child: InkWell(
        onTap: () => Navigator.push(
          context,
          MaterialPageRoute<void>(
            builder: (context) => TripPage(
              album: sharedAlbum,
              searchResponse: photosLibraryApi.searchMediaItems(sharedAlbum.id),
            ),
          ),
        ),
        child: Column(
          children: <Widget>[
            Container(
              child: _buildTripThumbnail(sharedAlbum),
            ),
            Container(
              height: 52,
              padding: const EdgeInsets.only(left: 8),
              child: Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                _buildSharedIcon(sharedAlbum),
                Align(
                  alignment: const FractionalOffset(0, 0.5),
                  child: Text(
                    sharedAlbum.title ?? '[no title]',
                    style: const TextStyle(
                      fontSize: 18,
                    ),
                  ),
                ),
              ]),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTripThumbnail(Album sharedAlbum) {
    if (sharedAlbum.coverPhotoBaseUrl == null ||
        sharedAlbum.mediaItemsCount == null) {
      return Container(
        height: 160,
        width: 346,
        color: Colors.grey[200],
        padding: const EdgeInsets.all(5),
        child: SvgPicture.asset(
          'assets/ic_fieldTrippa.svg',
          color: Colors.grey[350],
        ),
      );
    }

    return CachedNetworkImage(
      imageUrl: '${sharedAlbum.coverPhotoBaseUrl}=w346-h160-c',
      progressIndicatorBuilder: (context, url, downloadProgress) =>
          CircularProgressIndicator(value: downloadProgress.progress),
      errorWidget: (context, url, dynamic error) {
        print(error);
        return const Icon(Icons.error);
      },
    );
  }

  Widget _buildButtons(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(30),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          PrimaryRaisedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute<void>(
                  builder: (context) => const CreateTripPage(),
                ),
              );
            },
            label: const Text('CREATE A TRIP ALBUM'),
          ),
          Container(
            padding: const EdgeInsets.only(top: 10),
            child: const Text(
              ' - or - ',
              style: TextStyle(
                color: Colors.grey,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          TextButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute<void>(
                  builder: (context) => const JoinTripPage(),
                ),
              );
            },
            child: const Text('JOIN A TRIP ALBUM'),
          ),
        ],
      ),
    );
  }

  Widget _buildSharedIcon(Album album) {
    if (album.shareInfo != null) {
      return const Padding(
          padding: EdgeInsets.only(right: 8),
          child: Icon(
            Icons.folder_shared,
            color: Colors.black38,
          ));
    } else {
      return Container();
    }
  }
}
