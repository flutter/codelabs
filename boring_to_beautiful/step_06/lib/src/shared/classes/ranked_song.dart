// Copyright 2022 The Flutter Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import './classes.dart';

class RankedSong extends Song {
  final int ranking;

  const RankedSong(this.ranking, String title, Artist artist, Duration length,
      MyArtistImage image)
      : super(title, artist, length, image);
}
