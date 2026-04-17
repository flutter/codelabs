import 'package:firebase_ai/firebase_ai.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'firebase_options.dart';
import 'message_bubble.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Just Today',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

sealed class ConversationItem {}

class TextItem extends ConversationItem {
  final String text;
  final bool isUser;
  TextItem({required this.text, this.isUser = false});
}

class _MyHomePageState extends State<MyHomePage> {
  final List<ConversationItem> _items = [];
  final _textController = TextEditingController();
  final _scrollController = ScrollController();
  late final ChatSession _chatSession;

  @override
  void initState() {
    super.initState();
    final model = FirebaseAI.googleAI().generativeModel(
      model: 'gemini-3-flash-preview',
    );
    _chatSession = model.startChat();
    _chatSession.sendMessage(Content.text(systemInstruction));
  }

  void _scrollToBottom() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (_scrollController.hasClients) {
        _scrollController.animateTo(
          _scrollController.position.maxScrollExtent,
          duration: const Duration(milliseconds: 300),
          curve: Curves.easeOut,
        );
      }
    });
  }

  @override
  void dispose() {
    _textController.dispose();
    _scrollController.dispose();
    super.dispose();
  }

  Future<void> _addMessage() async {
    final text = _textController.text;

    if (text.trim().isEmpty) {
      return;
    }
    _textController.clear();

    setState(() {
      _items.add(TextItem(text: text, isUser: true));
    });

    _scrollToBottom();

    final response = await _chatSession.sendMessage(Content.text(text));

    if (response.text?.isNotEmpty ?? false) {
      setState(() {
        _items.add(TextItem(text: response.text!, isUser: false));
      });
      _scrollToBottom();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Just Today'),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView(
              controller: _scrollController,
              padding: const EdgeInsets.all(16),
              children: [
                for (final item in _items)
                  switch (item) {
                    TextItem() => MessageBubble(
                      text: item.text,
                      isUser: item.isUser,
                    ),
                  },
              ],
            ),
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                children: [
                  Expanded(
                    child: TextField(
                      controller: _textController,
                      onSubmitted: (_) => _addMessage(),
                      decoration: const InputDecoration(
                        hintText: 'Enter a message',
                      ),
                    ),
                  ),
                  const SizedBox(width: 8),
                  ElevatedButton(
                    onPressed: _addMessage,
                    child: const Text('Send'),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

const systemInstruction = '''
  ## PERSONA
  You are an expert task planner.

  ## GOAL
  Work with me to produce a list of tasks that I should do today, and then track
  the completion status of each one.

  ## RULES
  Talk with me only about tasks that I should do today.
  Do not engage in conversation about any other topic.
  Do not offer suggestions unless I ask for them.
  Do not offer encouragement unless I ask for it.
  Do not offer advice unless I ask for it.
  Do not offer opinions unless I ask for them.

  ## PROCESS
  ### Planning
  * Ask me for information about tasks that I should do today.
  * Synthesize a list of tasks from that information.
  * Ask clarifying questions if you need to.
  * When you have a list of tasks that you think I should do today, present it
    to me for review.
  * Respond to my suggestions for changes, if I have any, until I accept the
    list.

  ### Tracking
  * Once the list is accepted, ask me to let you know when individual tasks are
    complete.
  * If I tell you a task is complete, mark it as complete.
  * Once all tasks are complete, send a message acknowledging that, and then
    end the conversation.
''';
