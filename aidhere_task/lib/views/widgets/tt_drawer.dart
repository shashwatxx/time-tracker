import 'package:aidhere_task/controllers/theme_controller.dart';
import 'package:aidhere_task/core/color_palatte.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';

/// This is the class for the Drawer of the App
class TtDrawer extends StatelessWidget {
  const TtDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeController>(builder: (context, themeController, _) {
      return Drawer(
        backgroundColor: themeController.isDark
            ? ColorPalatte.veryDarkBlue
            : ColorPalatte.desaturatedBlue,
        child: Column(
          children: [
            DrawerHeader(
                child: Row(
              children: [
                Text(
                  "Time Tracker",
                  style: TextStyle(
                      fontSize: 30,
                      color: themeController.isDark
                          ? ColorPalatte.desaturatedBlue
                          : ColorPalatte.veryDarkBlue),
                ),
                const Expanded(child: SizedBox()),
                GestureDetector(
                  onTap: () {
                    themeController.toggleTheme();
                  },
                  child: SvgPicture.asset(
                    themeController.isDark
                        ? "assets/images/lightthemeswitchdark.svg"
                        : "assets/images/darkthemeswitchlight.svg",
                    height: 40,
                  ),
                )
              ],
            )),
          ],
        ),
      );
    });
  }
}
