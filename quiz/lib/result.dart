import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetQuiz;
  Result(this.resultScore, this.resetQuiz);

  String get resultPhrase {
    var resultText = 'Quiz complete.';

    if (resultScore > 70) {
      resultText = 'G_G';
    } else if (resultScore < 69) {
      resultText = 'g_g';
    }

    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text(
            resultPhrase,
            style: TextStyle(
                fontSize: 36,
                fontWeight: FontWeight.bold,
                color: Colors.deepOrange),
            textAlign: TextAlign.center,
          ),
          FlatButton(
            child: Text('restart quiz'),
            textColor: Colors.deepOrangeAccent,
            onPressed: resetQuiz,
          ),
        ],
      ),
    );
  }
}
