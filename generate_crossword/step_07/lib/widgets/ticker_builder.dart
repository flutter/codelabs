// Copyright 2024 The Flutter Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

/// A Builder widget that invokes its [builder] function on every animation frame.
class TickerBuilder extends StatefulWidget {
  const TickerBuilder({super.key, required this.builder});
  final Widget Function(BuildContext context) builder;
  @override
  State<TickerBuilder> createState() => _TickerBuilderState();
}

class _TickerBuilderState extends State<TickerBuilder>
    with SingleTickerProviderStateMixin {
  late final Ticker _ticker;

  @override
  void initState() {
    super.initState();
    _ticker = createTicker(_handleTick)..start();
  }

  @override
  void dispose() {
    _ticker.dispose();
    super.dispose();
  }

  void _handleTick(Duration elapsed) {
    setState(() {
      // Force a rebuild without changing the widget tree.
    });
  }

  @override
  Widget build(BuildContext context) => widget.builder.call(context);
}
