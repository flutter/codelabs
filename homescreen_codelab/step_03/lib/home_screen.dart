import 'package:flutter/material.dart';

import 'article_screen.dart';
import 'news_data.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Top Stories'),
        centerTitle: false,
        titleTextStyle: const TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ),
      ),
      body: ListView.separated(
        separatorBuilder: (context, idx) {
          return const Divider();
        },
        itemCount: getNewsStories().length,
        itemBuilder: (context, idx) {
          final article = getNewsStories()[idx];
          return ListTile(
            key: Key('$idx ${article.hashCode}'),
            title: Text(article.title),
            subtitle: Text(article.description),
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute<ArticleScreen>(
                  builder: (context) {
                    return ArticleScreen(article: article);
                  },
                ),
              );
            },
          );
        },
      ),
    );
  }
}
