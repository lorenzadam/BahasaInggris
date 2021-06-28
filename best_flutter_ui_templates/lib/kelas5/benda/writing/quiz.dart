import 'package:flutter/material.dart';

import './question.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int questionIndex;
  final Function answerQuestion;

  Quiz({
    @required this.questions,
    @required this.answerQuestion,
    @required this.questionIndex,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Question(
          questions[questionIndex]['questionText'],
        ),
        Container(
          width: 300,
          child: TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Jawaban',
              hintText: 'Ketik Dalam Bahasa Inggris',
            ),
            autofocus: false,
          ),
        ),
        Container(
          width: 300,
          child: ElevatedButton(
            child: Text(
              'Jawab',
              style: TextStyle(
                fontSize: 20.0,
              ),
            ),
            onPressed: () {},
          ),
        ),
      ],
    );
  }
}
