// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    onGenerateRoute: (settings) {
      final path = settings.name;

      if (path != null && path.startsWith('/details/')) {
        final index = int.parse(path.split('/').last);

        return CustomPageRoute(
          builder: (context) => DetailsPage(index: index),
        );
      }

      return CustomPageRoute(builder: (context) => HomePage());
    },
  ));
}

class CustomPageRoute extends PageRouteBuilder {
  CustomPageRoute({required WidgetBuilder builder})
      : super(
            transitionDuration: Duration(milliseconds: 300),
            pageBuilder: (context, animation, secondaryAnimation) {
              return ScaleTransition(
                scale: Tween(begin: 0.9, end: 1.0).animate(animation),
                child: FadeTransition(
                  opacity: animation,
                  child: builder(context),
                ),
              );
            });
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
      ),
      body: ListView.builder(
        itemCount: 50,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text('Item $index'),
            // Use pushReplacementNamed to navigate to the DetailsPage,
            // removing the HomePage from the navigation stack.
            onTap: () => Navigator.pushReplacementNamed(
              context,
              '/details/$index',
            ),
          );
        },
      ),
    );
  }
}

class DetailsPage extends StatelessWidget {
  final int index;

  const DetailsPage({required this.index, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Details Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Details for item $index',
            ),
            SizedBox(height: 20),
            ElevatedButton(
              // Use pushReplacementNamed to navigate back to the HomePage,
              // removing the DetailsPage from the navigation stack.
              onPressed: () => Navigator.pushReplacementNamed(context, '/'),
              child: Text('Go Back to HomePage'),
            )
          ],
        ),
      ),
    );
  }
}
