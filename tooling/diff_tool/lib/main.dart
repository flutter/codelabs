import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'src/dmp_diff.dart';

void main() {
  runApp(const DiffTool());
}

class DiffTool extends StatelessWidget {
  const DiffTool({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Diff Tool',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const MainContent(title: 'Diff Tool'),
    );
  }
}

class MainContent extends StatefulWidget {
  const MainContent({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MainContent> createState() => _MainContentState();
}

final beforeKey = GlobalKey(debugLabel: 'before');
final afterKey = GlobalKey(debugLabel: 'after');
final outputKey = GlobalKey(debugLabel: 'output');

class _MainContentState extends State<MainContent> {
  late TextEditingController _beforeController;
  late TextEditingController _afterController;
  var _diffResult = '';

  @override
  void initState() {
    super.initState();
    _beforeController = TextEditingController();
    _afterController = TextEditingController();
  }

  @override
  void dispose() {
    _beforeController.dispose();
    _afterController.dispose();
    super.dispose();
  }

  void _updateDiff() {
    final result = dmpDiff(_beforeController.text, _afterController.text);
    setState(() {
      _diffResult = result;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.title)),
      body: Column(
        children: [
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const SizedBox(width: 8),
                Expanded(
                  child: TextField(
                    key: beforeKey,
                    controller: _beforeController,
                    decoration: const InputDecoration(
                      border: InputBorder.none,
                      labelText: 'Before',
                    ),
                    maxLines: null,
                    onChanged: (_) => _updateDiff(),
                  ),
                ),
                Expanded(
                  child: TextField(
                    key: afterKey,
                    controller: _afterController,
                    decoration: const InputDecoration(
                      border: InputBorder.none,
                      labelText: 'After',
                    ),
                    maxLines: null,
                    onChanged: (_) => _updateDiff(),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: SizedBox.expand(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: SelectableText(
                  _diffResult,
                  key: outputKey,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
