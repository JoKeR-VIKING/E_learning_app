import 'package:e_learning_app/screens/home/widget/course_item.dart';
import 'package:flutter/material.dart';
import 'package:e_learning_app/screens/home/widget/category_title.dart';
import 'package:e_learning_app/models/course.dart';

class FeaturedCourse extends StatelessWidget {
  final List<Course> coursesList = Course.generateCourses();

  FeaturedCourse({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          const CategoryTitle('Top of the week', 'view all'),
          SizedBox(
            height: 300,
            child: ListView.separated(
              padding: const EdgeInsets.all(25),
              scrollDirection: Axis.horizontal,
              itemCount: coursesList.length,
              itemBuilder: (BuildContext context, int index) => CourseItem(coursesList[index]),
              separatorBuilder: (BuildContext context, int index) => const SizedBox(width: 15),
            ),
          )
        ]
      ),
    );
  }
}