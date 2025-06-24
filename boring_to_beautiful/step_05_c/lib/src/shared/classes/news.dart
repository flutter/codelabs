// Copyright 2022 The Flutter Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import './classes.dart';

class News {
  const News({
    required this.title,
    required this.author,
    required this.blurb,
    required this.image,
  });

  final String title;
  final String author;
  final String blurb;
  final MyArtistImage image;
}
