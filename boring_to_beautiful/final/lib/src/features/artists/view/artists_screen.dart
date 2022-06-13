import 'dart:math';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import './artist_card.dart';

import '../../../shared/providers/artists.dart';

class ArtistsScreen extends StatelessWidget {
  const ArtistsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final artistsProvider = ArtistsProvider();
    final artists = artistsProvider.artists;
    return LayoutBuilder(builder: (context, constraints) {
      return Scaffold(
        primary: false,
        appBar: AppBar(
          title: const Text('ARTISTS'),
          toolbarHeight: kToolbarHeight * 2,
        ),
        body: GridView.builder(
          padding: const EdgeInsets.all(15),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: max(1, (constraints.maxWidth ~/ 400).toInt()),
            childAspectRatio: 2.5,
            mainAxisSpacing: 10,
            crossAxisSpacing: 10,
          ),
          itemCount: artists.length,
          itemBuilder: (context, index) {
            final artist = artists[index];
            return GestureDetector(
              child: ArtistCard(
                artist: artist,
              ),
              onTap: () => GoRouter.of(context).go('/artists/${artist.id}'),
            );
          },
        ),
      );
    });
  }
}
