import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../shared/classes/classes.dart';
import '../../../shared/views/views.dart';

class ArtistNews extends StatelessWidget {
  const ArtistNews({super.key, required this.artist});

  final Artist artist;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        for (final article in artist.news)
          Clickable(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ImageCard(
                clickable: true,
                title: article.title,
                subtitle: article.author,
                details: article.blurb,
                image: article.image.image.toString(),
              ),
            ),
            onTap: () {
              launchUrl(Uri.parse('https://docs.flutter.dev'));
            },
          ),
      ],
    );
  }
}
