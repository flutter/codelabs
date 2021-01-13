import 'package:flutter/widgets.dart';
import 'package:vgv_flutter_cookbook/examples/cupertino_download_button.dart';
// import 'package:vgv_flutter_cookbook/examples/drag_and_drop.dart';
import 'package:vgv_flutter_cookbook/examples/expandable_fab.dart';
import 'package:vgv_flutter_cookbook/examples/gradient_bubbles.dart';
// import 'package:vgv_flutter_cookbook/examples/hero_transitions.dart';
// import 'package:vgv_flutter_cookbook/examples/instagram_filter.dart';
// import 'package:vgv_flutter_cookbook/examples/is_typing_animation.dart';
// import 'package:vgv_flutter_cookbook/examples/nested_nav.dart';
// import 'package:vgv_flutter_cookbook/examples/parallax.dart';
// import 'package:vgv_flutter_cookbook/examples/staggered_animation.dart';
// import 'package:vgv_flutter_cookbook/examples/ui_loading_animation.dart';

final items = <CookbookItem>[
  // @formatter:off
  // CookbookItem('Parallax Scrolling',              'Scrolling',  Recommendation.yes, (_) => const ExampleParallax()),
  // CookbookItem('Nested Navigation',               'Progress',   Recommendation.yes, (_) => const OnboardingFlow()),
  CookbookItem('Gradient Bubbles',                'Transition', Recommendation.yes, (_) => const ExampleGradientBubbles()),
  CookbookItem('Download Button',                 'Button',     Recommendation.yes, (_) => const ExampleCupertinoDownloadButton()),
  // CookbookItem('Instagram Camera Buttons',        'Button',     Recommendation.yes, (_) => const ExampleInstagramFilterSelection()),
  // CookbookItem('Split Food Draggable',            'UI Pattern', Recommendation.yes, (_) => const ExampleDragAndDrop()),
  CookbookItem('Expandable FAB',                  'Button',     Recommendation.yes, (_) => const ExampleExpandableFab()),
  // CookbookItem('Staggered Animation',             'Transition', Recommendation.yes, (_) => const ExampleStaggeredAnimations()),
  // CookbookItem('Is Typing Animation',             'Animation',  Recommendation.yes, (_) => const ExampleIsTyping()),
  // CookbookItem('Advanced Hero Animation',         'Transition', Recommendation.yes, (_) => const ExampleHeroTransition()),
  // CookbookItem('Animated Accordion',              'UI Pattern', Recommendation.yes),

  // CookbookItem('Wallet Cards',                    'UI Pattern', Recommendation.maybe),
  // CookbookItem('Accelerometer Example',           'Utility',    Recommendation.maybe),
  // CookbookItem('Custom Painter / Equalizer',      'Utility',    Recommendation.maybe),
  // CookbookItem('UI Loading Animations',           'Utility',    Recommendation.maybe, (_) => const ExampleUiLoadingAnimation()),
  // CookbookItem('Perspective Carousel',            'Carousel',   Recommendation.maybe),
  // CookbookItem('Swipe to Do X',                   'Animation',  Recommendation.maybe),
  // CookbookItem('Gooey Swipe',                     'Animation',  Recommendation.maybe),
  // CookbookItem('Vertical Horizontal Cards',       'Carousel',   Recommendation.maybe),
  // CookbookItem('Progress Ring',                   'Animation',  Recommendation.maybe),
  // @formatter:on
];

class CookbookItem {
  CookbookItem(this.name, this.type, this.recommendation, [this.builder]);

  final String name;
  final String type;
  final Recommendation recommendation;
  final WidgetBuilder? builder;
}

enum Recommendation {
  yes,
  maybe,
  no,
}
