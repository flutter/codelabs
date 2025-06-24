// Copyright 2022 The Flutter Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import './classes.dart';

class Song {
  final Artist artist;
  final String title;
  final Duration length;
  final MyArtistImage image;

  const Song(this.title, this.artist, this.length, this.image);
}
