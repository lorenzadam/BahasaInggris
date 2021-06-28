import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetHandler;

  Result(this.resultScore, this.resetHandler);

  //Remark Logic
  String get resultPhrase {
    String resultText;
    if (resultScore >= 41) {
      resultText = 'Sangat Hebat!';
      print(resultScore);
    } else if (resultScore >= 31) {
      resultText = 'Cukup Hebat!';
      print(resultScore);
    } else if (resultScore >= 21) {
      resultText = 'Lebih banyak lagi belajar!';
    } else if (resultScore >= 1) {
      resultText = 'Lebih banyak lagi belajar!';
    } else {
      resultText = 'Yahhh skor kamu tidak bagus!';
      print(resultScore);
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ), //Text
          Text(
            'Skor ' '$resultScore',
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ), //Text
          ElevatedButton(
            child: Text(
              'Ulangi Permainan!',
            ), //Text
            //textColor: Colors.blue,
            onPressed: resetHandler,
          ),
        ],
      ),
    );
  }
}
