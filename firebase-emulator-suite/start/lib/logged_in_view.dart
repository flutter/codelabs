// ignore_for_file: prefer_const_constructors, prefer_const_declarations

import 'dart:math';

import 'package:flutter/material.dart';

import 'app_state.dart';
import 'entry.dart';
import 'journal_entry_form.dart';
import 'journal_entry_widget.dart';

class LoggedInView extends StatelessWidget {
  final AppState state;
  LoggedInView({super.key, required this.state});

  final PageController _controller = PageController(initialPage: 1);

  @override
  Widget build(BuildContext context) {
    // TODO: get name from Firebase User
    final name = 'Person';
    return Scaffold(
      backgroundColor: Colors.blue[300],
      body: Column(
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 16.0,
              ),
              child: Text(
                'Welcome back, $name!',
                style: Theme.of(context).textTheme.headlineSmall!.copyWith(),
              ),
            ),
          ),
          Flexible(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: StreamBuilder<List<Entry>>(
                stream: state.entries,
                initialData: const [],
                builder: (context, snapshot) {
                  final allEntries = snapshot.data;
                  return PageView(
                    controller: _controller,
                    scrollDirection: Axis.horizontal,
                    children: [
                      EntryForm(
                        key: Key('${Random().nextDouble()}'),
                        onSubmit: (e) {
                          state.writeEntryToFirebase(e);
                        },
                      ),
                      for (var entry in allEntries!)
                        EntryView(
                          entry: entry,
                        )
                    ],
                  );
                },
              ),
            ),
          )
        ],
      ),
    );
  }
}
