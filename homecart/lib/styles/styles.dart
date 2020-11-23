import 'package:flutter/material.dart';

class Styles {


  static Color fillColor = Color(0x990FEF5EC);
  static Color backgroundColor = Color(0xFFFCE2C5);

  static BoxDecoration boxdeco = BoxDecoration(
    gradient: LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      colors: <Color>[
      Colors.amber,
      Colors.greenAccent[100],
      Colors.deepPurple[100],
    ]),
  );

  static BoxDecoration tilesDeco = BoxDecoration(
    borderRadius: BorderRadius.all(Radius.circular(15)),
    gradient: LinearGradient(
      begin: Alignment.centerLeft,
      end: Alignment.centerRight,
      colors: <Color>[
      Colors.blue[300],
      Colors.limeAccent[100],
    ]),
  );

  static TextStyle heading1 = TextStyle(
    color: Colors.purple[400],
    fontSize: 34,
    fontStyle: FontStyle.italic,
    fontWeight: FontWeight.bold,
    shadows: <Shadow>[
      Shadow(
        offset: Offset(1.0, 2.0),
        blurRadius: 2.0,
        color: Color.fromARGB(255, 0, 0, 0),
      ),
      Shadow(
        offset: Offset(4.0, 2.0),
        blurRadius: 4.0,
        color: Color.fromARGB(125, 0, 0, 255),
      ),
    ],
  );

  static TextStyle pageHeading = TextStyle(
    letterSpacing: 1.5,
    color: Colors.lime[200],
    fontSize: 28,
    fontStyle: FontStyle.italic,
    fontWeight: FontWeight.bold,
    shadows: <Shadow>[
      Shadow(
        offset: Offset(2.0, 4.0),
        blurRadius: 4.0,
      ),
      Shadow(
        offset: Offset(4.0, 2.0),
        blurRadius: 8.0,
      ),
    ],
  );

  static TextStyle cardHeading = TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.bold,
  );

  static TextStyle basicHeading = TextStyle(
    fontSize: 15,
    fontWeight: FontWeight.bold,
    color: Colors.blue[900]
  );

  static TextStyle listHeading = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.bold,
    color: Colors.black87
  );

  static TextStyle floatButton = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w500,
    color: Colors.black87
  );

  static double width = double.infinity;
  static double height = double.infinity;

  


}
