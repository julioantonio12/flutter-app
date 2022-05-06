import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  void answerQuestion() {
    print("Respuesta seleccionada.");
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Primera aplicación"),
        ),
        body: Column(children: [
          Text("¿Esto es una pregunta?"),
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
