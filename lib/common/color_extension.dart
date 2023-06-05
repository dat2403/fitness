import 'package:flutter/material.dart';

class TColor {
  //Primary
  static Color get primaryColor1 => const Color(0xff92A3FD);

  static Color get primaryColor2 => const Color(0xff9DCEFF);

  //Secondary
  static Color get secondaryColor1 => const Color(0xffC58BF2);

  static Color get secondaryColor2 => const Color(0xffEEA4CE);

  //Common
  static Color get black => const Color(0xff1D1617);

  static Color get gray => const Color(0xff7B6F72);

  static Color get white => Colors.white;

  //Gradient
  static List<Color> get primaryG => [primaryColor1, primaryColor2];

  static List<Color> get secondaryG => [secondaryColor1, secondaryColor2];
}
