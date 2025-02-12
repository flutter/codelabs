import 'dart:math' as math;

class Question {
  final String question;
  final List<String> possibleAnswers;
  final int correctAnswer;
  Question(this.question, this.possibleAnswers, this.correctAnswer);
}

class QuestionBank {
  final List<Question> _questions = _createQuestions();

  bool get hasNextQuestion => _questions.isNotEmpty;
  int get remainingQuestions => _questions.length;

  Question? getRandomQuestion() {
    if (_questions.isEmpty) {
      return null;
    }

    var i = math.Random().nextInt(_questions.length);
    var question = _questions[i];

    _questions.removeAt(i);
    return question;
  }
}

List<Question> _createQuestions() {
  return [
    Question(
      'What class used to create custom explicit animations in Flutter?',
      ['AnimationController', 'AnimatedWidget', 'AnimatedBuilder', 'Tween'],
      0,
    ),
    Question(
      'Which widget is used to rebuild its child whenever an animation changes?',
      [
        'AnimatedContainer',
        'AnimatedBuilder',
        'AnimatedSwitcher',
        'AnimatedOpacity',
      ],
      1,
    ),
    Question(
      'What class is used to define the start and end values for an animation?',
      ['Tween', 'Curve', 'AnimationController', 'AnimatedWidget'],
      0,
    ),
  ];
}
