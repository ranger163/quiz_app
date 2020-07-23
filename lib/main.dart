import 'package:flutter/material.dart';
import 'package:flutter_playground/widgets/answer.dart';

import './widgets/question.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  @override
  Widget build(BuildContext context) {
    var questions = [
      {
        'questionText': 'What\'s your favourite color?',
        'answers': ['Green', 'Blue', 'Red', 'Black']
      },
      {
        'questionText': 'What\'s your favourite animal?',
        'answers': ['Lion', 'Cat', 'Dog', 'Rabbit']
      },
      {
        'questionText': 'who\'s your favourite developer?',
        'answers': ['Nassar', 'Nassar', 'Nassar', 'Nassar']
      }
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Hello!'),
        ),
        body: Column(
          children: [
            Question(
              questions[_questionIndex]['questionText'],
            ),
            ...(questions[_questionIndex]['answers'] as List<String>)
                .map((answer) => Answer(answer, _answerQuestion))
                .toList()
          ],
        ),
      ),
    );
  }

  void _answerQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
  }
}
