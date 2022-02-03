import 'package:aidhere_task/core/color_palatte.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ThemeController extends ChangeNotifier {
  bool _isDark = true;
  bool get isDark => _isDark;

  /// Changes theme
  void toggleTheme() {
    _isDark = !_isDark;
    notifyListeners();
  }

  /// Returns the theme based on the current state
  ThemeData getMaterialTheme() {
    if (isDark) {
      return _themeDataDark;
    } else {
      return _themeDataLight;
    }
  }

  /// Returns the theme if the current state is dark
  final ThemeData _themeDataDark = ThemeData.dark().copyWith(
    scaffoldBackgroundColor: ColorPalatte.veryDarkBlue,
    appBarTheme: AppBarTheme(backgroundColor: ColorPalatte.veryDarkBlue),
  );

  /// Returns the theme if the current state is light
  final ThemeData _themeDataLight = ThemeData(
    scaffoldBackgroundColor: ColorPalatte.white,
    fontFamily: GoogleFonts.rubik().fontFamily,
    appBarTheme: AppBarTheme(backgroundColor: ColorPalatte.desaturatedBlue),
  );
}
