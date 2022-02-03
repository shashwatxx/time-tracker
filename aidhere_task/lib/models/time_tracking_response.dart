// To parse this JSON data, do
//
//     final timeTrackingResponse = timeTrackingResponseFromMap(jsonString);

import 'dart:convert';

List<TimeTrackingResponse> timeTrackingResponseFromMap(String str) =>
    List<TimeTrackingResponse>.from(
        json.decode(str).map((x) => TimeTrackingResponse.fromMap(x)));

String timeTrackingResponseToMap(List<TimeTrackingResponse> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toMap())));

class TimeTrackingResponse {
  TimeTrackingResponse({
    required this.timeframes,
    required this.title,
  });

  final Timeframes timeframes;
  final String title;

  factory TimeTrackingResponse.fromMap(Map<String, dynamic> json) =>
      TimeTrackingResponse(
        timeframes: Timeframes.fromMap(json["timeframes"]),
        title: json["title"],
      );

  Map<String, dynamic> toMap() => {
        "timeframes": timeframes.toMap(),
        "title": title,
      };
}

class Timeframes {
  Timeframes({
    required this.daily,
    required this.monthly,
    required this.weekly,
  });

  final TimeSpent daily;
  final TimeSpent monthly;
  final TimeSpent weekly;

  factory Timeframes.fromMap(Map<String, dynamic> json) => Timeframes(
        daily: TimeSpent.fromMap(json["daily"]),
        monthly: TimeSpent.fromMap(json["monthly"]),
        weekly: TimeSpent.fromMap(json["weekly"]),
      );

  Map<String, dynamic> toMap() => {
        "daily": daily.toMap(),
        "monthly": monthly.toMap(),
        "weekly": weekly.toMap(),
      };
}

class TimeSpent {
  TimeSpent({
    required this.current,
    required this.previous,
  });

  final int current;
  final int previous;

  factory TimeSpent.fromMap(Map<String, dynamic> json) => TimeSpent(
        current: json["current"],
        previous: json["previous"],
      );

  Map<String, dynamic> toMap() => {
        "current": current,
        "previous": previous,
      };
}
