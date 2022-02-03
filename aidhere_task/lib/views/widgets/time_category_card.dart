import 'package:aidhere_task/models/time_tracking_response.dart';
import 'package:flutter/material.dart';

class TimeCategoryCard extends StatelessWidget {
  final String backGroundImage;
  final TimeTrackingResponse timeTrackingResponse;

  const TimeCategoryCard(
      {Key? key,
      required this.backGroundImage,
      required this.timeTrackingResponse})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Card(
          child: Row(
            children: [
              const CircleAvatar(
                backgroundImage: AssetImage('assets/images/image-jeremy.png'),
                radius: 50,
              ),
              Column(
                children: const [
                  Text("Report for"),
                  Text("Jeremy Robson"),
                ],
              )
            ],
          ),
        ),
      ],
    );
  }
}
