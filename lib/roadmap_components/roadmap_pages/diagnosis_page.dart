import 'package:flutter/material.dart';
import 'package:survivorship_care_plan_app/roadmap_components/roadmap_pages/onboarding_page_presenter.dart';

class DiagnosisPage extends StatelessWidget {
  const DiagnosisPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: OnboardingPagePresenter(
        pages: [
          MyOnboardingPageModel(
            title: 'When you receive cancer diagnosis',
            description:
                'It is normal to feel scared, sad, and worried. After your diagnosis, there are some important pieces of information to know such as the cancer type you have, the cancer stage, and what symptoms you may experience.',
            imgAsset: 'lib/images/Diagnosis1.png',
            bgColor: const Color.fromARGB(255, 133, 182, 255),
          ),
          MyOnboardingPageModel(
            title: 'If you don’t know this information',
            description:
                'That is totally okay, we have provided some questions on the next page that may be helpful when speaking with your doctor.',
            imgAsset: 'lib/images/Diagnosis2.png',
            bgColor: const Color(0xff1eb090),
          ),
          MyOnboardingPageModel(
            title: 'Questions to ask',
            description:
                'What is the exact name of the cancer I have?\nWhat is the cancer type and subtype?\nWhat is the cancer stage?\nWhere did the cancer start? And where is it located now?',
            imgAsset: 'lib/images/Diagnosis3.png',
            bgColor: const Color(0xfffeae4f),
          ),
          MyOnboardingPageModel(
            title: 'Summary of things you should know',
            description:
                '1. Cancer type\n2. Cancer Stage\n3. If your cancer has spread to other areas\n4. What symptoms you may experience from cancer',
            imgAsset: 'lib/images/Diagnosis4.png',
            bgColor: const Color.fromARGB(255, 158, 113, 167),
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
