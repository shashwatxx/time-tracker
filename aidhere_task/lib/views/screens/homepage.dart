import 'package:aidhere_task/controllers/time_tracking_controller.dart';
import 'package:aidhere_task/core/color_palatte.dart';
import 'package:aidhere_task/core/utils/get_icon.dart';
import 'package:aidhere_task/models/time_tracking_response.dart';
import 'package:aidhere_task/views/widgets/profile_card.dart';
import 'package:aidhere_task/views/widgets/time_category_card.dart';
import 'package:aidhere_task/views/widgets/tt_drawer.dart';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late TimeTrackingController timeTrackingController;

  @override
  void initState() {
    timeTrackingController =
        Provider.of<TimeTrackingController>(context, listen: false);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
      ),
      drawer: const TtDrawer(),
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

              /// Using Future Builder to get the data from the API and build the Cards
              FutureBuilder(
                  future: timeTrackingController.getTimeTrackingInfo(),
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
                    return Column(
                      children: [
                        const Text(
                          "No Data Found",
                          style: TextStyle(
                              color: ColorPalatte.white, fontSize: 30),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        ElevatedButton(
                            onPressed: () {
                              setState(() {});
                            },
                            child: const Text("Retry !"))
                      ],
                    );
                  })
            ],
          ),
        ),
      ),
    );
  }
}
