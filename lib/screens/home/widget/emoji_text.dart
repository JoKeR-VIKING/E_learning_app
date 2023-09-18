import 'package:flutter/material.dart';
import 'package:e_learning_app/constants/colors.dart';

class EmojiText extends StatelessWidget {
  const EmojiText({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 25),
      child: RichText(
          text: const TextSpan(
            children: <TextSpan>[
              TextSpan(
                text: 'Let\'s boot your\nbrain power ',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 26,
                  color: kFont
                )
              ),
              TextSpan(
                text: '✨',
                style: TextStyle(
                    fontSize: 26
                )
              ),
            ],
          ),
      ),
    );
  }
}