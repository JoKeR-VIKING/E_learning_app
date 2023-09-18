import 'package:e_learning_app/constants/colors.dart';
import 'package:e_learning_app/screens/detail/widget/course_module.dart';
import 'package:flutter/material.dart';
import 'package:e_learning_app/models/module.dart';

class CourseProgress extends StatelessWidget {
  final modulesList = Module.generateModules();

  CourseProgress({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(25),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text('The progress', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: kFont)),
              Row(
                children: [
                  Image.asset('assets/icons/grid.png', width: 25),
                  const SizedBox(width: 15),
                  Image.asset('assets/icons/list.png', width: 25)
                ],
              )
            ],
          ),
          const SizedBox(height: 15),
          ...modulesList.map((module) => CourseModule(module)).toList()
        ]
      )
    );
  }
}