import 'package:ffigen_app/ffigen_app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';

import 'duktape_message.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
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
    state = [
      DuktapeMessage.evaluate(code),
      ...state,
    ];
    try {
      final response = duktape.evalString(code);
      state = [
        DuktapeMessage.response(response),
        ...state,
      ];
    } catch (e) {
      state = [
        DuktapeMessage.error('$e'),
        ...state,
      ];
    }
  }
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final messages = ref.watch(duktapeMessagesProvider);

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Duktape REPL'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView.builder(
            itemBuilder: (context, idx) => messages[idx].when(
              evaluate: (str) => Padding(
                padding: const EdgeInsets.only(top: 2, bottom: 1),
                child: Text(
                  '> $str',
                  style: GoogleFonts.inconsolata(
                    textStyle: Theme.of(context).textTheme.bodyLarge,
                  ),
                ),
              ),
              response: (str) => Padding(
                padding: const EdgeInsets.only(top: 1, bottom: 2),
                child: Text(
                  '= $str',
                  style: GoogleFonts.inconsolata(
                    textStyle: Theme.of(context).textTheme.bodyLarge,
                    color: Colors.blue[800],
                  ),
                ),
              ),
              error: (str) => Padding(
                padding: const EdgeInsets.symmetric(vertical: 2),
                child: Text(
                  '! $str',
                  style: GoogleFonts.inconsolata(
                    textStyle: Theme.of(context).textTheme.bodyLarge,
                    color: Colors.red[600],
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            itemCount: messages.length,
            reverse: true,
          ),
        ),
        floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.add),
          onPressed: () {
            ref
                .read(duktapeMessagesProvider.notifier)
                .eval('var foo = 1; foo + 2');
          },
        ),
      ),
    );
  }
}
