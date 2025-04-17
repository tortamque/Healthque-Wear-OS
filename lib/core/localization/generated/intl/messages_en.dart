// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a en locale. All the
// messages from the main program should be duplicated here with the same
// function name.

// Ignore issues from commonly used lints in this file.
// ignore_for_file:unnecessary_brace_in_string_interps, unnecessary_new
// ignore_for_file:prefer_single_quotes,comment_references, directives_ordering
// ignore_for_file:annotate_overrides,prefer_generic_function_type_aliases
// ignore_for_file:unused_import, file_names, avoid_escaping_inner_quotes
// ignore_for_file:unnecessary_string_interpolations, unnecessary_string_escapes

import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';

final messages = new MessageLookup();

typedef String MessageIfAbsent(String messageStr, List<dynamic> args);

class MessageLookup extends MessageLookupByLibrary {
  String get localeName => 'en';

  static String m0(amount) => "${amount}h";

  static String m1(hours, remainingMinutes) => "${hours}h ${remainingMinutes}m";

  static String m2(minutes) => "${minutes}m";

  static String m3(percentage) => "${percentage}%";

  static String m4(count) => "${count} workouts";

  static String m5(diastolic) => "Diastolic: ${diastolic} mmHg";

  static String m6(systolic) => "Systolic: ${systolic} mmHg";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
    "amountHours": m0,
    "amountHoursMinutes": m1,
    "amountMinutes": m2,
    "amountOfEach": MessageLookupByLibrary.simpleMessage(
      "Amount of each workout type",
    ),
    "amountPercentage": m3,
    "amountWorkouts": m4,
    "bloodPressure": MessageLookupByLibrary.simpleMessage("Blood Pressure"),
    "bloodPressureHistory": MessageLookupByLibrary.simpleMessage(
      "Blood Pressure History",
    ),
    "bloodPressureTrend": MessageLookupByLibrary.simpleMessage(
      "Blood Pressure Trend",
    ),
    "bloodSugar": MessageLookupByLibrary.simpleMessage("Blood Sugar"),
    "bloodSugarHistory": MessageLookupByLibrary.simpleMessage(
      "Blood Sugar History",
    ),
    "bloodSugarTrend": MessageLookupByLibrary.simpleMessage(
      "Blood Sugar Trend",
    ),
    "bouldering": MessageLookupByLibrary.simpleMessage("Bouldering"),
    "capsule": MessageLookupByLibrary.simpleMessage("Capsule"),
    "courseTreatments": MessageLookupByLibrary.simpleMessage(
      "Course Treatments",
    ),
    "cycling": MessageLookupByLibrary.simpleMessage("Cycling"),
    "dailyAverageBloodSugar": MessageLookupByLibrary.simpleMessage(
      "Daily Average Blood Sugar",
    ),
    "dailyAverageBp": MessageLookupByLibrary.simpleMessage(
      "Daily Average Blood Pressure",
    ),
    "dailyAverageTemp": MessageLookupByLibrary.simpleMessage(
      "Daily Average Temperature",
    ),
    "degreeCelsius": MessageLookupByLibrary.simpleMessage("°C"),
    "diastolicAmount": m5,
    "gymnastics": MessageLookupByLibrary.simpleMessage("Gymnastics"),
    "hours": MessageLookupByLibrary.simpleMessage("h"),
    "injection": MessageLookupByLibrary.simpleMessage("Injection"),
    "intensity": MessageLookupByLibrary.simpleMessage("Intensity"),
    "kilometers": MessageLookupByLibrary.simpleMessage("km"),
    "medications": MessageLookupByLibrary.simpleMessage("Medications"),
    "mgPerDl": MessageLookupByLibrary.simpleMessage(" mg/dL"),
    "minutesLowercase": MessageLookupByLibrary.simpleMessage("min"),
    "ml": MessageLookupByLibrary.simpleMessage("ml"),
    "moodRating": MessageLookupByLibrary.simpleMessage("Mood Rating"),
    "noDataInCloud": MessageLookupByLibrary.simpleMessage(
      "No data found in cloud. Try adding data using mobile app.",
    ),
    "other": MessageLookupByLibrary.simpleMessage("Other"),
    "pieces": MessageLookupByLibrary.simpleMessage("pieces"),
    "running": MessageLookupByLibrary.simpleMessage("Running"),
    "showBloodPressure": MessageLookupByLibrary.simpleMessage(
      "Show your blood pressure records",
    ),
    "showBloodSugar": MessageLookupByLibrary.simpleMessage(
      "Show your blood sugar records",
    ),
    "showCourseTreatments": MessageLookupByLibrary.simpleMessage(
      "Show your course treatments journal",
    ),
    "showMedications": MessageLookupByLibrary.simpleMessage(
      "Show your medications journal",
    ),
    "showStressMood": MessageLookupByLibrary.simpleMessage(
      "Show your stress & mood journal",
    ),
    "showTemperature": MessageLookupByLibrary.simpleMessage(
      "Show your temperature records",
    ),
    "showWater": MessageLookupByLibrary.simpleMessage(
      "Show your consumed water records",
    ),
    "showWorkouts": MessageLookupByLibrary.simpleMessage("Show your workouts"),
    "signInWithGoogle": MessageLookupByLibrary.simpleMessage(
      "Sign In with Google",
    ),
    "signInWithGoogleAccount": MessageLookupByLibrary.simpleMessage(
      "Sign In with your Google account",
    ),
    "stressMood": MessageLookupByLibrary.simpleMessage("Stress & Mood"),
    "swimming": MessageLookupByLibrary.simpleMessage("Swimming"),
    "syrup": MessageLookupByLibrary.simpleMessage("Syrup"),
    "systolicAmount": m6,
    "tablet": MessageLookupByLibrary.simpleMessage("Tablet"),
    "temperature": MessageLookupByLibrary.simpleMessage("Temperature"),
    "temperatureHistory": MessageLookupByLibrary.simpleMessage(
      "Temperature History",
    ),
    "temperatureTrend": MessageLookupByLibrary.simpleMessage(
      "Temperature Trend",
    ),
    "tennis": MessageLookupByLibrary.simpleMessage("Tennis"),
    "theresNotEnoughDataToBuildTheChart": MessageLookupByLibrary.simpleMessage(
      "There\'s not enough data to build the chart",
    ),
    "units": MessageLookupByLibrary.simpleMessage("units"),
    "walking": MessageLookupByLibrary.simpleMessage("Walking"),
    "water": MessageLookupByLibrary.simpleMessage("Consumed water"),
    "weightTraining": MessageLookupByLibrary.simpleMessage("Weight Training"),
    "workoutDurationOver": MessageLookupByLibrary.simpleMessage(
      "Workout duration over the last 4 days",
    ),
    "workoutHistory": MessageLookupByLibrary.simpleMessage("Workout history"),
    "workouts": MessageLookupByLibrary.simpleMessage("Workouts"),
  };
}
