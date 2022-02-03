import 'package:aidhere_task/core/utils/period_enums.dart';
import 'package:aidhere_task/models/time_tracking_response.dart';

String getPeriodName(Period period) {
  switch (period) {
    case Period.daily:
      return "Yesterday";
    case Period.weekly:
      return "Last Week";
    case Period.monthly:
      return "Last Month";
    default:
      return "";
  }
}

