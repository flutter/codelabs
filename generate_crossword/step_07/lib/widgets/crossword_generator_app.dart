// Copyright 2024 The Flutter Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../providers.dart';
import 'crossword_info_widget.dart';
import 'crossword_widget.dart';

class CrosswordGeneratorApp extends StatelessWidget {
  const CrosswordGeneratorApp({super.key});

  @override
  Widget build(BuildContext context) {
    return _EagerInitialization(
      child: Scaffold(
        appBar: AppBar(
          actions: [_CrosswordGeneratorMenu()],
          titleTextStyle: TextStyle(
            color: Theme.of(context).colorScheme.primary,
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
          title: Text('Crossword Generator'),
        ),
        body: SafeArea(
          child: Consumer(
            builder: (context, ref, child) {
              return Stack(
                children: [
                  Positioned.fill(child: CrosswordWidget()),
                  if (ref.watch(showDisplayInfoProvider)) CrosswordInfoWidget(),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}

class _EagerInitialization extends ConsumerWidget {
  const _EagerInitialization({required this.child});
  final Widget child;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.watch(wordListProvider);
    return child;
  }
}

class _CrosswordGeneratorMenu extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) => MenuAnchor(
    menuChildren: [
      for (final entry in CrosswordSize.values)
        MenuItemButton(
          onPressed: () => ref.read(sizeProvider.notifier).setSize(entry),
          leadingIcon:
              entry == ref.watch(sizeProvider)
                  ? Icon(Icons.radio_button_checked_outlined)
                  : Icon(Icons.radio_button_unchecked_outlined),
          child: Text(entry.label),
        ),
      MenuItemButton(
        leadingIcon:
            ref.watch(showDisplayInfoProvider)
                ? Icon(Icons.check_box_outlined)
                : Icon(Icons.check_box_outline_blank_outlined),
        onPressed: () => ref.read(showDisplayInfoProvider.notifier).toggle(),
        child: Text('Display Info'),
      ),
    ],
    builder:
        (context, controller, child) => IconButton(
          onPressed: () => controller.open(),
          icon: Icon(Icons.settings),
        ),
  );
}
