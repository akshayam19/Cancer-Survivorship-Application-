import 'package:flutter/material.dart';
import 'package:survivorship_care_plan_app/pages/info_hub.dart';
import 'package:survivorship_care_plan_app/pages/setting.dart';
import 'package:survivorship_care_plan_app/pages/survey.dart';
import 'package:survivorship_care_plan_app/roadmap_components/timeline_tile.dart';

// Main page of app
class MainPage extends StatefulWidget {
  const MainPage({Key? key});
  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  // Variables
  int currentPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    FirstTimeSurvey.run(context); //Run first time survey
    return Scaffold(
      // App bar
      appBar: AppBar(
        leading: const Icon(Icons.account_circle_rounded),
        title: const Text('Survivor Care Plan'),
        actions: [
          IconButton(
            icon: const Icon(Icons.notifications),
            onPressed: () {
              // Handle notifications icon press
            },
          ),
          IconButton(
            icon: const Icon(Icons.star),
            onPressed: () {
              // Handle goals icon press
            },
          ),
        ],
      ),

      // body of app
      body: <Widget>[
        roadmap(context), // Roadmap page at index 0
        resources(context), // Resources page at index 1
        settings(context), // Settings page at index 2
      ][currentPageIndex],

      // Navigation bar
      bottomNavigationBar: NavigationBar(
        animationDuration: const Duration(seconds: 1),
        selectedIndex: currentPageIndex,
        onDestinationSelected: (index) {
          setState(() {
            currentPageIndex = index;
          });
        },
        destinations: _navBarItems,
      ),
    );
  }
}

// Navigation bar items
const _navBarItems = [
  NavigationDestination(
    icon: Icon(Icons.map_outlined),
    selectedIcon: Icon(Icons.map_rounded),
    label: 'Roadmap',
  ),
  NavigationDestination(
    icon: Icon(Icons.book_outlined),
    selectedIcon: Icon(Icons.book_rounded),
    label: 'Resources',
  ),
  NavigationDestination(
    icon: Icon(Icons.settings_outlined),
    selectedIcon: Icon(Icons.settings_rounded),
    label: 'Settings',
  ),
];

// Roadmap page
Widget roadmap(BuildContext context) {
  return ListView(
    children: const [
      // Survey tile
      MyTimelineTile(
        isFirst: true,
        isLast: false,
        isPast: true,
        stage: "Initial survey",
        icon: Icon(
          Icons.check_box_outline_blank,
          color: Colors.transparent, // make icon blank
          size: 80,
        ),
        nextPage: "",
      ),

      // Stage 1 tile
      MyTimelineTile(
        isFirst: false,
        isLast: false,
        isPast: true,
        stage: "Stage:\nDiagnosis",
        icon: Icon(
          Icons.medical_information,
          color: Color.fromARGB(255, 94, 75, 75),
          size: 80,
        ),
        nextPage: "diagnosis",
      ),

      // Survey tile
      MyTimelineTile(
        isFirst: false,
        isLast: false,
        isPast: false,
        stage: "Stage:\nPre-treatment",
        icon: Icon(
          Icons.check_box_outline_blank,
          color: Colors.transparent,
          size: 80,
        ),
        nextPage: "pre-treatment",
      ),

      // Stage 2 tile
      MyTimelineTile(
        isFirst: false,
        isLast: false,
        isPast: false,
        stage: "Stage:\nTreatment",
        icon: Icon(
          Icons.health_and_safety,
          color: Color.fromARGB(255, 243, 142, 33),
          size: 80,
        ),
        nextPage: "treatment",
      ),

      // Middle timeline
      MyTimelineTile(
        isFirst: false,
        isLast: false,
        isPast: false,
        stage: "Stage\nPost-treatment",
        icon: Icon(
          Icons.check_box_outline_blank,
          color: Colors.transparent,
          size: 80,
        ),
        nextPage: "post-treatment",
      ),

      // End timeline
      MyTimelineTile(
        isFirst: false,
        isLast: true,
        isPast: false,
        stage: "Survey",
        icon: Icon(
          Icons.flag,
          color: Color.fromARGB(255, 175, 201, 58),
          size: 80,
        ),
        nextPage: "",
      ),
    ],
  );
  
}

// Resources page
Widget resources(BuildContext context) {
  return const Center(
    child: Info_Hub_Rebuild()
  );
}

// Settings page
Widget settings(BuildContext context) {
  return const Center(
    child: Setting()
  );
}

