import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
   @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }

}

class _MyAppState extends State<MyApp> {

  final _questions = const [
    {
      'questionText': 'What\'s your favourite color?',
      'answers': [ 'Blue', 'Red', 'White', 'Black']
    },
    {
      'questionText': 'What\'s your favourite animal?',
      'answers': [ 'Horse', 'Dog', 'Cat', 'Snake']
    },
    {
      'questionText': 'What\'s your favourite book?',
      'answers': [ 'Saint', 'Skin', 'White', 'Sinner']
    },
  ];

  var _questionIndex = 0;

  void _answerQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
    if(_questionIndex < _questions.length){
      print('We have more questions');
    }
  }

    @override
    Widget build(BuildContext context) {
      return MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: Text('Quiz App'),
          ),
          body: _questionIndex < _questions.length ? Quiz(
            answerQuestion: _answerQuestion,
            questionIndex: _questionIndex,
            questions: _questions,) :
          Result(),
        ),
      );
    }
  }


