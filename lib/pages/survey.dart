import 'package:flutter/material.dart';

abstract class SurveyWidget extends StatelessWidget {
  const SurveyWidget({ super.key });
  @override
  Widget build(BuildContext context);

  void storeData();
}

class SurveyQuestion extends StatelessWidget {
  final String question;
  final SurveyWidget type;
  const SurveyQuestion({super.key, required this.question, required this.type});
  
  @override
  Widget build(BuildContext context){

    return PopScope(
      canPop: false,
      child: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(question, textAlign: TextAlign.center, textScaler: const TextScaler.linear(1.5),),
            ), type]
          ),
        ),
      ),
    );
  }
}

class MultipleChoice extends SurveyWidget{
  final List<String> options;

  const MultipleChoice({super.key, required this.options});

  @override
  void storeData() {
    // TODO: implement storeData
  }

  @override
  Widget build(BuildContext context){

    List<Widget> optionsAsWidget = (options.map((e) => Padding(
      padding: const EdgeInsets.all(15),
      child: SizedBox(
        width: 400,
        height: 60,
        child: ElevatedButton( 
          onPressed: () {
            storeData(); //data is stored at this point
            Navigator.of(context).pop();
          }, child: Text(e, textAlign: TextAlign.center,)),
      ),
      )
    ).toList());
    List<Widget> childrenList = [];
    childrenList.addAll(optionsAsWidget);

    return Column(
      children: childrenList,
    );
  }
}