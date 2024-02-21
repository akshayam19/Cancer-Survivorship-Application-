import 'package:flutter/material.dart';
import 'package:survivorship_care_plan_app/roadmap_components/roadmap_pages/onboarding_page_presenter.dart';

class PreTreatmentPage extends StatelessWidget {
  const PreTreatmentPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: OnboardingPagePresenter(
        pages: [
          MyOnboardingPageModel(
            title: 'People who have had cancer often',
            description:
                'Describe their experience as one where they lost hope. Having the right information and knowing what questions to ask can help you gain a sense of control as you face difficult decisions about your treatment.',
            imgAsset: 'lib/images/pre-treatment1.png',
            bgColor: const Color.fromARGB(255, 201, 215, 135),
          ),
          MyOnboardingPageModel(
            title: 'Questions to ask (part 1)',
            description:
                'Will I need more tests before treatment begins? Which ones?\nWhich types of doctors do I need to see for my cancer treatment?\nWhere can I get a second opinion?',
            imgAsset: 'lib/images/pre-treatment2.png',
            bgColor: const Color.fromARGB(255, 207, 147, 216),
          ),
          MyOnboardingPageModel(
            title: 'Questions to ask (part 2)',
            description:
                'How serious is my cancer?\nAre there treatment options available for me?\nWhat are my chances of survival?',
            imgAsset: 'lib/images/pre-treatment3.png',
            bgColor: const Color(0xff1eb090),
          ),
          MyOnboardingPageModel(
            title: 'Summary of things you should know',
            description:
                '1. Other doctors to see\n2. Additional tests needed\n3. Steps to obtain a second opinion\n4. Details about cancer and treatment options',
            imgAsset: 'lib/images/pre-treatment4.png',
            bgColor: const Color.fromARGB(255, 109, 154, 209),
          ),
        ],
        onFinish: () {
          // Callback function to navigate back to the original page
          Navigator.pop(context);
        },
      ),
    );
  }
}
