// Copyright 2020, the Flutter project authors. Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'adaptive_breakpoints.dart';

/// AdaptiveAppBar has a leading width of 72.0. Everything else is the same as
/// [AppBar].
class AdaptiveAppBar extends StatelessWidget implements PreferredSizeWidget {
  AdaptiveAppBar({
    super.key,
    this.leading,
    this.automaticallyImplyLeading = true,
    this.title,
    this.actions,
    this.flexibleSpace,
    this.bottom,
    this.elevation,
    this.shadowColor,
    this.shape,
    this.backgroundColor,
    this.iconThemeData,
    this.actionsIconThemeData,
    this.primary = true,
    this.centerTitle,
    this.excludeHeaderSemantics = false,
    this.titleSpacing = NavigationToolbar.kMiddleSpacing,
    this.toolbarOpacity = 1.0,
    this.bottomOpacity = 1.0,
    this.toolbarHeight,
    this.leadingWidth,
    this.toolbarTextStyle,
    this.titleTextStyle,
    this.systemOverlayStyle,
  }) : assert(elevation == null || elevation >= 0.0),
       preferredSize = Size.fromHeight(
         toolbarHeight ??
             kToolbarHeight + (bottom?.preferredSize.height ?? 0.0),
       );

  final Widget? leading;
  final bool automaticallyImplyLeading;
  final Widget? title;
  final List<Widget>? actions;
  final Widget? flexibleSpace;
  final PreferredSizeWidget? bottom;
  final double? elevation;
  final Color? shadowColor;
  final ShapeBorder? shape;
  final Color? backgroundColor;
  final IconThemeData? iconThemeData;
  final IconThemeData? actionsIconThemeData;
  final bool primary;
  final bool? centerTitle;
  final bool excludeHeaderSemantics;
  final double titleSpacing;
  final double toolbarOpacity;
  final double bottomOpacity;
  @override
  final Size preferredSize;
  final double? toolbarHeight;
  final double? leadingWidth;
  final TextStyle? toolbarTextStyle;
  final TextStyle? titleTextStyle;
  final SystemUiOverlayStyle? systemOverlayStyle;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      key: key,
      leading: leading,
      automaticallyImplyLeading: automaticallyImplyLeading,
      title: title,
      actions: actions,
      flexibleSpace: flexibleSpace,
      bottom: bottom,
      elevation: elevation,
      shadowColor: shadowColor,
      shape: shape,
      backgroundColor: backgroundColor,
      iconTheme: iconThemeData,
      actionsIconTheme: actionsIconThemeData,
      primary: primary,
      centerTitle: centerTitle,
      excludeHeaderSemantics: excludeHeaderSemantics,
      titleSpacing: titleSpacing,
      toolbarOpacity: toolbarOpacity,
      bottomOpacity: bottomOpacity,
      toolbarHeight: toolbarHeight,
      // TODO(https://github.com/material-foundation/flutter-packages/issues/320):
      // This needs to depend on whether the rail is showing or not.
      leadingWidth: getWindowType(context) == AdaptiveWindowType.medium
          ? 72.0
          : 56.0,
      toolbarTextStyle: toolbarTextStyle,
      titleTextStyle: titleTextStyle,
      systemOverlayStyle: systemOverlayStyle,
    );
  }
}
