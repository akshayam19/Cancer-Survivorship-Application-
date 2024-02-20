import 'package:flutter/material.dart';

class TreatmentPage extends StatefulWidget {
  const TreatmentPage({super.key});

  @override
  State<TreatmentPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<TreatmentPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Treatment Page"),
      ),
    );
  }
}
