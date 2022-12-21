// Copyright 2022 The Flutter Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../classes/classes.dart';
import '../playback/bloc/bloc.dart';
import '../views/views.dart';

/// Renders the child widget when not hovered and a Play button when hovered.
class HoverableSongPlayButton extends StatelessWidget {
  const HoverableSongPlayButton({
    super.key,
    required this.song,
    required this.child,
    this.size = const Size(50, 50),
    this.hoverMode = HoverMode.replace,
  });

  final Widget child;
  final Size size;
  final Song song;
  final HoverMode hoverMode;

  @override
  Widget build(BuildContext context) {
    return HoverToggle(
      hoverChild: Center(
        child: GestureDetector(
          child: const Icon(Icons.play_arrow),
          onTap: () => BlocProvider.of<PlaybackBloc>(context).add(
            PlaybackEvent.changeSong(song),
          ),
        ),
      ),
      mode: hoverMode,
      size: size,
      child: child,
    );
  }
}
