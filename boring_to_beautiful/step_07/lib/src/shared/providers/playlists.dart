// Copyright 2022 The Flutter Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'dart:math';
import 'package:collection/collection.dart';
import 'package:english_words/english_words.dart';

import '../classes/classes.dart';
import '../extensions.dart';
import 'providers.dart';

class PlaylistsProvider {
  List<Playlist> get playlists => _randomPlaylists;
  Playlist get newReleases => randomPlaylist(numSongs: 10);
  Playlist get topSongs => randomPlaylist(numSongs: 10);

  static List<MyArtistImage> images() {
    return [
      const MyArtistImage(
          image: 'assets/images/playlists/favorite.jpg',
          sourceLink: 'https://unsplash.com/photos/60GsdOMRFGc',
          sourceName: 'Karsten Winegeart'),
      const MyArtistImage(
          image: 'assets/images/playlists/austin.jpg',
          sourceLink: 'https://unsplash.com/photos/AlBgcDfDG_s',
          sourceName: 'Carlos Alfonso'),
      const MyArtistImage(
          image: 'assets/images/playlists/reading.jpg',
          sourceLink: 'https://unsplash.com/photos/wkgv7I2VTzM',
          sourceName: 'Alexandra Fuller'),
      const MyArtistImage(
          image: 'assets/images/playlists/workout.jpg',
          sourceLink: 'https://unsplash.com/photos/CnEEF5eJemQ',
          sourceName: 'Karsten Winegeart'),
      const MyArtistImage(
          image: 'assets/images/playlists/calm.jpg',
          sourceLink: 'https://unsplash.com/photos/NTyBbu66_SI',
          sourceName: 'Jared Rice'),
      const MyArtistImage(
          image: 'assets/images/playlists/coffee.jpg',
          sourceLink: 'https://unsplash.com/photos/XOhI_kW_TaM',
          sourceName: 'Nathan Dumlao'),
      const MyArtistImage(
          image: 'assets/images/playlists/piano.jpg',
          sourceLink: 'https://unsplash.com/photos/BhfE1IgcsA8',
          sourceName: 'Jordan Whitfield'),
      const MyArtistImage(
          image: 'assets/images/playlists/studying.jpg',
          sourceLink: 'https://unsplash.com/photos/-moT-Deiw1M',
          sourceName: 'Humble Lamb'),
      const MyArtistImage(
          image: 'assets/images/playlists/jazz.jpg',
          sourceLink: 'https://unsplash.com/photos/BY_KyTwTKq4',
          sourceName: 'dimitri.photography'),
    ];
  }

  Playlist? getPlaylist(String id) {
    return playlists.firstWhereOrNull((playlist) => playlist.id == id);
  }

  static Playlist randomPlaylist({int numSongs = 15}) {
    return Playlist(
      id: randomId(),
      title: generateRandomString(max(2, Random().nextInt(4))),
      description: generateRandomString(Random().nextInt(25)),
      songs: List.generate(numSongs, (index) => randomSong()),
      cover: images()[Random().nextInt(images().length - 1)],
    );
  }

  static Playlist randomLengthPlaylist({int maxSongs = 15}) {
    final int songCount = Random().nextInt(maxSongs) + 1;

    return PlaylistsProvider.randomPlaylist(numSongs: songCount);
  }

  static Song randomSong() {
    return Song(
      generateRandomString(2),
      ArtistsProvider.shared.randomArtist,
      generateRandomSongLength(),
      images()[Random().nextInt(images().length)],
    );
  }

  static final List<Playlist> _randomPlaylists =
      List.generate(10, (index) => randomLengthPlaylist());
}

String randomId() {
  return Random().nextInt(1000000).toString();
}

String generateRandomString(int wordCount) {
  final randomWords = generateWordPairs().take((wordCount).floor());
  return randomWords.join(' ');
}

Duration generateRandomSongLength() {
  Random rand = Random();

  int minute = rand.nextInt(5);

  int second = rand.nextInt(60);

  String secondStr = second.toString();

  if (second < 10) {
    secondStr = secondStr.padLeft(2, '0');
  }

  return '$minute : $secondStr'.toDuration();
}
