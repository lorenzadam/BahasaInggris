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
      'questionText': '0 - Nol',
      'answers': [
        {'text': 'Zoro', 'score': -2},
        {'text': 'Zero', 'score': 10},
        {'text': 'Zer o', 'score': -2},
        {'text': 'Zeor', 'score': -2},
      ],
    },
    {
      'questionText': '1 - Satu',
      'answers': [
        {'text': 'On', 'score': -2},
        {'text': 'Wan', 'score': -2},
        {'text': 'One', 'score': 10},
        {'text': 'Won', 'score': -2},
      ],
    },
    {
      'questionText': '2 - Dua',
      'answers': [
        {'text': 'Two', 'score': 10},
        {'text': 'Too', 'score': -2},
        {'text': 'Toe', 'score': -2},
        {'text': 'To', 'score': -2},
      ],
    },
    {
      'questionText': '3 - Tiga',
      'answers': [
        {'text': 'Tri', 'score': -2},
        {'text': 'Tree', 'score': -2},
        {'text': 'Trea', 'score': -2},
        {'text': 'Three', 'score': 10},
      ],
    },
    {
      'questionText': '4 - Empat',
      'answers': [
        {'text': 'For', 'score': -2},
        {'text': 'Four', 'score': 10},
        {'text': 'Fur', 'score': -2},
        {'text': 'Foar', 'score': -2},
      ],
    },
    {
      'questionText': '5 - Lima',
      'answers': [
        {'text': 'Fife', 'score': -2},
        {'text': 'Vive', 'score': -2},
        {'text': 'Five', 'score': 10},
        {'text': 'Vife', 'score': -2},
      ],
    },
    {
      'questionText': '6 - Enam',
      'answers': [
        {'text': 'Six', 'score': 10},
        {'text': 'Siks', 'score': -2},
        {'text': 'Sicks', 'score': -2},
        {'text': 'Syx', 'score': -2},
      ],
    },
    {
      'questionText': '7 - Tujuh',
      'answers': [
        {'text': 'Sefen', 'score': -2},
        {'text': 'Seven', 'score': 10},
        {'text': 'Saven', 'score': -2},
        {'text': 'Serven', 'score': -2},
      ],
    },
    {
      'questionText': '8 - Delapan',
      'answers': [
        {'text': 'Egg', 'score': -2},
        {'text': 'Eight', 'score': 10},
        {'text': 'Eage', 'score': -2},
        {'text': 'Age', 'score': -2},
      ],
    },
    {
      'questionText': '9 - Sembilan',
      'answers': [
        {'text': 'Nain', 'score': -2},
        {'text': 'Nine', 'score': 10},
        {'text': 'Nein', 'score': -2},
        {'text': 'Nane', 'score': -2},
      ],
    },
    {
      'questionText': '10 - Sepuluh',
      'answers': [
        {'text': 'Teen', 'score': -2},
        {'text': 'Tin', 'score': -2},
        {'text': 'Taen', 'score': -2},
        {'text': 'Ten', 'score': 10},
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
