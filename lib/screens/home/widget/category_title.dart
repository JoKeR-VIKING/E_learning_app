import 'package:flutter/material.dart';
import 'package:e_learning_app/constants/colors.dart';

class CategoryTitle extends StatelessWidget {
  final String leftText;
  final String rightText;

  const CategoryTitle(this.leftText, this.rightText, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Text>[
          Text(leftText, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: kFont)),
          Text(rightText, style: const TextStyle(fontSize: 16, color: kFontLight))
        ],
      )
    );
  }
}