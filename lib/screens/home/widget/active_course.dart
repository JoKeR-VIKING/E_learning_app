import 'package:e_learning_app/constants/colors.dart';
import 'package:e_learning_app/screens/home/widget/category_title.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class ActiveCourse extends StatelessWidget {
  const ActiveCourse({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          const CategoryTitle('Currently active', 'view all'),
          Container(
            margin: const EdgeInsets.all(25),
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: kFontLight.withOpacity(0.1),
              border: Border.all(color: kFontLight.withOpacity(0.3), width: 1),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Image.asset('assets/images/progress.png', width: 60),
                    ),
                    const SizedBox(width: 20),
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Text>[
                        Text(
                          'Symmetry theory',
                          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: kFont)
                        ),
                        Text(
                          '2 lessons left',
                          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: kFontLight)
                        )
                      ],
                    )
                  ]
                ),
                CircularPercentIndicator(
                  radius: 60.0,
                  lineWidth: 5.0,
                  percent: 0.61,
                  center: const Text(
                    '61%',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  progressColor: kAccent,
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(left: 25, right: 25),
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: kFontLight.withOpacity(0.1),
              border: Border.all(color: kFontLight.withOpacity(0.3), width: 1),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: Image.asset('assets/images/course03.png', width: 60),
                      ),
                      const SizedBox(width: 20),
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Text>[
                          Text(
                              'Algebra',
                              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: kFont)
                          ),
                          Text(
                              '6 lessons left',
                              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: kFontLight)
                          )
                        ],
                      )
                    ]
                ),
                CircularPercentIndicator(
                  radius: 60.0,
                  lineWidth: 5.0,
                  percent: 0.31,
                  center: const Text(
                    '31%',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  progressColor: kAccent,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}