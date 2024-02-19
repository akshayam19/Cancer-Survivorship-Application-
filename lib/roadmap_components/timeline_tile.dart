import 'package:flutter/material.dart';
import 'package:timeline_tile/timeline_tile.dart';
import 'package:survivorship_care_plan_app/roadmap_components/stage_button.dart';

class MyTimelineTile extends StatelessWidget {
  final bool isFirst;
  final bool isLast;
  final bool isPast;
  final String stage;
  final Icon icon;
  final String nextPage;
  const MyTimelineTile({
    super.key,
    required this.isFirst,
    required this.isLast,
    required this.isPast,
    required this.stage,
    required this.icon,
    required this.nextPage,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(50.0),
            child: icon, // Icon left to timeline
          ),
          SizedBox(
            width: 230, // Width of button
            height: 200, // Gap between stages
            child: TimelineTile(
              isFirst: isFirst,
              isLast: isLast,

              // style lines
              beforeLineStyle: LineStyle(
                color: isPast
                    ? const Color.fromARGB(255, 54, 212, 80)
                    : Colors.black,
              ),

              // style icons
              indicatorStyle: IndicatorStyle(
                  width: 40,
                  color: isPast
                      ? const Color.fromARGB(255, 54, 212, 80)
                      : Colors.grey,
                  iconStyle: IconStyle(
                      iconData: isPast ? Icons.check : Icons.not_interested)),

              // stage card
              endChild: StageCard(
                text: stage,
                navigationPage: nextPage,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
