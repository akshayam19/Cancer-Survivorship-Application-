import 'package:flutter/material.dart';
import 'package:survivorship_care_plan_app/roadmap_components/roadmap_pages/pre_treatment.dart';
import 'package:survivorship_care_plan_app/roadmap_components/roadmap_pages/diagnosis_page.dart';
import 'package:survivorship_care_plan_app/roadmap_components/roadmap_pages/treatment_page.dart';
import 'package:survivorship_care_plan_app/roadmap_components/roadmap_pages/post_treatment_page.dart';

class StageCard extends StatelessWidget {
  final String text; // Text on button
  final String navigationPage; // Page to go on button press

  const StageCard({
    super.key,
    required this.text,
    required this.navigationPage,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(30),
      child: SizedBox(
        height: 80, // Height of the button
        child: ElevatedButton(
          // Style button
          style: ElevatedButton.styleFrom(
            elevation: 15, // Size of shadow
            shadowColor: const Color.fromARGB(255, 70, 90, 106),
            backgroundColor: const Color.fromARGB(255, 62, 146, 196),
            foregroundColor: Colors.white, // text color
          ),

          child: Text(text), // Text on button

          // On press takes to different page
          onPressed: () {
            Widget Function(BuildContext)? builder;
            if (navigationPage == "diagnosis") {
              builder = (BuildContext context) => const DiagnosisPage();
            } else if (navigationPage == "pre-treatment") {
              builder = (BuildContext context) => const PreTreatmentPage();
            } else if (navigationPage == "treatment") {
              builder = (BuildContext context) => const TreatmentPage();
            } else if (navigationPage == "post-treatment") {
              builder = (BuildContext context) => const PostTreatmentPage();
            } else {
              builder = null; // Do nothing
            }
            // Navigate to page based on navigationPage
            if (builder != null) {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: builder,
                ),
              );
            }
          },
        ),
      ),
    );
  }
}
