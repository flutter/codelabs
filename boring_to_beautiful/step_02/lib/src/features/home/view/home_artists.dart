// Copyright 2022 The Flutter Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../shared/classes/classes.dart';
import '../../../shared/extensions.dart';

class HomeArtists extends StatelessWidget {
  const HomeArtists({
    super.key,
    required this.artists,
    required this.constraints,
  });

  final List<Artist> artists;
  final BoxConstraints constraints;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: constraints.isMobile
          ? Column(
              children: [
                for (final artist in artists) buildTile(context, artist),
              ],
            )
          : Row(children: [
              for (final artist in artists)
                Flexible(
                  flex: 1,
                  child: buildTile(context, artist),
                ),
            ]),
    );
  }

  Widget buildTile(BuildContext context, Artist artist) {
    return ListTile(
      leading: CircleAvatar(
        backgroundImage: AssetImage(artist.image.image),
      ),
      title: Text(
        artist.updates.first,
        maxLines: 2,
        style: context.labelLarge,
        overflow: TextOverflow.ellipsis,
      ),
      subtitle: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 0),
        child: Text(artist.name, style: context.labelMedium),
      ),
      onTap: () => GoRouter.of(context).go('/artists/${artist.id}'),
    );
  }
}
