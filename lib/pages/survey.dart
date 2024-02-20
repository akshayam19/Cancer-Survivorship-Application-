import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:survivorship_care_plan_app/theme.dart';

abstract class SurveyWidget extends StatelessWidget {
  const SurveyWidget({ super.key });
  @override
  Widget build(BuildContext context);

  void storeData();
}

//Survey questions contain a surveywidget which describe the type of response (multiple choice, text input, etc)
class SurveyQuestion extends StatelessWidget {
  final String question;
  final int questionNumber;
  final int questionTotal;
  final SurveyWidget type;
  const SurveyQuestion({super.key, required this.question, required this.type, required this.questionNumber, required this.questionTotal});
  
  @override
  Widget build(BuildContext context){
    
    List<Widget> progress = [];
    for(int i = 0; i < questionNumber; i++){
      progress.add(Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          width: 60,
          height: 15,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            color: myTheme.primaryColor
          )
        ),
      ));
    }
    for(int i = questionNumber; i < questionTotal; i++){
      progress.add(Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          width: 60,
          height: 15,
          decoration: BoxDecoration(
            border: Border.all(
              color: myTheme.primaryColor,
              width: 2.0, 
            ),
            borderRadius: BorderRadius.circular(10.0)
          ),
        ),
      ));
    }

    return PopScope(
      canPop: false, //Disables the back button
      child: Scaffold(
        backgroundColor: myTheme.scaffoldBackgroundColor,
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: 50,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                
                children: progress,

              ),
              Padding(
                padding: const EdgeInsets.only(top: 25),
                child: Text(question, textAlign: TextAlign.center, style: myTextStyle, textScaler: const TextScaler.linear(1.618),),
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [type],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    }, child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [Text('Skip', textAlign: TextAlign.center, style: myTextStyle,), Icon(Icons.fast_forward, color: myTheme.primaryColor,)] 
                    )),
                ],
              )
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
          style: ElevatedButton.styleFrom(
            elevation: 15, // Size of shadow
            shadowColor: const Color.fromARGB(255, 70, 90, 106),
            backgroundColor: const Color.fromARGB(255, 62, 146, 196),
            foregroundColor: Colors.white, // text color
          ),
          onPressed: () {
            storeData(); //data is stored at this point
            Navigator.of(context).pop();
          }, child: Text(e, textAlign: TextAlign.center, style: myTextStyleWhite,)),
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
          questionNumber: 3,
          questionTotal: 3,
          question: 'What race or ethnicity best describes you?',
          type: MultipleChoice(options: ['American Indian or Alaskan Native or something somet somethings', 'Asian / Pacific Islander', 'Black or African American', 'Hispanic', 'White / Caucasian']),)));
        Navigator.push(context, MaterialPageRoute(builder: (context) => const SurveyQuestion(
          questionNumber: 2,
          questionTotal: 3,
          question: 'What was your sex at birth?',
          type: MultipleChoice(options: ['Male', 'Female']),)));
        Navigator.push(context, MaterialPageRoute(builder: (context) => const SurveyQuestion(
          questionNumber: 1,
          questionTotal: 3,
          question: 'Where are you in your cancer journey?',
          type: MultipleChoice(options: ['Recently Diagnosed', 'In treatment', 'Post-Treatment']),)));
      });
      prefs.setBool('survey', true);
    }
  }
}