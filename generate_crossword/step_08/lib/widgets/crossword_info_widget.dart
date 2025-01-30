// Copyright 2024 The Flutter Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../providers.dart';
import '../utils.dart';
import 'ticker_builder.dart';

class CrosswordInfoWidget extends ConsumerWidget {
  const CrosswordInfoWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final size = ref.watch(sizeProvider);
    final displayInfo = ref.watch(displayInfoProvider);
    final workerCount = ref.watch(workerCountProvider).label;
    final startTime = ref.watch(startTimeProvider);
    final endTime = ref.watch(endTimeProvider);
    final remaining = ref.watch(expectedRemainingTimeProvider);

    return Align(
      alignment: Alignment.bottomRight,
      child: Padding(
        padding: const EdgeInsets.only(right: 32.0, bottom: 32.0),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: ColoredBox(
            color: Theme.of(context).colorScheme.onPrimary.withAlpha(230),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
              child: DefaultTextStyle(
                style: TextStyle(
                  fontSize: 16,
                  color: Theme.of(context).colorScheme.primary,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _CrosswordInfoRichText(
                      label: 'Grid Size',
                      value: '${size.width} x ${size.height}',
                    ),
                    _CrosswordInfoRichText(
                      label: 'Words in grid',
                      value: displayInfo.wordsInGridCount,
                    ),
                    _CrosswordInfoRichText(
                      label: 'Candidate words',
                      value: displayInfo.candidateWordsCount,
                    ),
                    _CrosswordInfoRichText(
                      label: 'Locations to explore',
                      value: displayInfo.locationsToExploreCount,
                    ),
                    _CrosswordInfoRichText(
                      label: 'Known bad locations',
                      value: displayInfo.knownBadLocationsCount,
                    ),
                    _CrosswordInfoRichText(
                      label: 'Grid filled',
                      value: displayInfo.gridFilledPercentage,
                    ),
                    _CrosswordInfoRichText(
                      label: 'Max worker count',
                      value: workerCount,
                    ),
                    switch ((startTime, endTime)) {
                      (null, _) => _CrosswordInfoRichText(
                        label: 'Time elapsed',
                        value: 'Not started yet',
                      ),
                      (DateTime start, null) => TickerBuilder(
                        builder:
                            (context) => _CrosswordInfoRichText(
                              label: 'Time elapsed',
                              value: DateTime.now().difference(start).formatted,
                            ),
                      ),
                      (DateTime start, DateTime end) => _CrosswordInfoRichText(
                        label: 'Completed in',
                        value: end.difference(start).formatted,
                      ),
                    },
                    if (startTime != null && endTime == null)
                      _CrosswordInfoRichText(
                        label: 'Est. remaining',
                        value: remaining.formatted,
                      ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class _CrosswordInfoRichText extends StatelessWidget {
  final String label;
  final String value;

  const _CrosswordInfoRichText({required this.label, required this.value});

  @override
  Widget build(BuildContext context) => RichText(
    text: TextSpan(
      children: [
        TextSpan(text: '$label ', style: DefaultTextStyle.of(context).style),
        TextSpan(
          text: value,
          style: DefaultTextStyle.of(
            context,
          ).style.copyWith(fontWeight: FontWeight.bold),
        ),
      ],
    ),
  );
}
