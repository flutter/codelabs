// Copyright 2020, the Flutter project authors. Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:math' as math;

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import 'adaptive_breakpoints.dart';

typedef NavigationTypeResolver = NavigationType Function(BuildContext context);

// The navigation mechanism to configure the [Scaffold] with.
enum NavigationType {
  // Used to configure a [Scaffold] with a [BottomNavigationBar].
  bottom,

  // Used to configure a [Scaffold] with a [NavigationRail].
  rail,

  // Used to configure a [Scaffold] with a modal [Drawer].
  drawer,

  // Used to configure a [Scaffold] with an always open [Drawer].
  permanentDrawer,
}

/// Used to configure items or destinations in the various navigation
/// mechanism. For [BottomNavigationBar], see [BottomNavigationBarItem]. For
/// [NavigationRail], see [NavigationRailDestination]. For [Drawer], see
/// [ListTile].
class AdaptiveScaffoldDestination {
  final String title;
  final IconData icon;

  const AdaptiveScaffoldDestination({required this.title, required this.icon});
}

/// A widget that adapts to the current display size, displaying a [Drawer],
/// [NavigationRail], or [BottomNavigationBar]. Navigation destinations are
/// defined in the [destinations] parameter.
class AdaptiveNavigationScaffold extends StatelessWidget {
  const AdaptiveNavigationScaffold({
    super.key,
    this.appBar,
    required this.body,
    this.floatingActionButton,
    this.floatingActionButtonLocation,
    this.floatingActionButtonAnimator,
    this.persistentFooterButtons,
    this.endDrawer,
    this.bottomSheet,
    this.backgroundColor,
    this.resizeToAvoidBottomInset,
    this.primary = true,
    this.drawerDragStartBehavior = DragStartBehavior.start,
    this.extendBody = false,
    this.extendBodyBehindAppBar = false,
    this.drawerScrimColor,
    this.drawerEdgeDragWidth,
    this.drawerEnableOpenDragGesture = true,
    this.endDrawerEnableOpenDragGesture = true,
    required this.selectedIndex,
    required this.destinations,
    this.onDestinationSelected,
    this.navigationTypeResolver,
    this.drawerHeader,
    this.drawerFooter,
    this.fabInRail = true,
    this.includeBaseDestinationsInMenu = true,
    this.bottomNavigationOverflow = 5,
  });

  /// See [Scaffold.appBar].
  final PreferredSizeWidget? appBar;

  /// See [Scaffold.body].
  final Widget body;

  /// See [Scaffold.floatingActionButton].
  final FloatingActionButton? floatingActionButton;

  /// See [Scaffold.floatingActionButtonLocation].
  ///
  /// Ignored if [fabInRail] is true.
  final FloatingActionButtonLocation? floatingActionButtonLocation;

  /// See [Scaffold.floatingActionButtonAnimator].
  ///
  /// Ignored if [fabInRail] is true.
  final FloatingActionButtonAnimator? floatingActionButtonAnimator;

  /// See [Scaffold.persistentFooterButtons].
  final List<Widget>? persistentFooterButtons;

  /// See [Scaffold.endDrawer].
  final Widget? endDrawer;

  /// See [Scaffold.drawerScrimColor].
  final Color? drawerScrimColor;

  /// See [Scaffold.backgroundColor].
  final Color? backgroundColor;

  /// See [Scaffold.bottomSheet].
  final Widget? bottomSheet;

  /// See [Scaffold.resizeToAvoidBottomInset].
  final bool? resizeToAvoidBottomInset;

  /// See [Scaffold.primary].
  final bool primary;

  /// See [Scaffold.drawerDragStartBehavior].
  final DragStartBehavior drawerDragStartBehavior;

  /// See [Scaffold.extendBody].
  final bool extendBody;

  /// See [Scaffold.extendBodyBehindAppBar].
  final bool extendBodyBehindAppBar;

  /// See [Scaffold.drawerEdgeDragWidth].
  final double? drawerEdgeDragWidth;

  /// See [Scaffold.drawerEnableOpenDragGesture].
  final bool drawerEnableOpenDragGesture;

  /// See [Scaffold.endDrawerEnableOpenDragGesture].
  final bool endDrawerEnableOpenDragGesture;

  /// The index into [destinations] for the current selected
  /// [AdaptiveScaffoldDestination].
  final int selectedIndex;

  /// Defines the appearance of the items that are arrayed within the
  /// navigation.
  ///
  /// The value must be a list of two or more [AdaptiveScaffoldDestination]
  /// values.
  final List<AdaptiveScaffoldDestination> destinations;

