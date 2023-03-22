// Copyright 2023 The Flutter Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

typedef ReactiveWidgetBuilder = Widget Function(
    BuildContext context, double time, Size bounds);

class ReactiveWidget extends StatefulWidget {
  const ReactiveWidget({
    super.key,
    required this.builder,
  });
  final ReactiveWidgetBuilder builder;
  @override
  State<ReactiveWidget> createState() => _ReactiveWidgetState();
}

class _ReactiveWidgetState extends State<ReactiveWidget> {
  @override
  Widget build(BuildContext context) {
    return _TimingProvider(
      builder: (_, time) {
        return LayoutBuilder(
          builder: (context, constraints) {
            return widget.builder(context, time, constraints.biggest);
          },
        );
      },
    );
  }
}

class _TimingProvider extends StatefulWidget {
  const _TimingProvider({required this.builder});
  final Widget Function(BuildContext context, double time) builder;
  @override
  State<_TimingProvider> createState() => _TimingProviderState();
}

class _TimingProviderState extends State<_TimingProvider>
    with SingleTickerProviderStateMixin {
  late final Ticker _ticker;
  double _time = 0.0;

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
    setState(() => _time = elapsed.inMilliseconds.toDouble() / 1000.0);
  }

  @override
  Widget build(BuildContext context) => widget.builder(context, _time);
}
