import 'package:aidhere_task/controllers/time_tracking_controller.dart';
import 'package:aidhere_task/core/color_palatte.dart';
import 'package:aidhere_task/core/utils/get_icon.dart';
import 'package:aidhere_task/models/time_tracking_response.dart';
import 'package:aidhere_task/views/widgets/profile_card.dart';
import 'package:aidhere_task/views/widgets/time_category_card.dart';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              const ProfileCard(),
              const SizedBox(
                height: 20,
              ),
              Consumer<TimeTrackingController>(builder: (BuildContext context,
                  TimeTrackingController controller, Widget? child) {
                return FutureBuilder(
                    future: controller.getTimeTrackingInfo(),
                    builder: (context,
                        AsyncSnapshot<List<TimeTrackingResponse>> snapshot) {
                      if (snapshot.connectionState == ConnectionState.waiting) {
                        return const Center(child: CircularProgressIndicator());
                      }
                      if (snapshot.hasData && snapshot.data != null) {
                        return Expanded(
                          child: ListView.builder(
                            itemCount: snapshot.data?.length,
                            itemBuilder: (context, index) {
                              return TimeCategoryCard(
                                backGroundColor: ColorPalatte.getBgColor(
                                    snapshot.data![index].title),
                                backGroundImage:
                                    getIcon(snapshot.data![index].title),
                                timeTrackingResponse: snapshot.data![index],
                              );
                            },
                          ),
                        );
                      }
                      return const Text(
                        "No data Found",
                        style: TextStyle(color: ColorPalatte.white),
                      );
                    });
              })
              // TimeCategoryCard(
              //   backGroundImage: workIcon,
              //   backGroundColor: ColorPalatte.lightRedWork,
              //   timeTrackingResponse: TimeTrackingResponse(
              //       timeframes: Timeframes(
              //           daily: TimeSpent(current: 300, previous: 400),
              //           monthly: TimeSpent(current: 300, previous: 400),
              //           weekly: TimeSpent(current: 300, previous: 400)),
              //       title: "Work"),
              // )
            ],
          ),
        ),
      ),
    );
  }
}
