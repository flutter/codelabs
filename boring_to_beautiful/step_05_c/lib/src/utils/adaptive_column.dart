// Copyright 2020, the Flutter project authors. Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'package:flutter/material.dart';

import 'adaptive_breakpoints.dart';
import 'adaptive_container.dart';

/// The [AdaptiveColumn] follows the Material guideline for responsive grids.
///
/// https://material.io/design/layout/responsive-layout-grid.html#columns-gutters-and-margins
///
/// This widget intigrates with the [AdaptiveContainer] widget.
/// The [AdaptiveContainer] widget has a parameter called columns which represents
/// the amount of columns it should take according to the breakpoints package.
///
/// So if the user has 6 adaptive container and each container represents two columns
/// then the 6 adaptive container would all fit within one Row on a extra large screen
/// because extra large screens have 12 columns per row.
///
/// Learn more about the breakpoint system:
///
/// https://material.io/design/layout/responsive-layout-grid.html#breakpoints
class AdaptiveColumn extends StatelessWidget {
  /// Creates a vertical array of children. Going from left to right and then
  /// top to bottom.
  ///
  /// This class has a responsive layout that is based of the adaptive breakpoints
  /// package. The user puts in [AdaptiveContainer] widgets as children and each
  /// child has a columm parameter. This represents the amount of columns it takes
  /// up in its current row. So if the child has three [AdaptiveContainer] widgets
  /// with each column set to 4 than on an extra-small screen each container would use up
  /// the entire width of the device. On an extra-large screen the three containers
  /// would fit across the row. This is because extra large devices allow up to
  /// 12 columns to fit within the space.
  ///
  /// To see an example visit:
  /// https://adaptive-components.web.app/#/
  const AdaptiveColumn({
    this.gutter,
    this.margin,
    required this.children,
    super.key,
  }) : assert(margin == null || margin >= 0),
       assert(gutter == null || gutter >= 0);

  /// Empty space at the left and right of this widget.
  ///
  /// By default the margins will be set differently on different devices. This
  /// double value will be dependent of the breakpoint entry of the current screen.
  ///
  /// Learn more at https://material.io/design/layout/responsive-layout-grid.html#breakpoints
  final double? margin;

  /// Represents the space between children.
  ///
  /// By default the gutter will be set differently on different devices. This
  /// double value will be dependent of the breakpoint entry of the current screen.
  ///
  /// Learn more at https://material.io/design/layout/responsive-layout-grid.html#breakpoints
  final double? gutter;

  /// The List of [AdaptiveContainer]. Adaptive container neeeds to be used
  /// because the widget has a columnSpan parameter. This parameter represents the
  /// amount of columns this widget should incompass.
  ///
  /// By default it is set to 1.
  final List<AdaptiveContainer> children;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        BreakpointSystemEntry entry = getBreakpointEntry(context);
        final double effectiveMargin = margin ?? entry.margin;
        final double effectiveGutter = gutter ?? entry.gutter;

        return Container(
          margin: EdgeInsets.symmetric(horizontal: effectiveMargin),
          constraints: BoxConstraints(
            minWidth: entry.adaptiveWindowType.widthRangeValues.start,
            maxWidth: entry.adaptiveWindowType.widthRangeValues.end,
          ),
          child: Wrap(
            runSpacing: 8.0,
            children: () {
              int currentColumns = 0;
              int totalGutters = 0;
              List<Widget> children = [];
              final List<AdaptiveContainer> row = [];

              for (AdaptiveContainer child in this.children) {
                // The if statement checks if the adaptiveContainer child fits
                // within the adaptive constraints.
                if (child.constraints.withinAdaptiveConstraint(context)) {
                  row.add(child);
                  currentColumns += child.columnSpan;

                  if (currentColumns < entry.columns) {
                    totalGutters++;
                  } else {
                    if (currentColumns > entry.columns) {
                      totalGutters--;
                    }
                    int rowGutters = 0;
                    for (AdaptiveContainer rowItem in row) {
                      // Periodic width is the width of 1 column + 1 gutter.
                      double periodicWidth =
                          (MediaQuery.sizeOf(context).width -
                              effectiveMargin * 2 +
                              effectiveGutter) /
                          entry.columns;

                      // For a row item with a column span of k, its width is
                      // k * column + (k - 1) * gutter, which equals
                      // k * (column + gutter) - gutter, which is
                      // k * periodicWidth - gutter.
                      double maxWidth =
                          periodicWidth * rowItem.columnSpan - effectiveGutter;
                      children.add(
                        ConstrainedBox(
                          constraints: BoxConstraints(
                            minWidth: maxWidth,
                            maxWidth: maxWidth,
                          ),
                          child: rowItem,
                        ),
                      );

                      if (rowGutters < totalGutters && 1 < row.length) {
                        children.add(
                          SizedBox(width: effectiveGutter, child: Container()),
                        );
                        rowGutters++;
                      }
                    }
                    totalGutters = 0;
                    currentColumns = 0;
                    row.clear();
                  }
                }
              }
              return children;
            }(),
          ),
        );
      },
    );
  }
}
