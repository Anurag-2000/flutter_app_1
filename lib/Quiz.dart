import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> question;
  final Function answerQuestion;
  final questionIndex;

  Quiz({
    @required this.answerQuestion,
    @required this.question,
    @required this.questionIndex,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(
          question[questionIndex]['Question Text'],
        ),
        ...(question[questionIndex]['Answers'] as List<Map<String, Object>>)
            .map((answer) {
          return Answer(() => answerQuestion(answer['score']), answer['Text']);
        }).toList()
      ],
    );
  }
}
