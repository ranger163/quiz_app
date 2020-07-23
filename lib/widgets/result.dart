import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int totalScore;

  Result(this.totalScore);

  String get resultMessage {
    String finalResult;
    if (totalScore <= 8)
      finalResult = 'Too bad dude!';
    else if (totalScore <= 18)
      finalResult = 'Not bad dude!';
    else if (totalScore <= 80)
      finalResult = 'Hooray ya Mohamed';
    else
      finalResult = 'El3b ya Samak';
    return finalResult;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        resultMessage,
        textAlign: TextAlign.center,
      ),
    );
  }
}
