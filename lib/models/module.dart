import 'package:e_learning_app/constants/colors.dart';
import 'package:flutter/material.dart';

class Module {
  Color iconBorder;
  Color iconBg;
  Color iconColor;
  IconData icon;
  String title;
  String desc;
  Color moduleBorder;
  Color moduleBg;
  Color buttonColor;
  Color buttonFont;
  String lesson;
  String time;

  Module(this.iconBorder, this.iconBg, this.iconColor, this.icon, this.title, this.desc, this.moduleBorder, this.moduleBg, this.buttonColor, this.buttonFont, this.lesson, this.time);

  static List<Module> generateModules() {
    return [
      Module(
        kAccent,
        kAccent,
        Colors.white,
        Icons.play_arrow_rounded,
        'MODULE 1',
        'Plant Kingdom.\nIntroduction',
        kPrimaryLight,
        kPrimaryLight,
        kPrimary,
        kPrimaryDark,
        '2 lessons',
        '22m'
      ),
      Module(
        kFontLight.withOpacity(0.3),
        Colors.white,
        kFontLight.withOpacity(0.7),
        Icons.lock_outline_rounded,
        'MODULE 2',
        'Morphology of\nFlowering Plants',
        kPrimaryLight,
        Colors.white,
        Colors.grey.withOpacity(0.2),
        Colors.grey,
        '2 lessons',
        '32m'
      )
    ];
  }
}