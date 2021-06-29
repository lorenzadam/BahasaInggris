import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';

void main() => runApp(MyAppReading());

class MyAppReading extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppQuizState();
  }
}

class _MyAppQuizState extends State<MyAppReading> {
  final _questions = const [
    {
      'questionText': 'Lingkaran',
      'answers': [
        {'text': 'Cikle', 'score': -2},
        {'text': 'Circle', 'score': 10},
        {'text': 'Caircle', 'score': -2},
        {'text': 'Cairkle', 'score': -2},
      ],
    },
    {
      'questionText': 'Kotak',
      'answers': [
        {'text': 'Skuar', 'score': -2},
        {'text': 'Squar', 'score': -2},
        {'text': 'Square', 'score': 10},
        {'text': 'Squer', 'score': -2},
      ],
    },
    {
      'questionText': 'Segi Tiga',
      'answers': [
        {'text': 'Triangle', 'score': 10},
        {'text': 'Trianggle', 'score': -2},
        {'text': 'Triangel', 'score': -2},
        {'text': 'Triengle', 'score': -2},
      ],
    },
    {
      'questionText': 'Persegi Panjang',
      'answers': [
        {'text': 'Rectangel', 'score': -2},
        {'text': 'Rectangal', 'score': -2},
        {'text': 'Recttangel', 'score': -2},
        {'text': 'Rectangle', 'score': 10},
      ],
    },
    {
      'questionText': 'Lonjong',
      'answers': [
        {'text': 'Ouval', 'score': -2},
        {'text': 'Oval', 'score': 10},
        {'text': 'Ovael', 'score': -2},
        {'text': 'Ovel', 'score': -2},
      ],
    },
    {
      'questionText': 'Berlian',
      'answers': [
        {'text': 'Daemon', 'score': -2},
        {'text': 'Diamon', 'score': -2},
        {'text': 'Diamond', 'score': 10},
        {'text': 'Deamond', 'score': -2},
      ],
    },
    {
      'questionText': 'Segi Lima',
      'answers': [
        {'text': 'Pentagon', 'score': 10},
        {'text': 'Pentaegon', 'score': -2},
        {'text': 'Paentagon', 'score': -2},
        {'text': 'Peantagon', 'score': -2},
      ],
    },
    {
      'questionText': 'Segi Enam',
      'answers': [
        {'text': 'Heksagon', 'score': -2},
        {'text': 'Hexagon', 'score': 10},
        {'text': 'Heksxagon', 'score': -2},
        {'text': 'Hexagen', 'score': -2},
      ],
    },
    {
      'questionText': 'Segi Delapan',
      'answers': [
        {'text': 'Oktagon', 'score': -2},
        {'text': 'Octagon', 'score': 10},
        {'text': 'Oktegon', 'score': -2},
        {'text': 'Octegon', 'score': -2},
      ],
    },
  ];

  var _questionIndex = 0;
  var _totalScore = 0;

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestion(int score) {
    _totalScore += score;

    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
    if (_questionIndex < _questions.length) {
      print('Masih ada pertanyaan lagi!');
    } else {
      print('Tidak ada pertanyaan lagi!');
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(30.0),
          child: _questionIndex < _questions.length
              ? Quiz(
                  answerQuestion: _answerQuestion,
                  questionIndex: _questionIndex,
                  questions: _questions,
                ) //Quiz
              : Result(_totalScore, _resetQuiz),
        ), //Padding
      ), //Scaffold
      debugShowCheckedModeBanner: false,
    ); //MaterialApp
  }
}
