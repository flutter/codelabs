import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../playback/bloc/bloc.dart';

/// Widget which catches all incoming Spacebar presses and routes them to the
/// [PlaybackBloc].
///
/// This widget sits below the [MaterialApp], which internally creates a
/// [WidgetsApp], which registers several global listeners for common keyboard
/// shortcuts. By sitting below that machinery, this installs a global Spacebar
/// listener which toggles Playback, as is customary in music-playing apps.
class PlayPauseListener extends StatelessWidget {
  const PlayPauseListener({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    // Immediately catch any [_PlayPauseIntent] events released by the inner
    // [Shortcuts] widget.
    return Actions(
      actions: <Type, Action<Intent>>{
        _PlayPauseIntent: _PlayPauseAction(),
      },
      child: Shortcuts(
        // Register a shortcut for Spacebar presses that release a
        // [_PlayPauseIntent] up the tree to the nearest [Actions] widget.
        shortcuts: <ShortcutActivator, Intent>{
          const SingleActivator(LogicalKeyboardKey.space): _PlayPauseIntent(
            // Create a closure which sends a [TogglePlayPause] event to the
            // [PlaybackBloc].
            () => BlocProvider.of<PlaybackBloc>(context).add(
              const PlaybackEvent.togglePlayPause(),
            ),
          ),
        },
        child: child,
      ),
    );
  }
}

class _PlayPauseAction extends Action<_PlayPauseIntent> {
  @override
  void invoke(_PlayPauseIntent intent) => intent.handler();
}

class _PlayPauseIntent extends Intent {
  const _PlayPauseIntent(this.handler);

  final VoidCallback handler;
}
