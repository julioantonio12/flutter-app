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

  final _questions = const [
    {
      'questionText': '¿Cuál es tu color favorito?',
      'answers': ['Rojo', 'Verde', 'Amarillo', 'Naranja', 'Azúl']
    },
    {
      'questionText': '¿Cuál es tu animal preferido?',
      'answers': ['Tortuga', 'León', 'Tigre', 'Tiburón']
    },
    {
      'questionText': '¿Quién es el mejor jugador de LoL?',
      'answers': ['Dzukill', 'Nemesis', 'Faker']
    },
  ];

  void _answerQuestion() {
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
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
                questions: _questions,
              )
            : Result(),
      ),
    );
  }
}
