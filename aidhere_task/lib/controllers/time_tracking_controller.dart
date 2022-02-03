import 'dart:developer';

import 'package:aidhere_task/core/urls.dart';
import 'package:aidhere_task/core/utils/period_enums.dart';
import 'package:aidhere_task/models/time_tracking_response.dart';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;

class TimeTrackingController extends ChangeNotifier {
  Period _selectedPeriod = Period.weekly;

  Period get selectedPeriod => _selectedPeriod;

  setSelectedPeriod(Period period) {
    _selectedPeriod = period;
    notifyListeners();
  }

  Future<List<TimeTrackingResponse>> getTimeTrackingInfo() async {
    try {
      http.Response response = await http.get(timeTrackingUrl, headers: {
        "Content-Type": "application/json",
      });
      log(response.body);
      if (response.statusCode == 200) {
        List<TimeTrackingResponse> timeTrackingResponse =
            timeTrackingResponseFromJson(response.body);
        return timeTrackingResponse;
      } else {
        throw Exception('Failed to get time tracking info');
      }
    } catch (e) {
      log(e.toString());
      rethrow;
    }
  }
}
