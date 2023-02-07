import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../shared/classes/playlist.dart';
import '../../../shared/extensions.dart';
import '../../../shared/views/clickable.dart';
import '../../../shared/views/image_clipper.dart';
import '../../../shared/views/outlined_card.dart';

class HomeRecent extends StatelessWidget {
  const HomeRecent(
      {super.key, required this.playlists, this.axis = Axis.horizontal});

  final List<Playlist> playlists;
  final Axis axis;

  @override
  Widget build(BuildContext context) {
    if (axis == Axis.horizontal) {
      return SizedBox(
        height: 295,
        child: ListView.builder(
          scrollDirection: axis,
          padding: const EdgeInsets.only(left: 10),
          itemCount: playlists.length,
          itemBuilder: (context, index) {
            final playlist = playlists[index];
            return Clickable(
              child: Padding(
                padding: const EdgeInsets.only(right: 25),
                child: OutlinedCard(
                  child: SizedBox(
                    width: 200,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Row(
                          children: [
                            Expanded(
                              child: Image.asset(playlist.cover.image,
                                  fit: BoxFit.cover),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(5, 10, 5, 0),
                          child: buildDetails(context, playlist),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              onTap: () => GoRouter.of(context).go('/playlists/${playlist.id}'),
            );
          },
        ),
      );
    }
    return ListView.builder(
      scrollDirection: axis,
      itemCount: playlists.length,
      itemBuilder: (context, index) {
        final playlist = playlists[index];
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Clickable(
            onTap: () => GoRouter.of(context).go('/playlists/${playlist.id}'),
            child: SizedBox(
              height: 200,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: [
                  ClippedImage(
                    playlist.cover.image,
                    height: 200,
                  ),
                  Expanded(
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.all(20),
                        child: buildDetails(context, playlist),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  Widget buildDetails(BuildContext context, Playlist playlist) {
    return Column(
      children: [
        Padding(
            padding: const EdgeInsets.fromLTRB(10, 5, 10, 5),
            child: Text(
              playlist.title,
              style: context.titleSmall!.copyWith(
                fontWeight: FontWeight.bold,
              ),
              overflow: TextOverflow.ellipsis,
              maxLines: 1,
              textAlign: TextAlign.center,
            )),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
          child: Text(playlist.description,
              overflow: TextOverflow.ellipsis,
              style: context.labelSmall,
              maxLines: 2,
              textAlign: TextAlign.center),
        ),
      ],
    );
  }
}
