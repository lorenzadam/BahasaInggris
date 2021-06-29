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
      'questionText': 'Merah',
      'answers': [
        {'text': 'Rid', 'score': -2},
        {'text': 'Red', 'score': 10},
        {'text': 'Rad', 'score': -2},
        {'text': 'Raed', 'score': -2},
      ],
    },
    {
      'questionText': 'Kuning',
      'answers': [
        {'text': 'Yelow', 'score': -2},
        {'text': 'Yeelow', 'score': -2},
        {'text': 'Yellow', 'score': 10},
        {'text': 'Yeloow', 'score': -2},
      ],
    },
    {
      'questionText': 'Hijau',
      'answers': [
        {'text': 'Green', 'score': 10},
        {'text': 'Grean', 'score': -2},
        {'text': 'Grand', 'score': -2},
        {'text': 'Grind', 'score': -2},
      ],
    },
    {
      'questionText': 'Biru',
      'answers': [
        {'text': 'Blu', 'score': -2},
        {'text': 'Bleu', 'score': -2},
        {'text': 'Bloo', 'score': -2},
        {'text': 'Blue', 'score': 10},
      ],
    },
    {
      'questionText': 'Ungu',
      'answers': [
        {'text': 'Perpel', 'score': -2},
        {'text': 'Purple', 'score': 10},
        {'text': 'Parple', 'score': -2},
        {'text': 'Paerple', 'score': -2},
      ],
    },
    {
      'questionText': 'Merah Muda',
      'answers': [
        {'text': 'Ping', 'score': -2},
        {'text': 'Pingk', 'score': -2},
        {'text': 'Pink', 'score': 10},
        {'text': 'Peng', 'score': -2},
      ],
    },
    {
      'questionText': 'Hitam',
      'answers': [
        {'text': 'Black', 'score': 10},
        {'text': 'Bleck', 'score': -2},
        {'text': 'Blak', 'score': -2},
        {'text': 'Blek', 'score': -2},
      ],
    },
    {
      'questionText': 'Putih',
      'answers': [
        {'text': 'Whyte', 'score': -2},
        {'text': 'White', 'score': 10},
        {'text': 'Wait', 'score': -2},
        {'text': 'Wet', 'score': -2},
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
