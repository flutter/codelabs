// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    onGenerateRoute: (settings) {
      final path = settings.name;

      if (path != null && path.startsWith('/details/')) {
        final index = int.parse(path.split('/').last);

        // Replace the MaterialPageRoute with the CustomPageRoute that launches
        // the DetailsPage
        return CustomPageRoute(
          builder: (context) => DetailsPage(index: index),
        );
      }

      // Replace the MaterialPageRoute with the CustomPageRoute that launches
      // the HomePage
      return CustomPageRoute(builder: (context) => HomePage());
    },
  ));
}

// A reusable page animation that scales and fades the page on screen.
class CustomPageRoute extends PageRouteBuilder {
  // The CustomPageRoute constructor should accept a function that builds a
  // widget, just like MaterialPageRoute or CupertinoPageRoute. That way, the
  // HomePage and DetailsPage can both use the CustomPageRoute!
  CustomPageRoute({required WidgetBuilder builder})
      : super(
            // Pass the duration and pageBuilder arguments to the
            // PageRouteBuilder "super" class
            transitionDuration: Duration(milliseconds: 300),
            pageBuilder: (context, animation, secondaryAnimation) {
              return ScaleTransition(
                // By default, the animation runs from 0.0 to 1.0 over 1 second.
                // Animating from 0% size to 100% size might be a bit too heavy
                // handed. Therefore, use a Tween to animate *between* 90% and
                // 100% instead!
                scale: Tween(begin: 0.9, end: 1.0).animate(animation),
                child: FadeTransition(
                  opacity: animation,
                  // Instead of building the DetailsPage directly, use the builder
                  // function to create the appropriate page.
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
            onTap: () => Navigator.pushNamed(context, '/details/$index'),
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
              onPressed: () => Navigator.pop(context),
              child: Text('Go Back to HomePage'),
            )
          ],
        ),
      ),
    );
  }
}
