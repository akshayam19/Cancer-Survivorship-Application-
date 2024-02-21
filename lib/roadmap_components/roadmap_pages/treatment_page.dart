import 'package:flutter/material.dart';
import 'package:survivorship_care_plan_app/roadmap_components/roadmap_pages/onboarding_page_presenter.dart';

class TreatmentPage extends StatelessWidget {
  const TreatmentPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: OnboardingPagePresenter(
        pages: [
          MyOnboardingPageModel(
            title: 'It’s important to know',
            description:
                'How soon you need to make a treatment decision. You may seek a second or even third opinion before starting treatment.  Being able to talk openly and feel comfortable with your care team is important.',
            imgAsset: 'lib/images/treatment1.png',
            bgColor: const Color.fromARGB(255, 135, 215, 143),
          ),
          MyOnboardingPageModel(
            title: 'Questions to ask (part 1)',
            description:
                'How much experience do you have in treating my specific type of cancer?\nWhat are the treatment goals?\nWhich treatment do you recommend, and why?',
            imgAsset: 'lib/images/treatment2.png',
            bgColor: const Color.fromARGB(255, 211, 164, 113),
          ),
          MyOnboardingPageModel(
            title: 'Questions to ask (part 2)',
            description:
                'What are the risks and benefits of each treatment option?\nAre there clinical trials that I can be a part of?\nWhat side effects might I experience from each treatment?',
            imgAsset: 'lib/images/treatment3.png',
            bgColor: const Color(0xff1eb090),
          ),
          MyOnboardingPageModel(
            title: 'Questions to ask (part 3)',
            description:
                'What treatments are covered by my insurance?\nIs there somewhere else that might be appropriate for me to have treatment?\nWhat emotional and practical support services are available to me and my loved ones?',
            imgAsset: 'lib/images/treatment4.png',
            bgColor: const Color.fromARGB(255, 104, 122, 235),
          ),
          MyOnboardingPageModel(
            title: 'Summary of things you should know',
            description:
                '1. Treatment options and side-effects\n2. Insurance coverage for treatment\n3. Experience of doctor treating specific cancer\n4. Availability of emotional/practical services',
            imgAsset: 'lib/images/treatment5.png',
            bgColor: const Color.fromARGB(255, 209, 109, 114),
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
