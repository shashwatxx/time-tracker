import 'package:aidhere_task/controllers/time_tracking_controller.dart';
import 'package:aidhere_task/core/color_palatte.dart';
import 'package:aidhere_task/core/utils/period_enums.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

/// This is the widget that displays the Profile information
class ProfileCard extends StatelessWidget {
  const ProfileCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 14),
          height: 240,
          decoration: BoxDecoration(
            color: ColorPalatte.darkBlue,
            borderRadius: BorderRadius.circular(20),
          ),
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
          child: Consumer<TimeTrackingController>(builder:
              (BuildContext context, TimeTrackingController controller, _) {
            return Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                InkWell(
                  onTap: () {
                    controller.setSelectedPeriod(Period.daily);
                  },
                  child: Text(
                    "Daily",
                    style: TextStyle(
                      color: controller.selectedPeriod == Period.daily
                          ? Colors.white
                          : ColorPalatte.paleBlue,
                      fontSize: 22,
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    controller.setSelectedPeriod(Period.weekly);
                  },
                  child: Text(
                    "Weekly",
                    style: TextStyle(
                      color: controller.selectedPeriod == Period.weekly
                          ? Colors.white
                          : ColorPalatte.paleBlue,
                      fontSize: 22,
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    controller.setSelectedPeriod(Period.monthly);
                  },
                  child: Text(
                    "Monthly",
                    style: TextStyle(
                      color: controller.selectedPeriod == Period.monthly
                          ? Colors.white
                          : ColorPalatte.paleBlue,
                      fontSize: 22,
                    ),
                  ),
                ),
              ],
            );
          }),
        ),
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 14),
          decoration: BoxDecoration(
            color: ColorPalatte.blue,
            borderRadius: BorderRadius.circular(20),
          ),
          height: 150,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const CircleAvatar(
                radius: 44,
                backgroundColor: Colors.white,
                child: CircleAvatar(
                  backgroundImage: AssetImage('assets/images/image-jeremy.png'),
                  radius: 40,
                ),
              ),
              const SizedBox(
                width: 30,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Report for",
                    style: TextStyle(
                      color: ColorPalatte.paleBlue,
                      fontSize: 18,
                    ),
                  ),
                  const SizedBox(height: 5),
                  Text(
                    "Jeremy Robson",
                    style: TextStyle(
                      color: ColorPalatte.desaturatedBlue,
                      fontSize: 26,
                      fontWeight: FontWeight.w100,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ],
    );
  }
}
