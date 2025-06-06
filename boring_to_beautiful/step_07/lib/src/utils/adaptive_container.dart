// Copyright 2020, the Flutter project authors. Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'package:flutter/material.dart';

import 'adaptive_breakpoints.dart';

/// [AdaptiveContainer] lets you create a [Container] with adaptive constraints.
///
/// The AdaptiveContainer does everything a normal container does but with
/// adaptive constraints. For more information go to one of the links below.
///
/// https://api.flutter.dev/flutter/widgets/Container-class.html
/// https://material.io/design/layout/responsive-layout-grid.html#breakpoints
///
/// This class is useful whenever you want a container to only be active in
/// certain [AdaptiveWindowType].
class AdaptiveContainer extends StatelessWidget {
  /// Creates a widget that combines common painting, positioning, and sizing widgets.
  ///
  /// The `color` and `decoration` arguments cannot both be supplied, since
  /// it would potentially result in the decoration drawing over the background
  /// color. To supply a decoration with a color, use `decoration:
  /// BoxDecoration(color: color)`.
  AdaptiveContainer({
    super.key,
    this.alignment,
    this.padding,
    this.color,
    this.decoration,
    this.foregroundDecoration,
    this.margin,
    this.transform,
    this.height,
    this.child,
    this.clipBehavior = Clip.none,
    constraints,
    this.columnSpan = 1,
  }) : assert(margin == null || margin.isNonNegative),
       assert(padding == null || padding.isNonNegative),
       assert(decoration == null || decoration.debugAssertIsValid()),
       assert(
         color == null || decoration == null,
         'Cannot provide both a color and a decoration\n'
         'To provide both, use "decoration: BoxDecoration(color: color)".',
       ) {
    this.constraints = constraints ?? const AdaptiveConstraints();
  }

  /// The [child] contained by the container.
  ///
  /// If null, and if the [constraints] are unbounded or also null, the
  /// container will expand to fill all available space in its parent, unless
  /// the parent provides unbounded constraints, in which case the container
  /// will attempt to be as small as possible.
  final Widget? child;

  /// Represents how height the container should be.
  final double? height;

  /// Creates constraints for adaptive windows.
  ///
  /// This is used by the builder to see what type of screen the user wants this
  /// [AdaptiveContainer] to fit within.
  late final AdaptiveConstraints constraints;

  /// columnSpan is used with [AdaptiveColumn] to represent
  /// the amount of columns that this widget will fill up within a certain [Flex]
  /// range.
  ///
  /// By default the columns will only represent one column space. If you want
  /// this content of this widget to be shown increase it. There can be at most
  /// 12 columns per flex range.
  ///
  /// Learn more by visiting the Material website:
  /// https://material.io/design/layout/responsive-layout-grid.html#breakpoints
  final int columnSpan;

  /// Align the [child] within the container.
  ///
  /// If non-null, the container will expand to fill its parent and position its
  /// child within itself according to the given value. If the incoming
  /// constraints are unbounded, then the child will be shrink-wrapped instead.
  ///
  /// Ignored if [child] is null.
  ///
  /// See also:
  ///
  ///  * [Alignment], a class with convenient constants typically used to
  ///    specify an [AlignmentGeometry].
  ///  * [AlignmentDirectional], like [Alignment] for specifying alignments
  ///    relative to text direction.
  final AlignmentGeometry? alignment;

  /// Empty space to inscribe inside the [decoration]. The [child], if any, is
  /// placed inside this padding.
  ///
  /// This padding is in addition to any padding inherent in the [decoration];
  /// see [Decoration.padding].
  final EdgeInsetsGeometry? padding;

  /// The color to paint behind the [child].
  ///
  /// This property should be preferred when the background is a simple color.
  /// For other cases, such as gradients or images, use the [decoration]
  /// property.
  ///
  /// If the [decoration] is used, this property must be null. A background
  /// color may still be painted by the [decoration] even if this property is
  /// null.
  final Color? color;

  /// The decoration to paint behind the [child].
  ///
  /// Use the [color] property to specify a simple solid color.
  ///
  /// The [child] is not clipped to the decoration. To clip a child to the shape
  /// of a particular [ShapeDecoration], consider using a [ClipPath] widget.
  final Decoration? decoration;

  /// The decoration to paint in front of the [child].
  final Decoration? foregroundDecoration;

  /// Empty space to surround the [decoration] and [child].
  final EdgeInsetsGeometry? margin;

  /// The transformation matrix to apply before painting the container.
  final Matrix4? transform;

  /// The clip behavior when [Container.decoration] has a clipPath.
  ///
  /// Defaults to [Clip.none].
  final Clip clipBehavior;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, boxConstraints) {
        if (constraints.withinAdaptiveConstraint(context)) {
          return Container(
            alignment: alignment,
            padding: padding,
            color: color,
            decoration: decoration,
            foregroundDecoration: foregroundDecoration,
            transform: transform,
            clipBehavior: clipBehavior,
            height: height,
            margin: margin,
            child: child,
          );
        } else {
          /// Since this container is not within the adaptive constraints.
          /// No widget must be returned but since you can't return no widget we
          /// are returning a [LimitedBox] which is a very efficent widget.
          return LimitedBox(
            maxWidth: 0.0,
            maxHeight: 0.0,
            child: ConstrainedBox(constraints: const BoxConstraints.expand()),
          );
        }
      },
    );
  }
}

/// Used to see if a range of [AdaptiveWindowType] should be shown in the window.
/// If the user sets one of the variables below to true than that window type
/// should be shown within the [AdaptiveContainer].
class AdaptiveConstraints {
  const AdaptiveConstraints({
    this.xsmall = true,
    this.small = true,
    this.medium = true,
    this.large = true,
    this.xlarge = true,
  });

  const AdaptiveConstraints.xsmall({
    this.xsmall = true,
    this.small = false,
    this.medium = false,
    this.large = false,
    this.xlarge = false,
  });

  const AdaptiveConstraints.small({
    this.xsmall = false,
    this.small = true,
    this.medium = false,
    this.large = false,
    this.xlarge = false,
  });

  const AdaptiveConstraints.medium({
    this.xsmall = false,
    this.small = false,
    this.medium = true,
    this.large = false,
    this.xlarge = false,
  });

  const AdaptiveConstraints.large({
    this.xsmall = false,
    this.small = false,
    this.medium = false,
    this.large = true,
    this.xlarge = false,
  });

  const AdaptiveConstraints.xlarge({
    this.xsmall = false,
    this.small = false,
    this.medium = false,
    this.large = false,
    this.xlarge = true,
  });

  final bool xsmall;
  final bool small;
  final bool medium;
  final bool large;
  final bool xlarge;

  bool withinAdaptiveConstraint(BuildContext context) {
    AdaptiveWindowType currentEntry = getWindowType(context);

    switch (currentEntry) {
      case AdaptiveWindowType.xsmall:
        return xsmall;
      case AdaptiveWindowType.small:
        return small;
      case AdaptiveWindowType.medium:
        return medium;
      case AdaptiveWindowType.large:
        return large;
      case AdaptiveWindowType.xlarge:
        return xlarge;
      default:
        throw AssertionError('Unsupported AdaptiveWindowType');
    }
  }
}
