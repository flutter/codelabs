// Copyright 2022 The Flutter Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import './classes.dart';

class Playlist {
  final String id;
  final String title;
  final String description;
  final List<Song> songs;
  MyArtistImage cover;

  Playlist({
    required this.id,
    required this.title,
    this.description = '',
    required this.songs,
    this.cover = const MyArtistImage(
        image: 'assets/images/record.jpeg',
        sourceName: 'Adobe Stock Images',
        sourceLink: ''),
  });
}
