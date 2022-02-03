import 'package:aidhere_task/models/time_tracking_response.dart';

import 'period_enums.dart';

TimeSpent getHoursFromPeriod(Period period, Timeframes timeframes) {
  switch (period) {
    case Period.daily:
      return timeframes.daily;
    case Period.weekly:
      return timeframes.weekly;
    case Period.monthly:
      return timeframes.monthly;
  }
}
