// Copyright 2023 The Flutter Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:extra_alignments/extra_alignments.dart';
import 'package:flextras/flextras.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:focusable_control_builder/focusable_control_builder.dart';
import 'package:gap/gap.dart';

import '../assets.dart';
import '../common/ui_scaler.dart';
import '../styles.dart';

typedef DifficultyPressed = void Function(int difficulty);
typedef DifficultyFocused = void Function(int? difficulty);

class TitleScreenUi extends StatelessWidget {
  const TitleScreenUi({
    super.key,
    required this.difficulty,
    required this.onDifficultyPressed,
    required this.onDifficultyFocused,
    required this.orbColor,
  });

  final int difficulty;
  final DifficultyPressed onDifficultyPressed;
  final DifficultyFocused onDifficultyFocused;
  final Color orbColor;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 50),
      child: Stack(
        children: [
          /// Title Text
          const TopLeft(
            child: UiScaler(
              alignment: Alignment.topLeft,
              child: _TitleText(),
            ),
          ),

          /// Difficulty Btns
          BottomLeft(
            child: UiScaler(
              alignment: Alignment.bottomLeft,
              child: _DifficultyButtons(
                difficulty: difficulty,
                onDifficultyPressed: onDifficultyPressed,
                onDifficultyFocused: onDifficultyFocused,
              ),
            ),
          ),

          /// StartBtn
          BottomRight(
            child: UiScaler(
              alignment: Alignment.bottomRight,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 20, right: 40),
                child: _StartButton(orbColor: orbColor),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _TitleText extends StatelessWidget {
  const _TitleText();

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Gap(20),
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Transform.translate(
              offset: Offset(-(TextStyles.h1.letterSpacing! * .5), 0),
              child: Text('OUTPOST', style: TextStyles.h1),
            ),
            Image.asset(AssetPaths.titleSelectedLeft, height: 65),
            Text('57', style: TextStyles.h2),
            Image.asset(AssetPaths.titleSelectedRight, height: 65),
          ],
        ).animate().fadeIn(delay: .5.seconds, duration: .7.seconds),
        Text('THE LAST STAND', style: TextStyles.h3).animate().fadeIn(
              delay: .7.seconds,
              duration: .7.seconds,
            ),
      ],
    );
  }
}

class _DifficultyButtons extends StatelessWidget {
  const _DifficultyButtons({
    required this.difficulty,
    required this.onDifficultyPressed,
    required this.onDifficultyFocused,
  });

  final int difficulty;
  final DifficultyPressed onDifficultyPressed;
  final DifficultyFocused onDifficultyFocused;

  @override
  Widget build(BuildContext context) {
    return SeparatedColumn(
      separatorBuilder: () => const Gap(10),
      mainAxisSize: MainAxisSize.min,
      children: [
        _DifficultyButton(
          label: 'Casual',
          selected: difficulty == 0,
          onPressed: () => onDifficultyPressed(0),
          onHover: (over) => onDifficultyFocused(over ? 0 : null),
        )
            .animate()
            .fadeIn(delay: 1.seconds, duration: .35.seconds)
            .slide(begin: const Offset(0, .2)),
        _DifficultyButton(
          label: 'Normal',
          selected: difficulty == 1,
          onPressed: () => onDifficultyPressed(1),
          onHover: (over) => onDifficultyFocused(over ? 1 : null),
        )
            .animate()
            .fadeIn(delay: 1.2.seconds, duration: .35.seconds)
            .slide(begin: const Offset(0, .2)),
        _DifficultyButton(
          label: 'Hardcore',
          selected: difficulty == 2,
          onPressed: () => onDifficultyPressed(2),
          onHover: (over) => onDifficultyFocused(over ? 2 : null),
        )
            .animate()
            .fadeIn(delay: 1.4.seconds, duration: .35.seconds)
            .slide(begin: const Offset(0, .2)),
        const Gap(20),
      ],
    );
  }
}

class _StartButton extends StatefulWidget {
  const _StartButton({required this.orbColor});
  final Color orbColor;

  @override
  State<_StartButton> createState() => _StartButtonState();
}

class _StartButtonState extends State<_StartButton> {
  AnimationController? _btnAnim;
  bool _wasHovered = false;

  @override
  Widget build(BuildContext context) {
    return FocusableControlBuilder(
      cursor: SystemMouseCursors.click,
      builder: (_, state) {
        if ((state.isHovered || state.isFocused) &&
            !_wasHovered &&
            _btnAnim?.status != AnimationStatus.forward) {
          _btnAnim?.forward(from: 0);
        }
        _wasHovered = (state.isHovered || state.isFocused);
        return SizedBox(
          width: 520,
          height: 100,
          child: Stack(
            children: [
              Positioned.fill(child: Image.asset(AssetPaths.titleStartBtn)),
              if (state.isHovered || state.isFocused) ...[
                Positioned.fill(
                    child: Image.asset(AssetPaths.titleStartBtnHover)),
              ],
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text('START MISSION',
                        style: TextStyles.btn
                            .copyWith(fontSize: 24, letterSpacing: 18)),
                  ],
                ),
              ),
            ],
          )
              .animate(autoPlay: false, onInit: (c) => _btnAnim = c)
              .shimmer(duration: .7.seconds, color: Colors.black),
        ).animate().fadeIn(delay: 2.seconds).slide(begin: const Offset(0, .2));
      },
    );
  }
}

class _DifficultyButton extends StatelessWidget {
  const _DifficultyButton({
    required this.selected,
    required this.onPressed,
    required this.onHover,
    required this.label,
  });
  final String label;
  final bool selected;
  final VoidCallback onPressed;
  final void Function(bool hasFocus) onHover;

  @override
  Widget build(BuildContext context) {
    return FocusableControlBuilder(
      onPressed: onPressed,
      onHoverChanged: (_, state) => onHover.call(state.isHovered),
      cursor: SystemMouseCursors.click,
      builder: (_, state) {
        return SizedBox(
          width: 250,
          height: 60,
          child: Stack(
            children: [
              /// Bg with fill and outline
              AnimatedOpacity(
                opacity:
                    (!selected && (state.isHovered || state.isFocused)) ? 1 : 0,
                duration: .3.seconds,
                child: Container(
                  decoration: BoxDecoration(
                    color: const Color(0xFF00D1FF).withOpacity(.1),
                    border: Border.all(color: Colors.white, width: 5),
                  ),
                ),
              ),

              if (state.isHovered || state.isFocused) ...[
                Container(
                  decoration: BoxDecoration(
                    color: const Color(0xFF00D1FF).withOpacity(.1),
                  ),
                ),
              ],

              /// cross-hairs (selected state)
              if (selected) ...[
                CenterLeft(
                  child: Image.asset(AssetPaths.titleSelectedLeft),
                ),
                CenterRight(
                  child: Image.asset(AssetPaths.titleSelectedRight),
                ),
              ],

              /// Label
              Center(
                child: Text(label.toUpperCase(), style: TextStyles.btn),
              ),
            ],
          ),
        );
      },
    );
  }
}
