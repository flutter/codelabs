// Copyright 2022 The Flutter Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';

class AdaptiveNavigation extends StatelessWidget {
  const AdaptiveNavigation({
    super.key,
    required this.destinations,
    required this.selectedIndex,
    required this.onDestinationSelected,
    required this.child,
  });

  final List<NavigationDestination> destinations;
  final int selectedIndex;
  final void Function(int index) onDestinationSelected;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, dimens) {
        // Tablet Layout
        // Add maxWidth constraint check
        return Scaffold(
          body: Row(
            children: [
              NavigationRail(
                extended: dimens.maxWidth >= 800,
                minExtendedWidth: 180,
                destinations: destinations
                    .map((e) => NavigationRailDestination(
                          icon: e.icon,
                          label: Text(e.label),
                        ))
                    .toList(),
                selectedIndex: selectedIndex,
                onDestinationSelected: onDestinationSelected,
              ),
              Expanded(child: child),
            ],
          ),
        );
        // Add closing curly bracket

        // Add return for mobile layout
      },
    );
  }
}
