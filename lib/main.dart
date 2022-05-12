import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';

// void main() {
//   runApp(MyApp());
// }

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  var _totalScore = 0;

  final _questions = const [
    {
      'questionText': '¿Cuál es tu color favorito?',
      'answers': [
        {'text': 'Naranja', 'score': 4},
        {'text': 'Verde', 'score': 10},
        {'text': 'Azúl', 'score': 3},
        {'text': 'Rojo', 'score': 1},
        {'text': 'Amarillo', 'score': 6},
      ]
    },
    {
      'questionText': '¿Cuál es tu animal preferido?',
      'answers': [
        {'text': 'Tigre', 'score': 5},
        {'text': 'Tortuga', 'score': 10},
        {'text': 'Tiburón', 'score': 2},
        {'text': 'León', 'score': 7},
      ]
    },
    {
      'questionText': '¿Quién es el mejor jugador de LoL?',
      'answers': [
        {'text': 'Dzukill', 'score': 7},
        {'text': 'Faker', 'score': 10},
        {'text': 'Nemesis', 'score': 3},
      ]
    },
  ];

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestion(int score) {
    _totalScore += score;
    print("score" + _totalScore.toString());

    setState(() {
      _questionIndex += 1;
    });
    if (_questionIndex < _questions.length) {
      print('Hay más preguntas');
    }

    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Primera aplicación"),
          backgroundColor: Colors.green,
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
                questions: _questions,
              )
            : Result(_totalScore, _resetQuiz),
      ),
    );
  }
}