  /// Called when one of the [destinations] is selected.
  ///
  /// The stateful widget that creates the adaptive scaffold needs to keep
  /// track of the index of the selected [AdaptiveScaffoldDestination] and call
  /// `setState` to rebuild the adaptive scaffold with the new [selectedIndex].
  final ValueChanged<int>? onDestinationSelected;

  /// Determines the navigation type that the scaffold uses.
  final NavigationTypeResolver? navigationTypeResolver;

  /// The leading item in the drawer when the navigation has a drawer.
  ///
  /// If null, then there is no header.
  final Widget? drawerHeader;

  /// The footer item in the drawer when the navigation has a drawer.
  ///
  /// If null, then there is no footer.
  final Widget? drawerFooter;

  /// Whether the [floatingActionButton] is inside or the rail or in the regular
  /// spot.
  ///
  /// If true, then [floatingActionButtonLocation] and
  /// [floatingActionButtonAnimation] are ignored.
  final bool fabInRail;

  /// Weather the overflow menu defaults to include overflow destinations and
  /// the overflow destinations.
  final bool includeBaseDestinationsInMenu;

  /// Maximum number of items to display in [bottomNavigationBar]
  final int bottomNavigationOverflow;

  NavigationType _defaultNavigationTypeResolver(BuildContext context) {
    if (_isLargeScreen(context)) {
      return NavigationType.permanentDrawer;
    } else if (_isMediumScreen(context)) {
      return NavigationType.rail;
    } else {
      return NavigationType.bottom;
    }
  }

  Drawer _defaultDrawer(List<AdaptiveScaffoldDestination> destinations) {
    return Drawer(
      child: ListView(
        children: [
          if (drawerHeader != null) drawerHeader!,
          for (int i = 0; i < destinations.length; i++)
            ListTile(
              leading: Icon(destinations[i].icon),
              title: Text(destinations[i].title),
              onTap: () {
                onDestinationSelected?.call(i);
              },
            ),
          const Spacer(),
          if (drawerFooter != null) drawerFooter!,
        ],
      ),
    );
  }

