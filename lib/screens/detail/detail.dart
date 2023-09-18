import 'package:e_learning_app/screens/detail/widget/course_description.dart';
import 'package:e_learning_app/screens/detail/widget/course_progress.dart';
import 'package:e_learning_app/screens/detail/widget/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:e_learning_app/models/course.dart';

class Detail extends StatelessWidget {
  final Course course;

  const Detail(this.course, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            CustomAppBar(course),
            CourseDescription(course),
            CourseProgress()
          ],
        ),
      )
    );
  }
}