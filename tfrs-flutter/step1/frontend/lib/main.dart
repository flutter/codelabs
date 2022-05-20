import 'dart:io' show Platform;

import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:flutter/material.dart';

void main() => runApp(const RecommenderDemo());

class RecommenderDemo extends StatefulWidget {
  const RecommenderDemo({super.key});

  @override
  State<RecommenderDemo> createState() => _RecommenderDemoState();
}

class _RecommenderDemoState extends State<RecommenderDemo> {
  late List<String> _movieList;
  final TextEditingController _userIDController = TextEditingController();
  late String _server;
  late Future<List<String>> _futureRecommendations;

  @override
  void initState() {
    super.initState();
    _futureRecommendations = Future<List<String>>.value([]);
  }

  Future<List<String>> recommend() async {
    if (!kIsWeb && Platform.isAndroid) {
      // For Android emulator
      _server = '10.0.2.2';
    } else {
      // For iOS emulator, desktop and web platforms
      _server = '127.0.0.1';
    }

    //TODO: add code to send request to the recommendation engine backend

    return [];
  }

  @override
  Widget build(BuildContext context) {
    const title = 'Flutter Movie Recommendation Demo';

    return MaterialApp(
      title: title,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(title),
        ),
        body: Center(
          child: Container(
            padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Expanded(
                            child: TextField(
                          controller: _userIDController,
                          decoration: const InputDecoration(
                              border: UnderlineInputBorder(),
                              hintText: 'Enter a user ID here'),
                        )),
                        Container(
                            margin: const EdgeInsets.only(left: 10.0),
                            child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  textStyle: const TextStyle(fontSize: 15),
                                ),
                                onPressed: () {
                                  setState(() {
                                    _futureRecommendations = recommend();
                                  });
                                },
                                child: const Text('Recommend'))),
                      ]),
                  FutureBuilder<List<String>>(
                    future: _futureRecommendations,
                    builder: (context, snapshot) {
                      if (snapshot.hasData) {
                        _movieList = snapshot.data!;
                        return ListView.builder(
                          scrollDirection: Axis.vertical,
                          shrinkWrap: true,
                          itemCount: _movieList.length,
                          itemBuilder: (context, index) {
                            return ListTile(
                              leading: _movieList.isEmpty
                                  ? null
                                  : const FlutterLogo(),
                              title: Text(_movieList[index]),
                            );
                          },
                        );
                      } else if (snapshot.hasError) {
                        return Text('${snapshot.error}');
                      }
                      // By default, show a loading spinner.
                      return const CircularProgressIndicator();
                    },
                  ),
                ]),
          ),
        ),
      ),
    );
  }
}
