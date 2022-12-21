// Copyright 2022 The Flutter Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../shared/classes/classes.dart';
import '../../../shared/extensions.dart';
import '../../../shared/playback/bloc/bloc.dart';
import '../../../shared/views/image_clipper.dart';
import '../../../shared/views/views.dart';

class ArtistRankedSongs extends StatelessWidget {
  const ArtistRankedSongs({super.key, required this.artist});

  final Artist artist;

  @override
  Widget build(BuildContext context) {
    return AdaptiveTable<RankedSong>(
      items: artist.songs,
      breakpoint: 450,
      itemBuilder: (song, index) {
        return ListTile(
          leading: ClippedImage(song.image.image),
          title: Text(song.title),
          subtitle: Text(song.length.toHumanizedString()),
          trailing: Text(song.ranking.toString()),
          onTap: () => BlocProvider.of<PlaybackBloc>(context).add(
            PlaybackEvent.changeSong(song),
          ),
        );
      },
      columns: const [
        DataColumn(
          label: Text(
            'Ranking',
          ),
          numeric: true,
        ),
        DataColumn(
          label: Text(
            'Title',
          ),
        ),
        DataColumn(
          label: Text(
            'Length',
          ),
        ),
      ],
      rowBuilder: (song, index) => DataRow.byIndex(index: index, cells: [
        DataCell(
          HoverableSongPlayButton(
            song: song,
            child: Center(
              child: Text(song.ranking.toString()),
            ),
          ),
        ),
        DataCell(
          Row(children: [
            Padding(
              padding: const EdgeInsets.all(2),
              child: ClippedImage(song.image.image),
            ),
            const SizedBox(width: 5.0),
            Expanded(child: Text(song.title)),
          ]),
        ),
        DataCell(
          Text(song.length.toHumanizedString()),
        ),
      ]),
    );
  }
}
