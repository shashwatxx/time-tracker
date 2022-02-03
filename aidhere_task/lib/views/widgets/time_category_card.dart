import 'package:aidhere_task/controllers/time_tracking_controller.dart';
import 'package:aidhere_task/core/color_palatte.dart';
import 'package:aidhere_task/core/utils/get_hours_from_period.dart';
import 'package:aidhere_task/core/utils/get_period_name.dart';
import 'package:aidhere_task/models/time_tracking_response.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';

class TimeCategoryCard extends StatelessWidget {
  final String backGroundImage;
  final Color backGroundColor;
  final TimeTrackingResponse timeTrackingResponse;

  const TimeCategoryCard(
      {Key? key,
      required this.backGroundImage,
      required this.timeTrackingResponse,
      required this.backGroundColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12.0),
      child: Stack(
        alignment: AlignmentDirectional.bottomEnd,
        children: [
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 14),
            width: double.infinity,
            height: 200,
            decoration: BoxDecoration(
              color: backGroundColor,
              borderRadius: BorderRadius.circular(20),
            ),
            padding: const EdgeInsets.only(right: 15),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                SvgPicture.asset(
                  backGroundImage,
                  fit: BoxFit.cover,
                  height: 75,
                ),
              ],
            ),
          ),
          Consumer<TimeTrackingController>(builder:
              (BuildContext context, TimeTrackingController controller, _) {
            return Container(
              height: 155,
              margin: const EdgeInsets.symmetric(horizontal: 14),
              decoration: BoxDecoration(
                color: ColorPalatte.darkBlue,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        timeTrackingResponse.title,
                        style: const TextStyle(
                            color: ColorPalatte.white,
                            fontSize: 18,
                            fontWeight: FontWeight.w500),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Text(
                        getHoursFromPeriod(controller.selectedPeriod,
                                    timeTrackingResponse.timeframes)
                                .current
                                .toString() +
                            'hrs',
                        style: const TextStyle(
                            color: ColorPalatte.white,
                            fontSize: 34,
                            fontWeight: FontWeight.w100),
                      )
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Icon(
                        Icons.more_horiz,
                        color: ColorPalatte.paleBlue,
                        size: 40,
                      ),
                      Text(
                        getPeriodName(controller.selectedPeriod) +
                            " - " +
                            getHoursFromPeriod(controller.selectedPeriod,
                                    timeTrackingResponse.timeframes)
                                .previous
                                .toString() +
                            'hrs',
                        style: TextStyle(
                            color: ColorPalatte.desaturatedBlue,
                            fontSize: 18,
                            fontWeight: FontWeight.w300),
                      )
                    ],
                  )
                ],
              ),
            );
          })
        ],
      ),
    );
  }
}
