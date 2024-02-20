import 'package:flutter/material.dart';

class PostTreatmentPage extends StatefulWidget {
  const PostTreatmentPage({super.key});

  @override
  State<PostTreatmentPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<PostTreatmentPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Post-Treatment Page"),
      ),
    );
  }
}
