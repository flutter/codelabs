import 'package:animations/animations.dart';
import 'package:flutter/material.dart';
import 'question_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              '✏️',
              style: Theme.of(context).textTheme.displayLarge,
            ),
            Text(
              'Flutter Quiz',
              style: Theme.of(context).textTheme.displayLarge!.copyWith(
                  fontWeight: FontWeight.w700,
                  color: Theme.of(context).colorScheme.onPrimaryFixedVariant),
            ),
            ElevatedButton(
              onPressed: () {
                // Show the question screen to start the game
                Navigator.push(
                  context,
                  PageRouteBuilder(
                      pageBuilder: (context, animation, secondaryAnimation) {
                        return const QuestionScreen();
                      }, transitionsBuilder:
                      (context, animation, secondaryAnimation, child) {
                    return FadeThroughTransition(
                      animation: animation,
                      secondaryAnimation: secondaryAnimation,
                      child: child,
                    );
                  }),
                );
              },
              child: const Text('New Game'),
            ),
          ],
        ),
      ),
    );
  }
}
