import 'package:aidhere_task/core/color_palatte.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'views/screens/homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Aidhere Task',
      theme: ThemeData(
        scaffoldBackgroundColor: ColorPalatte.veryDarkBlue,
        fontFamily: GoogleFonts.rubik().fontFamily,
      ),
      home: const HomePage(),
    );
  }
}
