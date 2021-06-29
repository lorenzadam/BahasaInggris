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
      'questionText': 'Memperbaiki',
      'answers': [
        {'text': 'Impruve', 'score': -2},
        {'text': 'Improve', 'score': 10},
        {'text': 'Emprove', 'score': -2},
        {'text': 'Empruve', 'score': -2},
      ],
    },
    {
      'questionText': 'Mengabaikan',
      'answers': [
        {'text': 'Ignoer', 'score': -2},
        {'text': 'Ignor', 'score': -2},
        {'text': 'Ignore', 'score': 10},
        {'text': 'Ignoor', 'score': -2},
      ],
    },
    {
      'questionText': 'Memperoleh',
      'answers': [
        {'text': 'Obtain', 'score': 10},
        {'text': 'Obtein', 'score': -2},
        {'text': 'Obten', 'score': -2},
        {'text': 'Obtin', 'score': -2},
      ],
    },
    {
      'questionText': 'Mendengar',
      'answers': [
        {'text': 'Her', 'score': -2},
        {'text': 'Hair', 'score': -2},
        {'text': 'Haer', 'score': -2},
        {'text': 'Hear', 'score': 10},
      ],
    },
    {
      'questionText': 'Ingat',
      'answers': [
        {'text': 'Rimember', 'score': -2},
        {'text': 'Remember', 'score': 10},
        {'text': 'Remebir', 'score': -2},
        {'text': 'Remembar', 'score': -2},
      ],
    },
    {
      'questionText': 'Menyarankan',
      'answers': [
        {'text': 'Recomend', 'score': -2},
        {'text': 'Racomand', 'score': -2},
        {'text': 'Recommend', 'score': 10},
        {'text': 'Racommand', 'score': -2},
      ],
    },
    {
      'questionText': 'Paham',
      'answers': [
        {'text': 'Understand', 'score': 10},
        {'text': 'Undrestand', 'score': -2},
        {'text': 'Understend', 'score': -2},
        {'text': 'Undrestend', 'score': -2},
      ],
    },
    {
      'questionText': 'Bicara',
      'answers': [
        {'text': 'Spiak', 'score': -2},
        {'text': 'Speak', 'score': 10},
        {'text': 'Spaek', 'score': -2},
        {'text': 'Spaik', 'score': -2},
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
