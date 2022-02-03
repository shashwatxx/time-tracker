import 'package:aidhere_task/core/color_palatte.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ThemeController extends ChangeNotifier {
  bool _isDark = true;
  bool get isDark => _isDark;

  void toggleTheme() {
    _isDark = !_isDark;
    notifyListeners();
  }

  ThemeData getMaterialTheme() {
    if (isDark) {
      return _themeDataDark;
    } else {
      return _themeDataLight;
    }
  }

  final ThemeData _themeDataDark = ThemeData.dark().copyWith(
    scaffoldBackgroundColor: ColorPalatte.veryDarkBlue,
    appBarTheme: AppBarTheme(backgroundColor: ColorPalatte.veryDarkBlue),
  );
  final ThemeData _themeDataLight = ThemeData(
    scaffoldBackgroundColor: ColorPalatte.white,
    fontFamily: GoogleFonts.rubik().fontFamily,
    appBarTheme: AppBarTheme(backgroundColor: ColorPalatte.desaturatedBlue),
  );
}