  Widget _buildBottomNavigationScaffold() {
    final bottomDestinations = destinations.sublist(
      0,
      math.min(destinations.length, bottomNavigationOverflow),
    );
    final drawerDestinations = destinations.length > bottomNavigationOverflow
        ? destinations.sublist(
            includeBaseDestinationsInMenu ? 0 : bottomNavigationOverflow,
          )
        : <AdaptiveScaffoldDestination>[];
    return Scaffold(
      key: key,
      body: body,
      appBar: appBar,
      drawer: drawerDestinations.isEmpty
          ? null
          : _defaultDrawer(drawerDestinations),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          for (final destination in bottomDestinations)
            BottomNavigationBarItem(
              icon: Icon(destination.icon),
              label: destination.title,
            ),
        ],
        currentIndex: selectedIndex,
        onTap: onDestinationSelected ?? (_) {},
        type: BottomNavigationBarType.fixed,
      ),
      floatingActionButton: floatingActionButton,
    );
  }

  Widget _buildNavigationRailScaffold() {
    const int railDestinationsOverflow = 7;
    final railDestinations = destinations.sublist(
      0,
      math.min(destinations.length, railDestinationsOverflow),
    );
    final drawerDestinations = destinations.length > railDestinationsOverflow
        ? destinations.sublist(
            includeBaseDestinationsInMenu ? 0 : railDestinationsOverflow,
          )
        : <AdaptiveScaffoldDestination>[];
    return Scaffold(
      key: key,
      appBar: appBar,
      drawer: drawerDestinations.isEmpty
          ? null
          : _defaultDrawer(drawerDestinations),
      body: Row(
        children: [
          NavigationRail(
            leading: fabInRail ? floatingActionButton : null,
            destinations: [
              for (final destination in railDestinations)
                NavigationRailDestination(
                  icon: Icon(destination.icon),
                  label: Text(destination.title),
                ),
            ],
            selectedIndex: selectedIndex,
            onDestinationSelected: onDestinationSelected ?? (_) {},
          ),
          const VerticalDivider(width: 1, thickness: 1),
          Expanded(child: body),
        ],
      ),
      floatingActionButton: fabInRail ? null : floatingActionButton,
      floatingActionButtonLocation: floatingActionButtonLocation,
      floatingActionButtonAnimator: floatingActionButtonAnimator,
      persistentFooterButtons: persistentFooterButtons,
      endDrawer: endDrawer,
      bottomSheet: bottomSheet,
      backgroundColor: backgroundColor,
      resizeToAvoidBottomInset: resizeToAvoidBottomInset,
      primary: true,
      drawerDragStartBehavior: drawerDragStartBehavior,
      extendBody: extendBody,
      extendBodyBehindAppBar: extendBodyBehindAppBar,
      drawerScrimColor: drawerScrimColor,
      drawerEdgeDragWidth: drawerEdgeDragWidth,
      drawerEnableOpenDragGesture: drawerEnableOpenDragGesture,
      endDrawerEnableOpenDragGesture: endDrawerEnableOpenDragGesture,
    );
  }

  Widget _buildNavigationDrawerScaffold() {
    return Scaffold(
      key: key,
      body: body,
      appBar: appBar,
      drawer: Drawer(
        child: Column(
          children: [
            if (drawerHeader != null) drawerHeader!,
            for (final destination in destinations)
              ListTile(
                leading: Icon(destination.icon),
                title: Text(destination.title),
                selected: destinations.indexOf(destination) == selectedIndex,
                onTap: () => _destinationTapped(destination),
              ),
            const Spacer(),
            if (drawerFooter != null) drawerFooter!,
          ],
        ),
      ),
      floatingActionButton: floatingActionButton,
      floatingActionButtonLocation: floatingActionButtonLocation,
      floatingActionButtonAnimator: floatingActionButtonAnimator,
      persistentFooterButtons: persistentFooterButtons,
      endDrawer: endDrawer,
      bottomSheet: bottomSheet,
      backgroundColor: backgroundColor,
      resizeToAvoidBottomInset: resizeToAvoidBottomInset,
      primary: true,
      drawerDragStartBehavior: drawerDragStartBehavior,
      extendBody: extendBody,
      extendBodyBehindAppBar: extendBodyBehindAppBar,
      drawerScrimColor: drawerScrimColor,
      drawerEdgeDragWidth: drawerEdgeDragWidth,
      drawerEnableOpenDragGesture: drawerEnableOpenDragGesture,
      endDrawerEnableOpenDragGesture: endDrawerEnableOpenDragGesture,
    );
  }

  Widget _buildPermanentDrawerScaffold() {
    return Row(
      children: [
        Drawer(
          child: Column(
            children: [
              if (drawerHeader != null) drawerHeader!,
              for (final destination in destinations)
                ListTile(
                  leading: Icon(destination.icon),
                  title: Text(destination.title),
                  selected: destinations.indexOf(destination) == selectedIndex,
                  onTap: () => _destinationTapped(destination),
                ),
              const Spacer(),
              if (drawerFooter != null) drawerFooter!,
            ],
          ),
        ),
        const VerticalDivider(width: 1, thickness: 1),
        Expanded(
          child: Scaffold(
            key: key,
            appBar: appBar,
            body: body,
            floatingActionButton: floatingActionButton,
            floatingActionButtonLocation: floatingActionButtonLocation,
            floatingActionButtonAnimator: floatingActionButtonAnimator,
            persistentFooterButtons: persistentFooterButtons,
            endDrawer: endDrawer,
            bottomSheet: bottomSheet,
            backgroundColor: backgroundColor,
            resizeToAvoidBottomInset: resizeToAvoidBottomInset,
            primary: true,
            drawerDragStartBehavior: drawerDragStartBehavior,
            extendBody: extendBody,
            extendBodyBehindAppBar: extendBodyBehindAppBar,
            drawerScrimColor: drawerScrimColor,
            drawerEdgeDragWidth: drawerEdgeDragWidth,
            drawerEnableOpenDragGesture: drawerEnableOpenDragGesture,
            endDrawerEnableOpenDragGesture: endDrawerEnableOpenDragGesture,
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    final NavigationTypeResolver navigationTypeResolver =
        this.navigationTypeResolver ?? _defaultNavigationTypeResolver;
    final navigationType = navigationTypeResolver(context);
    switch (navigationType) {
      case NavigationType.bottom:
        return _buildBottomNavigationScaffold();
      case NavigationType.rail:
        return _buildNavigationRailScaffold();
      case NavigationType.drawer:
        return _buildNavigationDrawerScaffold();
      case NavigationType.permanentDrawer:
        return _buildPermanentDrawerScaffold();
    }
  }

  void _destinationTapped(AdaptiveScaffoldDestination destination) {
    final index = destinations.indexOf(destination);
    if (index != selectedIndex) {
      onDestinationSelected?.call(index);
    }
  }
}

bool _isLargeScreen(BuildContext context) =>
    getWindowType(context) >= AdaptiveWindowType.large;
bool _isMediumScreen(BuildContext context) =>
    getWindowType(context) == AdaptiveWindowType.medium;
