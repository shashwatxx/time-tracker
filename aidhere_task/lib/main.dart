import 'package:aidhere_task/controllers/theme_controller.dart';
import 'package:aidhere_task/controllers/time_tracking_controller.dart';
import 'package:flutter/material.dart';
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
        ),
        ChangeNotifierProvider(
          create: (ctx) => ThemeController(),
        )
      ],
      builder: (context, _) =>
          Consumer<ThemeController>(builder: (context, themeController, _) {
        return MaterialApp(
          title: 'Aidhere Task',
          theme: themeController.getMaterialTheme(),
          home: const HomePage(),
        );
      }),
    );
  }
}
