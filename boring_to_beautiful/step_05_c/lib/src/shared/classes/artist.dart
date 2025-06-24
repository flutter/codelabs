// Copyright 2022 The Flutter Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import '../providers/providers.dart';
import './classes.dart';

class Artist {
  const Artist({
    required this.id,
    required this.name,
    required this.image,
    required this.bio,
    required this.events,
    this.updates = const [],
    this.news = const [],
  });

  final String id;
  final String name;
  final MyArtistImage image;
  final String bio;
  final List<Event> events;
  final List<String> updates;
  final List<News> news;

  List<RankedSong> get songs =>
      SongsProvider.shared.songs.where((song) => song.artist.id == id).toList();
}
