import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  int _totalScore = 0;

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  final _questions = const [
    {
      'questionText':
          'Welcome to Myers-Briggs Type Indicator. \nThis test will describe your personality based on 4 questions.',
      'answers': [
        {'text': 'Start the quiz!', 'score': 0}
      ],
    },
    {
      'questionText':
          'It was a long and tough week, you\'re feeling exhausted. How would you plan to spend the weekend?',
      'answers': [
        {
          'text':
              'I\'ll call my friends and ask for their plans. I have to go outside.',
          'score': 11
        },
        {
          'text':
              'I\'ll switch my phone to "flight mode" and remain at home, watching TV.',
          'score': 43
        }
      ],
    },
    {
      'questionText':
          'Choose from the two statements below the one which describes your personality better.',
      'answers': [
        {
          'text':
              'What is importatnt to me is that\'s happening right now. Facts & details matter.',
          'score': 27
        },
        {
          'text':
              'Facts are boring. I enjoy dreaming and creating custom scenarios in my head.',
          'score': 39
        }
      ],
    },
    {
      'questionText':
          'Another company offers you higher salary, but yours present has a good team. Your choice?',
      'answers': [
        {
          'text':
              'I\'ll make decision based on info about that company, talk to HR, etc.',
          'score': 55
        },
        {
          'text': 'I\'ll make a decision based on my feelings alone.',
          'score': 72
        }
      ],
    },
    {
      'questionText':
          'It\'s only 2 weeks left until your best friends\' wedding. How are your arrangements going?',
      'answers': [
        {
          'text':
              'Everything is well prepaired a long time ago, I have all set and ready.',
          'score': 97
        },
        {
          'text':
              'Why should I worry? I am going to make decisions on the spot!',
          'score': 81
        }
      ],
    }
  ];

  void _answerQuestion(int score) {
    _totalScore += score;

    setState(() {
      _questionIndex += 1;
    });
    print(_questionIndex);
    if (_questionIndex < _questions.length) {
      print('We have more questions.');
    } else {
      print('No more questions.');
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          backgroundColor: Color.fromARGB(255, 104, 138, 67),
          appBar: AppBar(
            title: Text('MBTI ver 1.0 (03/22)'),
            centerTitle: true,
            backgroundColor: Color.fromARGB(255, 104, 138, 67),
            titleTextStyle: TextStyle(
                color: Color.fromRGBO(228, 239, 200, 5),
                fontSize: 25,
                fontFamily: 'RobotoMono'),
          ),
          body: _questionIndex < _questions.length
              ? Quiz(
                  answerQuestion: _answerQuestion,
                  questionIndex: _questionIndex,
                  questions: _questions,
                )
              : Result(_totalScore, _resetQuiz)),
    );
  }
}
