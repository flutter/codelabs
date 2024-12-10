// Copyright 2017, 2020, 2022 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license
// that can be found in the LICENSE file.

import 'package:ffigen_app/ffigen_app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';

import 'duktape_message.dart';

void main() {
  runApp(const ProviderScope(child: DuktapeApp()));
}

final duktapeMessagesProvider =
    StateNotifierProvider<DuktapeMessageNotifier, List<DuktapeMessage>>((ref) {
      return DuktapeMessageNotifier(messages: <DuktapeMessage>[]);
    });

class DuktapeMessageNotifier extends StateNotifier<List<DuktapeMessage>> {
  DuktapeMessageNotifier({required List<DuktapeMessage> messages})
    : duktape = Duktape(),
      super(messages);
  final Duktape duktape;

  void eval(String code) {
    state = [DuktapeMessage.evaluate(code), ...state];
    try {
      final response = duktape.evalString(code);
      state = [DuktapeMessage.response(response), ...state];
    } catch (e) {
      state = [DuktapeMessage.error('$e'), ...state];
    }
  }
}

class DuktapeApp extends StatelessWidget {
  const DuktapeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(title: 'Duktape App', home: DuktapeRepl());
  }
}

class DuktapeRepl extends ConsumerStatefulWidget {
  const DuktapeRepl({super.key});

  @override
  ConsumerState<DuktapeRepl> createState() => _DuktapeReplState();
}

class _DuktapeReplState extends ConsumerState<DuktapeRepl> {
  final _controller = TextEditingController();
  final _focusNode = FocusNode();
  var _isComposing = false;

  void _handleSubmitted(String text) {
    _controller.clear();
    setState(() {
      _isComposing = false;
    });
    setState(() {
      ref.read(duktapeMessagesProvider.notifier).eval(text);
    });
    _focusNode.requestFocus();
  }

  @override
  Widget build(BuildContext context) {
    final messages = ref.watch(duktapeMessagesProvider);
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('Duktape REPL'),
        elevation: Theme.of(context).platform == TargetPlatform.iOS ? 0.0 : 4.0,
      ),
      body: Column(
        children: [
          Flexible(
            child: Ink(
              color: Theme.of(context).scaffoldBackgroundColor,
              child: SafeArea(
                bottom: false,
                child: ListView.builder(
                  padding: const EdgeInsets.all(8.0),
                  reverse: true,
                  itemBuilder:
                      (context, idx) => messages[idx].when(
                        evaluate:
                            (str) => Padding(
                              padding: const EdgeInsets.symmetric(vertical: 2),
                              child: Text(
                                '> $str',
                                style: GoogleFonts.firaCode(
                                  textStyle:
                                      Theme.of(context).textTheme.titleMedium,
                                ),
                              ),
                            ),
                        response:
                            (str) => Padding(
                              padding: const EdgeInsets.symmetric(vertical: 2),
                              child: Text(
                                '= $str',
                                style: GoogleFonts.firaCode(
                                  textStyle:
                                      Theme.of(context).textTheme.titleMedium,
                                  color: Colors.blue[800],
                                ),
                              ),
                            ),
                        error:
                            (str) => Padding(
                              padding: const EdgeInsets.symmetric(vertical: 2),
                              child: Text(
                                str,
                                style: GoogleFonts.firaCode(
                                  textStyle:
                                      Theme.of(context).textTheme.titleSmall,
                                  color: Colors.red[800],
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                      ),
                  itemCount: messages.length,
                ),
              ),
            ),
          ),
          const Divider(height: 1.0),
          SafeArea(
            top: false,
            child: Container(
              decoration: BoxDecoration(color: Theme.of(context).cardColor),
              child: _buildTextComposer(),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTextComposer() {
    return IconTheme(
      data: IconThemeData(color: Theme.of(context).colorScheme.secondary),
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Row(
          children: [
            Text('>', style: Theme.of(context).textTheme.titleMedium),
            const SizedBox(width: 4),
            Flexible(
              child: TextField(
                controller: _controller,
                decoration: const InputDecoration(border: InputBorder.none),
                onChanged: (text) {
                  setState(() {
                    _isComposing = text.isNotEmpty;
                  });
                },
                onSubmitted: _isComposing ? _handleSubmitted : null,
                focusNode: _focusNode,
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 4.0),
              child: IconButton(
                icon: const Icon(Icons.send),
                onPressed:
                    _isComposing
                        ? () => _handleSubmitted(_controller.text)
                        : null,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
