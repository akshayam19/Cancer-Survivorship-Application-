import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

abstract class SurveyWidget extends StatelessWidget {
  const SurveyWidget({ super.key });
  @override
  Widget build(BuildContext context);

  void storeData();
}
//Survey questions contain a surveywidget which describe the type of response (multiple choice, text input, etc)
class SurveyQuestion extends StatelessWidget {
  final String question;
  final SurveyWidget type;
  const SurveyQuestion({super.key, required this.question, required this.type});
  
  @override
  Widget build(BuildContext context){
    return PopScope(
      canPop: false, //Disables the back button
      child: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(question, textAlign: TextAlign.center, textScaler: const TextScaler.linear(1.5),),
              ),
              type //SurveyWidget goes here
            ]
          ),
        ),
      ),
    );
  }
}
//Multiple choice type response
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
//The survey that users must take upon first loading the app
class FirstTimeSurvey{
  static void run(BuildContext context) async{
    var prefs = await SharedPreferences.getInstance();
    if(!(prefs.getBool('survey') ?? false)){
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
      prefs.setBool('survey', true);
    }
  }
}