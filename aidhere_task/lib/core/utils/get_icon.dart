import 'package:aidhere_task/core/image_resources.dart';

/// To get the Icon from the title
String getIcon(String title) {
  switch (title) {
    case "Work":
      return workIcon;
    case "Play":
      return playIcon;
    case "Study":
      return studyIcon;
    case "Exercise":
      return excerciseIcon;
    case "Social":
      return socialIcon;
    case "Self Care":
      return selfCareIcon;
    default:
      return ellipsisIcon;
  }
}
