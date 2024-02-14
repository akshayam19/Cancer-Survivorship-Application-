import 'package:flutter/material.dart';
import 'package:survivorship_care_plan_app/info_hub.dart';

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


