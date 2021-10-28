import 'package:flutter/material.dart';

void main() {
  runApp(StarCounterApp());
}

class StarCounterApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        brightness: Brightness.light,
      ),
      routes: {
        '/': (context) => HomePage(),
      },
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String _repositoryName = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 400),
          child: Card(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'GitHub Star Counter',
                    style: Theme.of(context).textTheme.headline4,
                  ),
                  TextField(
                    decoration: const InputDecoration(
                      labelText: 'Enter a GitHub repository',
                      hintText: 'flutter/flutter',
                    ),
                    onSubmitted: (text) {
                      setState(() {
                        _repositoryName = text;
                      });
                    },
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 32.0),
                    child: Text(
                      _repositoryName,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
