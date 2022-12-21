// Copyright 2022 The Flutter Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart' as go;
import 'package:universal_platform/universal_platform.dart';

import '../playback/bloc/bloc.dart';
import '../router.dart' as router;
import 'adaptive_navigation.dart';
import 'views.dart';

class RootLayout extends StatelessWidget {
  const RootLayout({
    super.key,
    required this.child,
    required this.currentIndex,
  });

  final Widget child;
  final int currentIndex;
  static const _switcherKey = ValueKey('switcherKey');
  static const _navigationRailKey = ValueKey('navigationRailKey');

  @override
  Widget build(BuildContext context) {
    final bloc = BlocProvider.of<PlaybackBloc>(context);
    return BlocBuilder<PlaybackBloc, PlaybackState>(
      bloc: bloc,
      builder: (context, state) => LayoutBuilder(builder: (context, dimens) {
        void onSelected(int index) {
          final destination = router.destinations[index];
          go.GoRouter.of(context).go(destination.route);
        }

        final current = state.songWithProgress;
        return AdaptiveNavigation(
          key: _navigationRailKey,
          destinations: router.destinations
              .map((e) => NavigationDestination(
                    icon: e.icon,
                    label: e.label,
                  ))
              .toList(),
          selectedIndex: currentIndex,
          onDestinationSelected: onSelected,
          child: Column(
            children: [
              Expanded(
                child: _Switcher(
                  key: _switcherKey,
                  child: child,
                ),
              ),
              if (current != null) const BottomBar(),
            ],
          ),
        );
      }),
    );
  }
}

class _Switcher extends StatelessWidget {
  final Widget child;

  const _Switcher({
    required this.child,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return UniversalPlatform.isDesktop
        ? child
        : AnimatedSwitcher(
            key: key,
            duration: const Duration(milliseconds: 200),
            switchInCurve: Curves.easeInOut,
            switchOutCurve: Curves.easeInOut,
            child: child,
          );
  }
}
