import 'dart:math';

import 'package:flutter/material.dart';
import '../../../shared/classes/classes.dart';
import '../../../shared/extensions.dart';
import '../../../shared/views/outlined_card.dart';
import '../../../shared/views/views.dart';

class ArtistCard extends StatelessWidget {
  const ArtistCard({
    super.key,
    required this.artist,
  });

  final Artist artist;

  @override
  Widget build(BuildContext context) {
    Song nowPlaying = artist.songs[Random().nextInt(artist.songs.length)];

    return OutlinedCard(
      child: LayoutBuilder(
        builder: (context, dimens) => Row(
          children: [
            SizedBox(
              width: dimens.maxWidth * 0.4,
              child: Image.asset(
                artist.image.image,
                fit: BoxFit.cover,
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(left: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 0, 15, 0),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              artist.name,
                              style: context.titleMedium,
                              overflow: TextOverflow.ellipsis,
                              maxLines: 1,
                            ),
                            const SizedBox(height: 10),
                            Text(
                              artist.bio,
                              overflow: TextOverflow.ellipsis,
                              style: context.labelSmall,
                              maxLines: 3,
                            ),
                          ]),
                    ),
                    if (dimens.maxHeight > 100)
                      Row(
                        children: [
                          HoverableSongPlayButton(
                            size: const Size(50, 50),
                            song: nowPlaying,
                            child: Icon(Icons.play_circle,
                                color: context.colors.tertiary),
                          ),
                          Text(
                            nowPlaying.title,
                            maxLines: 1,
                            overflow: TextOverflow.clip,
                            style: context.labelMedium,
                          ),
                        ],
                      ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
