// Copyright 2022 The Flutter Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'dart:ui';

import 'package:flutter/material.dart';
import '../animations.dart';

class ListDetailTransition extends StatefulWidget {
  const ListDetailTransition({
    super.key,
    required this.animation,
    required this.one,
    required this.two,
  });

  final Animation<double> animation;
  final Widget one;
  final Widget two;

  @override
  State<ListDetailTransition> createState() => _ListDetailTransitionState();
}

class _ListDetailTransitionState extends State<ListDetailTransition> {
  Animation<double> widthAnimation = const AlwaysStoppedAnimation(0);
  late final Animation<double> sizeAnimation =
      SizeAnimation(parent: widget.animation);
  late final Animation<Offset> offsetAnimation = Tween<Offset>(
    begin: const Offset(1, 0),
    end: Offset.zero,
  ).animate(OffsetAnimation(parent: sizeAnimation));
  double currentFlexFactor = 0;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    // When the app's width is < 800, widgets one and two get 1/2 of
    // the available width, As the app gets wider, the allocation
    // gradually changes to 1/3 and 2/3 for widgets one and two. When
    // the window is wider than 1600, the allocation changes to 1/4  3/4.
    final double width = MediaQuery.of(context).size.width;
    double nextFlexFactor = 1000;
    if (width >= 800 && width < 1200) {
      nextFlexFactor = lerpDouble(1000, 2000, (width - 800) / 400)!;
    } else if (width >= 1200 && width < 1600) {
      nextFlexFactor = lerpDouble(2000, 3000, (width - 1200) / 400)!;
    } else if (width > 1600) {
      nextFlexFactor = 3000;
    }

    // Continue along the current animation curve if the
    // destionation flex factor has not changed.
    if (nextFlexFactor == currentFlexFactor) {
      return;
    }

    if (currentFlexFactor == 0) {
      widthAnimation =
          Tween<double>(begin: 0, end: nextFlexFactor).animate(sizeAnimation);
    } else {
      final TweenSequence<double> sequence = TweenSequence([
        if (sizeAnimation.value > 0) ...[
          TweenSequenceItem(
            tween: Tween(begin: 0, end: widthAnimation.value),
            weight: sizeAnimation.value,
          ),
        ],
        if (sizeAnimation.value < 1) ...[
          TweenSequenceItem(
            tween: Tween(begin: widthAnimation.value, end: nextFlexFactor),
            weight: 1 - sizeAnimation.value,
          ),
        ],
      ]);

      widthAnimation = sequence.animate(sizeAnimation);
    }

    currentFlexFactor = nextFlexFactor;
  }

  @override
  Widget build(BuildContext context) {
    return widthAnimation.value.toInt() == 0
        ? widget.one
        : Row(
            children: [
              Flexible(
                flex: 1000,
                child: widget.one,
              ),
              Flexible(
                flex: widthAnimation.value.toInt(),
                child: FractionalTranslation(
                  translation: offsetAnimation.value,
                  child: widget.two,
                ),
              ),
            ],
          );
  }
}
