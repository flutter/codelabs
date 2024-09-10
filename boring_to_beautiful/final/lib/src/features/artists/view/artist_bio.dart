// Copyright 2022 The Flutter Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';

import '../../../shared/classes/classes.dart';
import '../../../shared/extensions.dart';

class ArtistBio extends StatelessWidget {
  const ArtistBio({super.key, required this.artist});

  final Artist artist;

  @override
  Widget build(BuildContext context) {
    return Text(
      artist.bio,
      style: context.bodyLarge!.copyWith(
        fontSize: 16,
        color: context.colors.onSurface.withAlpha(
          222,
        ),
      ),
    );
  }
}
