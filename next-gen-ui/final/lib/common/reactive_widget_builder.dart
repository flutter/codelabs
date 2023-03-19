// Copyright 2023 The Flutter Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import 'ticking_builder.dart';

class ReactiveWidgetBuilder extends StatefulWidget {
  const ReactiveWidgetBuilder({
    super.key,
    required this.builder,
    this.useLocalMousePos = true,
  });
  final Widget Function(
      BuildContext context, double time, Offset mousePos, Size bounds) builder;
  final bool useLocalMousePos;
  @override
  State<ReactiveWidgetBuilder> createState() => _ReactiveWidgetBuilderState();
}

class _ReactiveWidgetBuilderState extends State<ReactiveWidgetBuilder> {
  Offset _mousePos = Offset.zero;
  void _handleMouseHover(PointerHoverEvent evt) {
    _mousePos = widget.useLocalMousePos ? evt.localPosition : evt.position;
  }

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
        onHover: _handleMouseHover,
        child: TickingBuilder(builder: (_, time) {
          return LayoutBuilder(builder: (context, constraints) {
            return widget.builder(
                context, time, _mousePos, constraints.biggest);
          });
        }));
  }
}
