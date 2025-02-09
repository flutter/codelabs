import 'package:flutter/material.dart';
import 'flip_effect.dart';
import 'scoreboard.dart';
import 'view_model.dart';

class QuestionScreen extends StatefulWidget {
  const QuestionScreen({super.key});

  @override
  State<QuestionScreen> createState() => _QuestionScreenState();
}

class _QuestionScreenState extends State<QuestionScreen> {
  late final QuizViewModel viewModel = QuizViewModel(
    onGameOver: _handleGameOver,
  );

  @override
  Widget build(BuildContext context) {
    return ListenableBuilder(
      listenable: viewModel,
      builder: (context, child) {
        return Scaffold(
          appBar: AppBar(
            actions: [
              TextButton(
                onPressed:
                    viewModel.hasNextQuestion && viewModel.didAnswerQuestion
                        ? () {
                          viewModel.getNextQuestion();
                        }
                        : null,
                child: const Text('Next'),
              ),
            ],
          ),
          body: Center(
            child: Column(
              children: [
                QuestionCard(question: viewModel.currentQuestion?.question),
                Spacer(),
                AnswerCards(
                  onTapped: (index) {
                    viewModel.checkAnswer(index);
                  },
                  answers: viewModel.currentQuestion?.possibleAnswers ?? [],
                  correctAnswer:
                      viewModel.didAnswerQuestion
                          ? viewModel.currentQuestion?.correctAnswer
                          : null,
                ),
                StatusBar(viewModel: viewModel),
              ],
            ),
          ),
        );
      },
    );
  }

  void _handleGameOver() {
    showDialog(
      barrierDismissible: false,
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text('Game Over!'),
          content: Text('Score: ${viewModel.score}'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.popUntil(context, (route) => route.isFirst);
              },
              child: Text('OK'),
            ),
          ],
        );
      },
    );
  }
}

class QuestionCard extends StatelessWidget {
  final String? question;

  const QuestionCard({required this.question, super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedSwitcher(
      layoutBuilder: (currentChild, previousChildren) {
        return Stack(
          alignment: Alignment.topCenter,
          children: <Widget>[
            ...previousChildren,
            if (currentChild != null) currentChild,
          ],
        );
      },
      transitionBuilder: (child, animation) {
        final curveAnimation = CurveTween(
          curve: Curves.easeInCubic,
        ).animate(animation);
        final offsetAnimation = Tween<Offset>(
          begin: Offset(-0.1, 0.0),
          end: Offset.zero,
        ).animate(curveAnimation);
        final fadeInAnimation = curveAnimation;
        return FadeTransition(
          opacity: fadeInAnimation,
          child: SlideTransition(position: offsetAnimation, child: child),
        );
      },
      duration: const Duration(milliseconds: 300),
      child: Card(
        key: ValueKey(question),
        elevation: 4,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Text(
            question ?? '',
            style: Theme.of(context).textTheme.displaySmall,
          ),
        ),
      ),
    );
  }
}

class AnswerCards extends StatelessWidget {
  final List<String> answers;
  final ValueChanged<int> onTapped;
  final int? correctAnswer;

  const AnswerCards({
    required this.answers,
    required this.onTapped,
    required this.correctAnswer,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      shrinkWrap: true,
      crossAxisCount: 2,
      childAspectRatio: 5 / 2,
      children: List.generate(answers.length, (index) {
        var color = Theme.of(context).colorScheme.primaryContainer;
        if (correctAnswer == index) {
          color = Theme.of(context).colorScheme.tertiaryContainer;
        }
        return CardFlipEffect(
          duration: const Duration(milliseconds: 300),
          child: Card.filled(
            key: ValueKey(answers[index]),
            color: color,
            elevation: 2,
            margin: EdgeInsets.all(8),
            clipBehavior: Clip.hardEdge,
            child: InkWell(
              onTap: () => onTapped(index),
              child: Padding(
                padding: EdgeInsets.all(16.0),
                child: Center(
                  child: Text(
                    answers.length > index ? answers[index] : '',
                    style: Theme.of(context).textTheme.titleMedium,
                    overflow: TextOverflow.clip,
                  ),
                ),
              ),
            ),
          ),
        );
      }),
    );
  }
}

class StatusBar extends StatelessWidget {
  final QuizViewModel viewModel;

  const StatusBar({required this.viewModel, super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      child: Padding(
        padding: EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Scoreboard(
              score: viewModel.score,
              totalQuestions: viewModel.totalQuestions,
            ),
          ],
        ),
      ),
    );
  }
}
