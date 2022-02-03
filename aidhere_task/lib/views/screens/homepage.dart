import 'package:aidhere_task/models/time_tracking_response.dart';
import 'package:aidhere_task/views/widgets/profile_card.dart';
import 'package:aidhere_task/views/widgets/time_category_card.dart';
import 'package:flutter/material.dart';

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
              TimeCategoryCard(
                backGroundImage: 'assets/images/icon-work.svg',
                timeTrackingResponse: TimeTrackingResponse(
                    timeframes: Timeframes(
                        daily: TimeSpent(current: 300, previous: 400),
                        monthly: TimeSpent(current: 300, previous: 400),
                        weekly: TimeSpent(current: 300, previous: 400)),
                    title: "Work"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
