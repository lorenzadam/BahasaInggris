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
      'questionText': '0 - Nol',
      'answers': 'Zero',
    },
    {
      'questionText': '1 - Satu',
      'answers': 'One',
    },
    {
      'questionText': '2 - Dua',
      'answers': 'Two',
    },
    {
      'questionText': '3 - Tiga',
      'answers': 'Three',
    },
    {
      'questionText': '4 - Empat',
      'answers': 'Four',
    },
    {
      'questionText': '5 - Lima',
      'answers': 'Five',
    },
    {
      'questionText': '6 - Enam',
      'answers': 'Six',
    },
    {
      'questionText': '7 - Tujuh',
      'answers': 'Seven',
    },
    {
      'questionText': '8 - Delapan',
      'answers': 'Eight',
    },
    {
      'questionText': '9 - Sembilan',
      'answers': 'Nine',
    },
    {
      'questionText': '10 - Sepuluh',
      'answers': 'Ten',
    },
  ];

  void onPressed() {
    setState(() {
      if (this.name.trim().length == 0) return;

      if (this.name == questions[questionIndex]['answers']||this.name == questions[questionIndex]['answers'].toLowerCase){
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
