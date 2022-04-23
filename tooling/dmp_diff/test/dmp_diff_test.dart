import 'package:dmp_diff/dmp_diff.dart';
import 'package:test/test.dart';

void main() {
  test('dmpDiff identical strings is empty', () {
    var string = 'foo,bar,baz';
    expect(dmpDiff(string, string), equals(''));
  });

  test('dmpDiff an addition', () {
    var a = 'foo,bar';
    var b = 'foo,bar,baz';
    expect(dmpDiff(a, b), equals(r''' 
@@ -1,7 +1,11 @@
 foo,bar
+,baz
'''));
  });

  test('dmpDiff a deletion', () {
    var a = 'foo,bar,baz';
    var b = 'foo,bar';
    expect(dmpDiff(a, b), equals(r''' 
@@ -4,8 +4,4 @@
 ,bar
-,baz
'''));
  });

  test('dmpDiff a replacement', () {
    var a = 'foo,bar,baz';
    var b = 'foo,bar,waffle';
    expect(dmpDiff(a, b), equals(r'''
@@ -5,7 +5,10 @@
 bar,
-baz
+waffle
'''));
  });

  test('Patch applies sanely', () {
    final initial = '''
// Copyright 2017, 2020 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license
// that can be found in the LICENSE file.

import 'package:flutter/material.dart';

void main() {
  runApp(
    const FriendlyChatApp(),
  );
}

class FriendlyChatApp extends StatelessWidget {
  const FriendlyChatApp({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'FriendlyChat',
      home: ChatScreen(),
    );
  }
}

class ChatScreen extends StatefulWidget {
  const ChatScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  final _textController = TextEditingController();

  void _handleSubmitted(String text) {
    _textController.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('FriendlyChat')),
      body: _buildTextComposer(),
    );
  }

  Widget _buildTextComposer() {
    return IconTheme(
      data: IconThemeData(color: Theme.of(context).colorScheme.secondary),
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Row(
          children: [
            Flexible(
              child: TextField(
                controller: _textController,
                onSubmitted: _handleSubmitted,
                decoration:
                    const InputDecoration.collapsed(hintText: 'Send a message'),
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 4.0),
              child: IconButton(
                  icon: const Icon(Icons.send),
                  onPressed: () => _handleSubmitted(_textController.text)),
            ),
          ],
        ),
      ),
    );
  }
}
''';

    final target = '''
// Copyright 2017, 2020 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license
// that can be found in the LICENSE file.

import 'package:flutter/material.dart';

void main() {
  runApp(
    const FriendlyChatApp(),
  );
}

String _name = 'Your Name';

class FriendlyChatApp extends StatelessWidget {
  const FriendlyChatApp({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'FriendlyChat',
      home: ChatScreen(),
    );
  }
}

class ChatMessage extends StatelessWidget {
  const ChatMessage({
    required this.text,
    Key? key,
  }) : super(key: key);
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: const EdgeInsets.only(right: 16.0),
            child: CircleAvatar(child: Text(_name[0])),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(_name, style: Theme.of(context).textTheme.headline4),
              Container(
                margin: const EdgeInsets.only(top: 5.0),
                child: Text(text),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class ChatScreen extends StatefulWidget {
  const ChatScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  final List<ChatMessage> _messages = [];
  final _textController = TextEditingController();
  final FocusNode _focusNode = FocusNode();

  void _handleSubmitted(String text) {
    _textController.clear();
    var message = ChatMessage(
      text: text,
    );
    setState(() {
      _messages.insert(0, message);
    });
    _focusNode.requestFocus();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('FriendlyChat')),
      body: Column(
        children: [
          Flexible(
            child: ListView.builder(
              padding: const EdgeInsets.all(8.0),
              reverse: true,
              itemBuilder: (_, index) => _messages[index],
              itemCount: _messages.length,
            ),
          ),
          const Divider(height: 1.0),
          Container(
            decoration: BoxDecoration(color: Theme.of(context).cardColor),
            child: _buildTextComposer(),
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
            Flexible(
              child: TextField(
                controller: _textController,
                onSubmitted: _handleSubmitted,
                decoration:
                    const InputDecoration.collapsed(hintText: 'Send a message'),
                focusNode: _focusNode,
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 4.0),
              child: IconButton(
                  icon: const Icon(Icons.send),
                  onPressed: () => _handleSubmitted(_textController.text)),
            ),
          ],
        ),
      ),
    );
  }
}
''';

    final patch = '''
@@ -259,24 +259,53 @@
 (),%0A  );%0A%7D%0A%0A
+String _name = 'Your Name';%0A%0A
 class Friend
@@ -551,24 +551,912 @@
   );%0A  %7D%0A%7D%0A%0A
+class ChatMessage extends StatelessWidget %7B%0A  const ChatMessage(%7B%0A    required this.text,%0A    Key? key,%0A  %7D) : super(key: key);%0A  final String text;%0A%0A  @override%0A  Widget build(BuildContext context) %7B%0A    return Container(%0A      margin: const EdgeInsets.symmetric(vertical: 10.0),%0A      child: Row(%0A        crossAxisAlignment: CrossAxisAlignment.start,%0A        children: %5B%0A          Container(%0A            margin: const EdgeInsets.only(right: 16.0),%0A            child: CircleAvatar(child: Text(_name%5B0%5D)),%0A          ),%0A          Column(%0A            crossAxisAlignment: CrossAxisAlignment.start,%0A            children: %5B%0A              Text(_name, style: Theme.of(context).textTheme.headline4),%0A              Container(%0A                margin: const EdgeInsets.only(top: 5.0),%0A                child: Text(text),%0A              ),%0A            %5D,%0A          ),%0A        %5D,%0A      ),%0A    );%0A  %7D%0A%7D%0A%0A
 class ChatSc
@@ -1668,16 +1668,58 @@
 reen%3E %7B%0A
+  final List%3CChatMessage%3E _messages = %5B%5D;%0A
   final 
@@ -1760,16 +1760,60 @@
 oller();
+%0A  final FocusNode _focusNode = FocusNode();
 %0A%0A  void
@@ -1880,171 +1880,800 @@
 ;%0A  
-%7D%0A%0A  @override%0A  Widget build(BuildContext context) %7B%0A    return Scaffold(%0A      appBar: AppBar(title: const Text('FriendlyChat')),%0A      body: _buildTextComposer(
+  var message = ChatMessage(%0A      text: text,%0A    );%0A    setState(() %7B%0A      _messages.insert(0, message);%0A    %7D);%0A    _focusNode.requestFocus();%0A  %7D%0A%0A  @override%0A  Widget build(BuildContext context) %7B%0A    return Scaffold(%0A      appBar: AppBar(title: const Text('FriendlyChat')),%0A      body: Column(%0A        children: %5B%0A          Flexible(%0A            child: ListView.builder(%0A              padding: const EdgeInsets.all(8.0),%0A              reverse: true,%0A              itemBuilder: (_, index) =%3E _messages%5Bindex%5D,%0A              itemCount: _messages.length,%0A            ),%0A          ),%0A          const Divider(height: 1.0),%0A          Container(%0A            decoration: BoxDecoration(color: Theme.of(context).cardColor),%0A            child: _buildTextComposer(),%0A          ),%0A        %5D,%0A      
 ),%0A 
@@ -3192,16 +3192,55 @@
 essage')
-
 
+,%0A                focusNode: _focusNode
 ,%0A      
''';

    final result = dmpPatch(initial, patch);
    expect(result.patchedText, equals(target));
    expect(result.successfullyApplied.length, equals(7));
    for (var b in result.successfullyApplied) {
      expect(b, equals(true));
    }
  });
}
