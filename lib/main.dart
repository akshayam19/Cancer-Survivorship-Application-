import 'package:flutter/material.dart';
import 'pages/mainPage.dart'; // Import mainPage file
import 'theme.dart'; // Import theme file

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Info_Hub(),
    );
  }
}