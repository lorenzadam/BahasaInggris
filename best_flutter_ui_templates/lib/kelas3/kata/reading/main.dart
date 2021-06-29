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
      'questionText': 'Pagi',
      'answers': [
        {'text': 'Morn', 'score': -2},
        {'text': 'Morning', 'score': 10},
        {'text': 'Moning', 'score': -2},
        {'text': 'Moening', 'score': -2},
      ],
    },
    {
      'questionText': 'Nama',
      'answers': [
        {'text': 'Naem', 'score': -2},
        {'text': 'Nem', 'score': -2},
        {'text': 'Name', 'score': 10},
        {'text': 'Nama', 'score': -2},
      ],
    },
    {
      'questionText': 'Senang',
      'answers': [
        {'text': 'Happy', 'score': 10},
        {'text': 'Haepi', 'score': -2},
        {'text': 'Hepi', 'score': -2},
        {'text': 'Hapy', 'score': -2},
      ],
    },
    {
      'questionText': 'Lapar',
      'answers': [
        {'text': 'Hungri', 'score': -2},
        {'text': 'Hungre', 'score': -2},
        {'text': 'Hunkry', 'score': -2},
        {'text': 'Hungry', 'score': 10},
      ],
    },
    {
      'questionText': 'Minum',
      'answers': [
        {'text': 'Dring', 'score': -2},
        {'text': 'Drink', 'score': 10},
        {'text': 'Dreng', 'score': -2},
        {'text': 'Drenk', 'score': -2},
      ],
    },
    {
      'questionText': 'Makan',
      'answers': [
        {'text': 'It', 'score': -2},
        {'text': 'Aet', 'score': -2},
        {'text': 'Eat', 'score': 10},
        {'text': 'Iat', 'score': -2},
      ],
    },
    {
      'questionText': 'Sore',
      'answers': [
        {'text': 'Afternoon', 'score': 10},
        {'text': 'Afternun', 'score': -2},
        {'text': 'Aftrnoon', 'score': -2},
        {'text': 'Avternun', 'score': -2},
      ],
    },
    {
      'questionText': 'Malam',
      'answers': [
        {'text': 'Naigh', 'score': -2},
        {'text': 'Night', 'score': 10},
        {'text': 'Nigh', 'score': -2},
        {'text': 'Nigth', 'score': -2},
      ],
    },
    {
      'questionText': 'Tidur',
      'answers': [
        {'text': 'Slip', 'score': -2},
        {'text': 'Sleep', 'score': 10},
        {'text': 'Selip', 'score': -2},
        {'text': 'Seleep', 'score': -2},
      ],
    },
    {
      'questionText': 'Mendung',
      'answers': [
        {'text': 'Cloudi', 'score': -2},
        {'text': 'Cloudy', 'score': 10},
        {'text': 'Klaudi', 'score': -2},
        {'text': 'Klaudy', 'score': -2},
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
