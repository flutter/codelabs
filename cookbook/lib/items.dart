// Copyright 2020, the Flutter project authors. Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'package:flutter/material.dart';
import 'examples/cupertino_download_button.dart';
import 'examples/drag_and_drop.dart';
import 'examples/expandable_fab.dart';
import 'examples/gradient_bubbles.dart';
import 'examples/instagram_filter.dart';
import 'examples/parallax.dart';
import 'examples/staggered_animation.dart';
import 'examples/typing_indicator.dart';
import 'examples/ui_loading_animation.dart';

final items = <CookbookItem>[
  CookbookItem(
    name: 'Parallax Scrolling',
    type: 'Scrolling',
    recommendation: Recommendation.yes,
    builder: (_) => const Scaffold(
        body: Center(child: ExampleParallax()), backgroundColor: darkBlue),
    path: 'parallax',
  ),
  CookbookItem(
    name: 'Gradient Bubbles',
    type: 'Transition',
    recommendation: Recommendation.yes,
    builder: (_) => const ExampleGradientBubbles(),
    path: 'gradient',
  ),
  CookbookItem(
    name: 'Download Button',
    type: 'Button',
    recommendation: Recommendation.yes,
    builder: (_) => const ExampleCupertinoDownloadButton(),
    path: 'download',
  ),
  CookbookItem(
    name: 'Instagram Camera Buttons',
    type: 'Button',
    recommendation: Recommendation.yes,
    builder: (_) => const ExampleInstagramFilterSelection(),
    path: 'instagram',
  ),
  CookbookItem(
    name: 'Order Food Draggable',
    type: 'UI Pattern',
    recommendation: Recommendation.yes,
    builder: (_) => const ExampleDragAndDrop(),
    path: 'draganddrop',
  ),
  CookbookItem(
    name: 'Expandable FAB',
    type: 'Button',
    recommendation: Recommendation.yes,
    builder: (_) => const ExampleExpandableFab(),
    path: 'expandablefab',
  ),
  CookbookItem(
    name: 'Staggered Animation',
    type: 'Transition',
    recommendation: Recommendation.yes,
    builder: (_) => const ExampleStaggeredAnimations(),
    path: 'staggered',
  ),
  CookbookItem(
    name: 'Is Typing Animation',
    type: 'Animation',
    recommendation: Recommendation.yes,
    builder: (_) => const ExampleIsTyping(),
    path: 'typing',
  ),
  CookbookItem(
    name: 'UI Loading Animations',
    type: 'Utility',
    recommendation: Recommendation.maybe,
    builder: (_) => const ExampleUiLoadingAnimation(),
    path: 'uiload',
  ),
];

class CookbookItem {
  CookbookItem({
    required this.name,
    required this.type,
    required this.recommendation,
    required this.builder,
    required this.path,
  });

  final String name;
  final String type;
  final String path;
  final Recommendation recommendation;
  final WidgetBuilder builder;
}

enum Recommendation { yes, maybe, no }
