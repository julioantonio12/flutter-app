import 'package:flutter/material.dart';
import './question.dart';
import 'answer.dart';

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

  void _answerQuestion() {
    setState(() {
      _questionIndex += 1;
    });
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    const questions = [
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
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Primera aplicación"),
        ),
        body: Column(children: [
          Question(questions[_questionIndex]['questionText']), // as String
          ...(questions[_questionIndex]['answers'] as List<String>)
              .map((answer) {
            return Answer(_answerQuestion, answer);
          }).toList(),
        ]),
      ),
    );
  }
}
