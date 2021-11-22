import 'package:first/Result.dart';
import 'package:flutter/material.dart';
import './Quiz.dart';
import './Result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final _question = const [
    {
      'Question Text': 'What\'s your favorate color?',
      'Answers': [
        {'Text': 'Black', 'score': 10},
        {'Text': 'Blue', 'score': 0},
        {'Text': 'Red', 'score': 0},
        {'Text': 'Green', 'score': 0}
      ],
    },
    {
      'Question Text': 'What\'s your favorate animal?',
      'Answers': [
        {'Text': 'Dog', 'score': 10},
        {'Text': 'Cats', 'score': 0},
        {'Text': 'Cows', 'score': 0},
        {'Text': 'Tiger', 'score': 0}
      ],
    },
    {
      'Question Text': 'Who is the most Handsome guy?',
      'Answers': [
        {'Text': 'Anurag', 'score': 10},
        {'Text': 'Anu', 'score': 0},
        {'Text': 'Anurag Sharma', 'score': 0},
        {'Text': 'the Gr8 Anurag', 'score': 0}
      ],
    },
  ];
  var _questionIndex = 0;
  var _totalScore = 0;
  void _answerQuestion(int score) {
    _totalScore += score;

    setState(() {
      _questionIndex++;
    });
    print(_questionIndex);
    if (_questionIndex < _question.length) {
      print('We have more questions');
    } else {
      print('No more questsions');
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('MY FIRST APP'),
        ),
        body: _questionIndex < _question.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                question: _question,
                questionIndex: _questionIndex,
              )
            : Result(_totalScore),
      ),
    );
  }
}
