import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../shared/classes/classes.dart';
import '../../../shared/extensions.dart';
import '../../../shared/playback/bloc/bloc.dart';
import '../../../shared/views/image_clipper.dart';
import '../../../shared/views/views.dart';

class PlaylistSongs extends StatelessWidget {
  const PlaylistSongs(
      {super.key, required this.playlist, required this.constraints});

  final Playlist playlist;
  final BoxConstraints constraints;

  @override
  Widget build(BuildContext context) {
    return AdaptiveTable<Song>(
      items: playlist.songs,
      breakpoint: 450,
      columns: const [
        DataColumn(
          label: Padding(
            padding: EdgeInsets.only(left: 20),
            child: Text('#'),
          ),
        ),
        DataColumn(
          label: Text('Title'),
        ),
        DataColumn(
          label: Padding(
            padding: EdgeInsets.only(right: 10),
            child: Text('Length'),
          ),
        ),
      ],
      rowBuilder: (context, index) => DataRow.byIndex(
        index: index,
        cells: [
          DataCell(
            // Add HoverableSongPlayButton
            Center(
              child: Text(
                (index + 1).toString(),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          DataCell(
            Row(children: [
              Padding(
                padding: const EdgeInsets.all(2),
                child: ClippedImage(playlist.songs[index].image.image),
              ),
              const SizedBox(width: 10),
              Expanded(child: Text(playlist.songs[index].title)),
            ]),
          ),
          DataCell(
            Text(playlist.songs[index].length.toHumanizedString()),
          ),
        ],
      ),
      itemBuilder: (song, index) {
        return ListTile(
          onTap: () => BlocProvider.of<PlaybackBloc>(context).add(
            PlaybackEvent.changeSong(song),
          ),
          leading: ClippedImage(song.image.image),
          title: Text(song.title),
          subtitle: Text(song.length.toHumanizedString()),
        );
      },
    );
  }
}
