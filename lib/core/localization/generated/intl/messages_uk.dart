// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a uk locale. All the
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
  String get localeName => 'uk';

  static String m0(amount) => "${amount}г";

  static String m1(hours, remainingMinutes) =>
      "${hours}г ${remainingMinutes}хв";

  static String m2(minutes) => "${minutes}хв";

  static String m3(percentage) => "${percentage}%";

  static String m4(count) => "${count} тренувань";

  static String m5(from, to) => "Курс: ${from} – ${to}";

  static String m6(diastolic) => "Діастолічний: ${diastolic} мм рт. ст.";

  static String m7(systolic) => "Систолічний: ${systolic} мм рт. ст.";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
    "amountHours": m0,
    "amountHoursMinutes": m1,
    "amountMinutes": m2,
    "amountOfEach": MessageLookupByLibrary.simpleMessage(
      "Кількість за типами тренувань",
    ),
    "amountPercentage": m3,
    "amountWorkouts": m4,
    "bloodPressure": MessageLookupByLibrary.simpleMessage("Тиск"),
    "bloodPressureHistory": MessageLookupByLibrary.simpleMessage(
      "Історія тиску",
    ),
    "bloodPressureTrend": MessageLookupByLibrary.simpleMessage(
      "Динаміка тиску",
    ),
    "bloodSugar": MessageLookupByLibrary.simpleMessage("Цукор у крові"),
    "bloodSugarHistory": MessageLookupByLibrary.simpleMessage("Історія цукру"),
    "bloodSugarTrend": MessageLookupByLibrary.simpleMessage("Динаміка цукру"),
    "bouldering": MessageLookupByLibrary.simpleMessage("Боулдеринг"),
    "capsule": MessageLookupByLibrary.simpleMessage("Капсула"),
    "course": MessageLookupByLibrary.simpleMessage("Курс"),
    "courseDurationTrend": MessageLookupByLibrary.simpleMessage(
      "Динаміка курсу",
    ),
    "courseFromTo": m5,
    "courseHistory": MessageLookupByLibrary.simpleMessage("Історія курсу"),
    "courseTreatments": MessageLookupByLibrary.simpleMessage("Курс лікування"),
    "cycling": MessageLookupByLibrary.simpleMessage("Велоспорт"),
    "dailyAverageBloodSugar": MessageLookupByLibrary.simpleMessage(
      "Середній цукор",
    ),
    "dailyAverageBp": MessageLookupByLibrary.simpleMessage(
      "Середній тиск за день",
    ),
    "dailyAverageTemp": MessageLookupByLibrary.simpleMessage(
      "Середня температура",
    ),
    "dailyTotalWater": MessageLookupByLibrary.simpleMessage("Випито за день"),
    "days": MessageLookupByLibrary.simpleMessage("д"),
    "degreeCelsius": MessageLookupByLibrary.simpleMessage("°C"),
    "diastolicAmount": m6,
    "dosage": MessageLookupByLibrary.simpleMessage("Доза"),
    "dosageTrend": MessageLookupByLibrary.simpleMessage("Динаміка дозування"),
    "dosageUnit": MessageLookupByLibrary.simpleMessage("мг"),
    "gymnastics": MessageLookupByLibrary.simpleMessage("Гімнастика"),
    "hours": MessageLookupByLibrary.simpleMessage("г"),
    "injection": MessageLookupByLibrary.simpleMessage("Ін’єкція"),
    "intensity": MessageLookupByLibrary.simpleMessage("Інтенсивність"),
    "kilometers": MessageLookupByLibrary.simpleMessage("км"),
    "liters": MessageLookupByLibrary.simpleMessage("л"),
    "medicationDistribution": MessageLookupByLibrary.simpleMessage(
      "Розподіл ліків",
    ),
    "medicationHistory": MessageLookupByLibrary.simpleMessage("Історія ліків"),
    "medicationTime": MessageLookupByLibrary.simpleMessage("Час прийому"),
    "medicationTypeDistribution": MessageLookupByLibrary.simpleMessage(
      "Розподіл типів ліків",
    ),
    "medications": MessageLookupByLibrary.simpleMessage("Ліки"),
    "mgPerDl": MessageLookupByLibrary.simpleMessage("мг/дл"),
    "minutesLowercase": MessageLookupByLibrary.simpleMessage("хв"),
    "ml": MessageLookupByLibrary.simpleMessage("мл"),
    "mood": MessageLookupByLibrary.simpleMessage("Настрій"),
    "moodRating": MessageLookupByLibrary.simpleMessage("Настрій"),
    "moodTrend": MessageLookupByLibrary.simpleMessage("Динаміка настрою"),
    "noDataInCloud": MessageLookupByLibrary.simpleMessage(
      "У хмарі немає даних. Додайте їх через мобільний додаток.",
    ),
    "other": MessageLookupByLibrary.simpleMessage("Інше"),
    "pieces": MessageLookupByLibrary.simpleMessage("шт."),
    "running": MessageLookupByLibrary.simpleMessage("Біг"),
    "showBloodPressure": MessageLookupByLibrary.simpleMessage(
      "Показати записи тиску",
    ),
    "showBloodSugar": MessageLookupByLibrary.simpleMessage(
      "Показати записи цукру",
    ),
    "showCourseTreatments": MessageLookupByLibrary.simpleMessage(
      "Показати журнал курсу",
    ),
    "showMedications": MessageLookupByLibrary.simpleMessage(
      "Показати журнал ліків",
    ),
    "showStressMood": MessageLookupByLibrary.simpleMessage(
      "Показати журнал стресу й настрою",
    ),
    "showTemperature": MessageLookupByLibrary.simpleMessage(
      "Показати записи температури",
    ),
    "showWater": MessageLookupByLibrary.simpleMessage("Показати записи води"),
    "showWorkouts": MessageLookupByLibrary.simpleMessage("Показати тренування"),
    "signInWithGoogle": MessageLookupByLibrary.simpleMessage(
      "Увійти через Google",
    ),
    "signInWithGoogleAccount": MessageLookupByLibrary.simpleMessage(
      "Увійти через обліковим записом Google",
    ),
    "stress": MessageLookupByLibrary.simpleMessage("Стрес"),
    "stressMood": MessageLookupByLibrary.simpleMessage("Стрес та настрій"),
    "stressMoodHistory": MessageLookupByLibrary.simpleMessage(
      "Історія стресу й настрою",
    ),
    "stressTrend": MessageLookupByLibrary.simpleMessage("Динаміка стресу"),
    "swimming": MessageLookupByLibrary.simpleMessage("Плавання"),
    "syrup": MessageLookupByLibrary.simpleMessage("Сироп"),
    "systolicAmount": m7,
    "tablet": MessageLookupByLibrary.simpleMessage("Таблетка"),
    "temperature": MessageLookupByLibrary.simpleMessage("Температура"),
    "temperatureHistory": MessageLookupByLibrary.simpleMessage(
      "Історія температури",
    ),
    "temperatureTrend": MessageLookupByLibrary.simpleMessage(
      "Динаміка температури",
    ),
    "tennis": MessageLookupByLibrary.simpleMessage("Теніс"),
    "theresNotEnoughDataToBuildTheChart": MessageLookupByLibrary.simpleMessage(
      "Недостатньо даних для графіку",
    ),
    "units": MessageLookupByLibrary.simpleMessage("од."),
    "walking": MessageLookupByLibrary.simpleMessage("Ходьба"),
    "water": MessageLookupByLibrary.simpleMessage("Відстеження води"),
    "waterHistory": MessageLookupByLibrary.simpleMessage("Історія води"),
    "waterTrend": MessageLookupByLibrary.simpleMessage("Динаміка води"),
    "weightTraining": MessageLookupByLibrary.simpleMessage("Силові"),
    "workoutDurationOver": MessageLookupByLibrary.simpleMessage(
      "Тривалість за останні 4 дні",
    ),
    "workoutHistory": MessageLookupByLibrary.simpleMessage("Історія тренувань"),
    "workouts": MessageLookupByLibrary.simpleMessage("Тренування"),
  };
}
