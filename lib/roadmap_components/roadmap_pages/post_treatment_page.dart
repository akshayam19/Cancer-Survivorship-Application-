import 'package:flutter/material.dart';
import 'package:survivorship_care_plan_app/roadmap_components/roadmap_pages/onboarding_page_presenter.dart';

class PostTreatmentPage extends StatelessWidget {
  const PostTreatmentPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: OnboardingPagePresenter(
        pages: [
          MyOnboardingPageModel(
            title: 'When you have finished',
            description:
                'Your cancer treatment, it’s important to talk with your doctor about next steps and follow-up care. You may want to ask your doctor some of the following questions:',
            imgAsset: 'lib/images/post-treatment1.png',
            bgColor: const Color.fromARGB(255, 135, 215, 206),
          ),
          MyOnboardingPageModel(
            title: 'Questions to ask (part 1)',
            description:
                'Can you provide me with a survivorship care plan?\nHow long will it take for me to get better and feel more like myself?\nWhat care should I expect after my treatment?',
            imgAsset: 'lib/images/post-treatment2.png',
            bgColor: const Color.fromARGB(255, 211, 113, 113),
          ),
          MyOnboardingPageModel(
            title: 'Questions to ask (part 2)',
            description:
                'What long-term health issues can I expect as a result of my cancer and its treatment?\nWhat is the chance that my cancer will return?\nWhat symptoms should I tell you about?',
            imgAsset: 'lib/images/post-treatment3.png',
            bgColor: const Color(0xff1eb090),
          ),
          MyOnboardingPageModel(
            title: 'Questions to ask (part 3)',
            description:
                'Who do I call if I develop these symptoms?\nWhat can I do to be as healthy as possible?\nWhich doctor(s) should I see for my follow-up care? How often?',
            imgAsset: 'lib/images/post-treatment4.png',
            bgColor: const Color.fromARGB(255, 104, 163, 235),
          ),
          MyOnboardingPageModel(
            title: 'Questions to ask (part 4)',
            description:
                'What tests do I need after treatment is over? How often will I have the tests?\nWhat records do I need to keep about my treatment?\nIs there a counselor or group I can talk to?',
            imgAsset: 'lib/images/post-treatment5.png',
            bgColor: const Color.fromARGB(255, 235, 183, 104),
          ),
          MyOnboardingPageModel(
            title: 'Summary of things you should know',
            description:
                '1. Availability of a survivorship care\n2. Symptoms to be aware of and who to contact if you experience them\n3. Additional doctors to see after treatment\n4. Availability of counselors or support groups',
            imgAsset: 'lib/images/post-treatment6.png',
            bgColor: const Color.fromARGB(255, 144, 109, 209),
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
