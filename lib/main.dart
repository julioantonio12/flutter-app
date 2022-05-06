import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var questionIndex = 0;

  void answerQuestion() {
    setState(() {
      questionIndex += 1;
    });
    print(questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      "¿Cuál es tu color favorito?",
      "¿Cuál es tu animal preferido?"
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Primera aplicación"),
        ),
        body: Column(children: [
          Text(questions[questionIndex]),
          // RaisedButton()
          ElevatedButton(
            child: Text("Respuesta 1"),
            onPressed: answerQuestion,
          ),
          ElevatedButton(
            child: Text("Respuesta 2"),
            onPressed: () => print("Respuesta 2 escogida"),
          ),
          ElevatedButton(
            child: Text("Respuesta 3"),
            onPressed: () {
              print("Respuesta 3 escogida.");
            },
          ),
        ]),
      ),
    );
  }
}
