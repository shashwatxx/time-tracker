import 'package:aidhere_task/controllers/time_tracking_controller.dart';
import 'package:aidhere_task/core/color_palatte.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import 'views/screens/homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (ctx) => TimeTrackingController(),
        )
      ],
      builder: (context, _) => MaterialApp(
        title: 'Aidhere Task',
        theme: ThemeData(
          scaffoldBackgroundColor: ColorPalatte.veryDarkBlue,
          fontFamily: GoogleFonts.rubik().fontFamily,
        ),
        home: const HomePage(),
      ),
    );
  }
}
