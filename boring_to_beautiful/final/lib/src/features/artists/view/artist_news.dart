import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../shared/classes/classes.dart';
import '../../../shared/views/views.dart';

class ArtistNews extends StatelessWidget {
  const ArtistNews({Key? key, required this.artist}) : super(key: key);

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
              launch('https://docs.flutter.dev');
            },
          ),
      ],
    );
  }
}
