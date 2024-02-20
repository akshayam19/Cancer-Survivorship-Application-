import 'package:flutter/material.dart';

class DiagnosisPage extends StatefulWidget {
  const DiagnosisPage({super.key});

  @override
  State<DiagnosisPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<DiagnosisPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Diagnosis Page"),
      ),
    );
  }
}
