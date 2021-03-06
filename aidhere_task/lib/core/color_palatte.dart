import 'package:flutter/material.dart';

///This Class provides static colors for the app using HslColor
class ColorPalatte {
  //Primary Colors
  static const Color white = Colors.white;

  static final Color blue =
      const HSLColor.fromAHSL(1, 246, 0.80, 0.60).toColor();

  static final Color lightRedWork =
      const HSLColor.fromAHSL(1, 15, 1, 0.70).toColor();

  static final Color softBluePlay =
      const HSLColor.fromAHSL(1, 195, 0.74, 0.62).toColor();

  static final Color lightRedStudy =
      const HSLColor.fromAHSL(1, 348, 1, 0.68).toColor();

  static final Color limeGreenExcercise =
      const HSLColor.fromAHSL(1, 145, 0.58, 0.55).toColor();

  static final Color violetSocial =
      const HSLColor.fromAHSL(1, 264, 0.64, 0.52).toColor();

  static final Color softOrangeSelfcare =
      const HSLColor.fromAHSL(1, 43, 0.84, 0.65).toColor();

  //Neutral Colors
  static final Color veryDarkBlue =
      const HSLColor.fromAHSL(1, 226, 0.43, 0.10).toColor();

  static final Color darkBlue =
      const HSLColor.fromAHSL(1, 235, 0.46, 0.20).toColor();

  static final Color desaturatedBlue =
      const HSLColor.fromAHSL(1, 235, 1, 0.87).toColor();

  static final Color paleBlue =
      const HSLColor.fromAHSL(1, 236, 1, 0.87).toColor();

// to get Background color for the Cards
  static Color getBgColor(String title) {
    switch (title) {
      case "Work":
        return lightRedWork;
      case "Play":
        return softBluePlay;
      case "Study":
        return lightRedStudy;
      case "Exercise":
        return limeGreenExcercise;
      case "Social":
        return violetSocial;
      case "Self Care":
        return softOrangeSelfcare;

      default:
        return white;
    }
  }
}
