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
      'questionText': 'Meja',
      'answers': [
        {'text': 'Tabel', 'score': -2},
        {'text': 'Table', 'score': 10},
        {'text': 'Taebel', 'score': -2},
        {'text': 'Taeble', 'score': -2},
      ],
    },
    {
      'questionText': 'Kursi',
      'answers': [
        {'text': 'Cair', 'score': -2},
        {'text': 'Ceir', 'score': -2},
        {'text': 'Chair', 'score': 10},
        {'text': 'Cheir', 'score': -2},
      ],
    },
    {
      'questionText': 'Lemari Pakaian',
      'answers': [
        {'text': 'Wardrobe', 'score': 10},
        {'text': 'Wadrop', 'score': -2},
        {'text': 'Waerdrobe', 'score': -2},
        {'text': 'Weardrobe', 'score': -2},
      ],
    },
    {
      'questionText': 'Buku',
      'answers': [
        {'text': 'Bok', 'score': -2},
        {'text': 'Buk', 'score': -2},
        {'text': 'Boek', 'score': -2},
        {'text': 'Book', 'score': 10},
      ],
    },
    {
      'questionText': 'Kaca',
      'answers': [
        {'text': 'Glaes', 'score': -2},
        {'text': 'Glass', 'score': 10},
        {'text': 'Glaes', 'score': -2},
        {'text': 'Gluss', 'score': -2},
      ],
    },
    {
      'questionText': 'Piring',
      'answers': [
        {'text': 'Plat', 'score': -2},
        {'text': 'Plet', 'score': -2},
        {'text': 'Plate', 'score': 10},
        {'text': 'Pleat', 'score': -2},
      ],
    },
    {
      'questionText': 'Telfon Genggam',
      'answers': [
        {'text': 'Handphone', 'score': 10},
        {'text': 'Haendphone', 'score': -2},
        {'text': 'Hendphone', 'score': -2},
        {'text': 'Heandphone', 'score': -2},
      ],
    },
    {
      'questionText': 'Pakaian',
      'answers': [
        {'text': 'Cloths', 'score': -2},
        {'text': 'Clothes', 'score': 10},
        {'text': 'Clotes', 'score': -2},
        {'text': 'Clots', 'score': -2},
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
