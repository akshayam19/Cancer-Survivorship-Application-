import 'package:flutter/material.dart';
import 'pages/survey.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      Navigator.push(context, MaterialPageRoute(builder: (context) => const SurveyQuestion(
              question: 'What is your favorite fruit?',
              type: MultipleChoice(options: ['banana', 'apple', 'strawberry']),)));
            Navigator.push(context, MaterialPageRoute(builder: (context) => const SurveyQuestion(
              question: 'What race or ethnicity best describes you?',
              type: MultipleChoice(options: ['American Indian or Alaskan Native or something somet somethings', 'Asian / Pacific Islander', 'Black or African American', 'Hispanic', 'White / Caucasian']),)));
            Navigator.push(context, MaterialPageRoute(builder: (context) => const SurveyQuestion(
              question: 'What was your sex at birth?',
              type: MultipleChoice(options: ['Male', 'Female']),)));
            Navigator.push(context, MaterialPageRoute(builder: (context) => const SurveyQuestion(
              question: 'At what stage is your diagnosis?',
              type: MultipleChoice(options: ['Recently diagnosed', 'In treatment', 'Cured']),)));
    });
    return Scaffold(
      appBar: AppBar(
        title: Text('Survey App'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            
          },
          child: Text('Take Survey'),
        ),
      ),
    );
  }
}