import 'package:flutter/material.dart';

import './question.dart';

void main() => runApp(MyAppWriting());

class MyAppWriting extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppQuizState();
  }
}

class _MyAppQuizState extends State<MyAppWriting> {
  String name = '';
  String text = '';
  int questionIndex = 0;

  final questions = const [
    {
      'questionText': 'Merah',
      'answers': 'Red',
    },
    {
      'questionText': 'Kuning',
      'answers': 'Yellow',
    },
    {
      'questionText': 'Hijau',
      'answers': 'Green',
    },
    {
      'questionText': 'Biru',
      'answers': 'Blue',
    },
    {
      'questionText': 'Ungu',
      'answers': 'Purple',
    },
    {
      'questionText': 'Merah Muda',
      'answers': 'Pink',
    },
    {
      'questionText': 'Hitam',
      'answers': 'Black',
    },
    {
      'questionText': 'Putih',
      'answers': 'White',
    },
  ];

  void onPressed() {
    setState(() {
      if (this.name.trim().length == 0) return;

      if (this.name == questions[questionIndex]['answers']) {
        this.text = 'Benar';
        if (questionIndex < (questions.length - 1)) {
          questionIndex = questionIndex + 1;
        } else {
          questionIndex = 0;
        }
      } else {
        this.text = 'Salah';
      }
    });
  }

  void onChanged(String value) {
    setState(() {
      this.name = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Question(
                questions[questionIndex]['questionText'],
              ),
              Container(
                width: 300,
                child: TextField(
                  onChanged: (String value) {
                    onChanged(value);
                  },
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Jawaban',
                    hintText: 'Ketik Dalam Bahasa Inggris',
                  ),
                  autofocus: false,
                ),
              ),
              ElevatedButton(
                child: Text('Jawab'),
                onPressed: () {
                  onPressed();
                },
              ),
              Container(
                height: 15.0,
              ),
              Text(
                this.text,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
