import 'package:animations/animations.dart';
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
  VoidCallback? _showGameOverScreen;

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
                QuestionCard(
                  onChangeOpenContainer: _handleChangeOpenContainer,
                  question: viewModel.currentQuestion?.question,
                  viewModel: viewModel,
                ),
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

  void _handleChangeOpenContainer(VoidCallback openContainer) {
    _showGameOverScreen = openContainer;
  }

  void _handleGameOver() {
    if (_showGameOverScreen != null) {
      _showGameOverScreen!();
    }
  }
}

class GameOverScreen extends StatelessWidget {
  final QuizViewModel viewModel;
  const GameOverScreen({required this.viewModel, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(automaticallyImplyLeading: false),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Scoreboard(
              score: viewModel.score,
              totalQuestions: viewModel.totalQuestions,
            ),
            Text('You Win!', style: Theme.of(context).textTheme.displayLarge),
            Text(
              'Score: ${viewModel.score} / ${viewModel.totalQuestions}',
              style: Theme.of(context).textTheme.displaySmall,
            ),
            ElevatedButton(
              child: Text('OK'),
              onPressed: () {
                Navigator.popUntil(context, (route) => route.isFirst);
              },
            ),
          ],
        ),
      ),
    );
  }
}

class QuestionCard extends StatelessWidget {
  final String? question;

  const QuestionCard({
    required this.onChangeOpenContainer,
    required this.question,
    required this.viewModel,
    super.key,
  });

  final ValueChanged<VoidCallback> onChangeOpenContainer;
  final QuizViewModel viewModel;

  static const _backgroundColor = Color(0xfff2f3fa);

  @override
  Widget build(BuildContext context) {
    return PageTransitionSwitcher(
      duration: const Duration(milliseconds: 200),
      transitionBuilder: (child, animation, secondaryAnimation) {
        return FadeThroughTransition(
          animation: animation,
          secondaryAnimation: secondaryAnimation,
          child: child,
        );
      },
      child: OpenContainer(
        key: ValueKey(question),
        tappable: false,
        closedColor: _backgroundColor,
        closedShape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(12.0)),
        ),
        closedElevation: 4,
        closedBuilder: (context, openContainer) {
          onChangeOpenContainer(openContainer);
          return ColoredBox(
            color: _backgroundColor,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                question ?? '',
                style: Theme.of(context).textTheme.displaySmall,
              ),
            ),
          );
        },
        openBuilder: (context, closeContainer) {
          return GameOverScreen(viewModel: viewModel);
        },
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
          delayAmount: index.toDouble() / 2,
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
