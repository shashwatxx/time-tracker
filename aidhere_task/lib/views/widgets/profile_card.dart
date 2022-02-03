import 'package:aidhere_task/core/color_palatte.dart';
import 'package:flutter/material.dart';

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
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                "Daily",
                style: TextStyle(
                  color: Colors.white.withOpacity(0.6),
                  fontSize: 22,
                ),
              ),
              const Text(
                "Weekly",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 22,
                ),
              ),
              Text(
                "Monthly",
                style: TextStyle(
                  color: Colors.white.withOpacity(0.6),
                  fontSize: 22,
                ),
              ),
            ],
          ),
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
