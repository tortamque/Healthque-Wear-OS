// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class Strings {
  Strings();

  static Strings? _current;

  static Strings get current {
    assert(
      _current != null,
      'No instance of Strings was loaded. Try to initialize the Strings delegate before accessing Strings.current.',
    );
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<Strings> load(Locale locale) {
    final name =
        (locale.countryCode?.isEmpty ?? false)
            ? locale.languageCode
            : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = Strings();
      Strings._current = instance;

      return instance;
    });
  }

  static Strings of(BuildContext context) {
    final instance = Strings.maybeOf(context);
    assert(
      instance != null,
      'No instance of Strings present in the widget tree. Did you add Strings.delegate in localizationsDelegates?',
    );
    return instance!;
  }

  static Strings? maybeOf(BuildContext context) {
    return Localizations.of<Strings>(context, Strings);
  }

  /// `Sign In with Google`
  String get signInWithGoogle {
    return Intl.message(
      'Sign In with Google',
      name: 'signInWithGoogle',
      desc: '',
      args: [],
    );
  }

  /// `Sign In with your Google account`
  String get signInWithGoogleAccount {
    return Intl.message(
      'Sign In with your Google account',
      name: 'signInWithGoogleAccount',
      desc: '',
      args: [],
    );
  }

  /// `Tablet`
  String get tablet {
    return Intl.message('Tablet', name: 'tablet', desc: '', args: []);
  }

  /// `Capsule`
  String get capsule {
    return Intl.message('Capsule', name: 'capsule', desc: '', args: []);
  }

  /// `Injection`
  String get injection {
    return Intl.message('Injection', name: 'injection', desc: '', args: []);
  }

  /// `Syrup`
  String get syrup {
    return Intl.message('Syrup', name: 'syrup', desc: '', args: []);
  }

  /// `Other`
  String get other {
    return Intl.message('Other', name: 'other', desc: '', args: []);
  }

  /// `pieces`
  String get pieces {
    return Intl.message('pieces', name: 'pieces', desc: '', args: []);
  }

  /// `ml`
  String get ml {
    return Intl.message('ml', name: 'ml', desc: '', args: []);
  }

  /// `units`
  String get units {
    return Intl.message('units', name: 'units', desc: '', args: []);
  }

  /// `Running`
  String get running {
    return Intl.message('Running', name: 'running', desc: '', args: []);
  }

  /// `Swimming`
  String get swimming {
    return Intl.message('Swimming', name: 'swimming', desc: '', args: []);
  }

  /// `Cycling`
  String get cycling {
    return Intl.message('Cycling', name: 'cycling', desc: '', args: []);
  }

  /// `Weight Training`
  String get weightTraining {
    return Intl.message(
      'Weight Training',
      name: 'weightTraining',
      desc: '',
      args: [],
    );
  }

  /// `Walking`
  String get walking {
    return Intl.message('Walking', name: 'walking', desc: '', args: []);
  }

  /// `Tennis`
  String get tennis {
    return Intl.message('Tennis', name: 'tennis', desc: '', args: []);
  }

  /// `Gymnastics`
  String get gymnastics {
    return Intl.message('Gymnastics', name: 'gymnastics', desc: '', args: []);
  }

  /// `Bouldering`
  String get bouldering {
    return Intl.message('Bouldering', name: 'bouldering', desc: '', args: []);
  }

  /// `No data found in cloud. Try adding data using mobile app.`
  String get noDataInCloud {
    return Intl.message(
      'No data found in cloud. Try adding data using mobile app.',
      name: 'noDataInCloud',
      desc: '',
      args: [],
    );
  }

  /// `Workouts`
  String get workouts {
    return Intl.message('Workouts', name: 'workouts', desc: '', args: []);
  }

  /// `Show your workouts`
  String get showWorkouts {
    return Intl.message(
      'Show your workouts',
      name: 'showWorkouts',
      desc: '',
      args: [],
    );
  }

  /// `Blood Pressure`
  String get bloodPressure {
    return Intl.message(
      'Blood Pressure',
      name: 'bloodPressure',
      desc: '',
      args: [],
    );
  }

  /// `Show your blood pressure records`
  String get showBloodPressure {
    return Intl.message(
      'Show your blood pressure records',
      name: 'showBloodPressure',
      desc: '',
      args: [],
    );
  }

  /// `Temperature`
  String get temperature {
    return Intl.message('Temperature', name: 'temperature', desc: '', args: []);
  }

  /// `Show your temperature records`
  String get showTemperature {
    return Intl.message(
      'Show your temperature records',
      name: 'showTemperature',
      desc: '',
      args: [],
    );
  }

  /// `Blood Sugar`
  String get bloodSugar {
    return Intl.message('Blood Sugar', name: 'bloodSugar', desc: '', args: []);
  }

  /// `Show your blood sugar records`
  String get showBloodSugar {
    return Intl.message(
      'Show your blood sugar records',
      name: 'showBloodSugar',
      desc: '',
      args: [],
    );
  }

  /// `Consumed water`
  String get water {
    return Intl.message('Consumed water', name: 'water', desc: '', args: []);
  }

  /// `Show your consumed water records`
  String get showWater {
    return Intl.message(
      'Show your consumed water records',
      name: 'showWater',
      desc: '',
      args: [],
    );
  }

  /// `Stress & Mood`
  String get stressMood {
    return Intl.message(
      'Stress & Mood',
      name: 'stressMood',
      desc: '',
      args: [],
    );
  }

  /// `Show your stress & mood journal`
  String get showStressMood {
    return Intl.message(
      'Show your stress & mood journal',
      name: 'showStressMood',
      desc: '',
      args: [],
    );
  }

  /// `Course Treatments`
  String get courseTreatments {
    return Intl.message(
      'Course Treatments',
      name: 'courseTreatments',
      desc: '',
      args: [],
    );
  }

  /// `Show your course treatments journal`
  String get showCourseTreatments {
    return Intl.message(
      'Show your course treatments journal',
      name: 'showCourseTreatments',
      desc: '',
      args: [],
    );
  }

  /// `Medications`
  String get medications {
    return Intl.message('Medications', name: 'medications', desc: '', args: []);
  }

  /// `Show your medications journal`
  String get showMedications {
    return Intl.message(
      'Show your medications journal',
      name: 'showMedications',
      desc: '',
      args: [],
    );
  }

  /// `There's not enough data to build the chart`
  String get theresNotEnoughDataToBuildTheChart {
    return Intl.message(
      'There\'s not enough data to build the chart',
      name: 'theresNotEnoughDataToBuildTheChart',
      desc: '',
      args: [],
    );
  }

  /// `{percentage}%`
  String amountPercentage(Object percentage) {
    return Intl.message(
      '$percentage%',
      name: 'amountPercentage',
      desc: '',
      args: [percentage],
    );
  }

  /// `{count} workouts`
  String amountWorkouts(Object count) {
    return Intl.message(
      '$count workouts',
      name: 'amountWorkouts',
      desc: '',
      args: [count],
    );
  }

  /// `min`
  String get minutesLowercase {
    return Intl.message('min', name: 'minutesLowercase', desc: '', args: []);
  }

  /// `Intensity`
  String get intensity {
    return Intl.message('Intensity', name: 'intensity', desc: '', args: []);
  }

  /// `km`
  String get kilometers {
    return Intl.message('km', name: 'kilometers', desc: '', args: []);
  }

  /// `Mood Rating`
  String get moodRating {
    return Intl.message('Mood Rating', name: 'moodRating', desc: '', args: []);
  }

  /// `h`
  String get hours {
    return Intl.message('h', name: 'hours', desc: '', args: []);
  }

  /// `Amount of each workout type`
  String get amountOfEach {
    return Intl.message(
      'Amount of each workout type',
      name: 'amountOfEach',
      desc: '',
      args: [],
    );
  }

  /// `Workout duration over the last 4 days`
  String get workoutDurationOver {
    return Intl.message(
      'Workout duration over the last 4 days',
      name: 'workoutDurationOver',
      desc: '',
      args: [],
    );
  }

  /// `Workout history`
  String get workoutHistory {
    return Intl.message(
      'Workout history',
      name: 'workoutHistory',
      desc: '',
      args: [],
    );
  }

  /// `{amount}h`
  String amountHours(Object amount) {
    return Intl.message(
      '${amount}h',
      name: 'amountHours',
      desc: '',
      args: [amount],
    );
  }

  /// `{hours}h {remainingMinutes}m`
  String amountHoursMinutes(Object hours, Object remainingMinutes) {
    return Intl.message(
      '${hours}h ${remainingMinutes}m',
      name: 'amountHoursMinutes',
      desc: '',
      args: [hours, remainingMinutes],
    );
  }

  /// `{minutes}m`
  String amountMinutes(Object minutes) {
    return Intl.message(
      '${minutes}m',
      name: 'amountMinutes',
      desc: '',
      args: [minutes],
    );
  }

  /// `Blood Pressure Trend`
  String get bloodPressureTrend {
    return Intl.message(
      'Blood Pressure Trend',
      name: 'bloodPressureTrend',
      desc: '',
      args: [],
    );
  }

  /// `Daily Average Blood Pressure`
  String get dailyAverageBp {
    return Intl.message(
      'Daily Average Blood Pressure',
      name: 'dailyAverageBp',
      desc: '',
      args: [],
    );
  }

  /// `Blood Pressure History`
  String get bloodPressureHistory {
    return Intl.message(
      'Blood Pressure History',
      name: 'bloodPressureHistory',
      desc: '',
      args: [],
    );
  }

  /// `Systolic: {systolic} mmHg`
  String systolicAmount(Object systolic) {
    return Intl.message(
      'Systolic: $systolic mmHg',
      name: 'systolicAmount',
      desc: '',
      args: [systolic],
    );
  }

  /// `Diastolic: {diastolic} mmHg`
  String diastolicAmount(Object diastolic) {
    return Intl.message(
      'Diastolic: $diastolic mmHg',
      name: 'diastolicAmount',
      desc: '',
      args: [diastolic],
    );
  }

  /// `Temperature Trend`
  String get temperatureTrend {
    return Intl.message(
      'Temperature Trend',
      name: 'temperatureTrend',
      desc: '',
      args: [],
    );
  }

  /// `Daily Average Temperature`
  String get dailyAverageTemp {
    return Intl.message(
      'Daily Average Temperature',
      name: 'dailyAverageTemp',
      desc: '',
      args: [],
    );
  }

  /// `Temperature History`
  String get temperatureHistory {
    return Intl.message(
      'Temperature History',
      name: 'temperatureHistory',
      desc: '',
      args: [],
    );
  }

  /// `°C`
  String get degreeCelsius {
    return Intl.message('°C', name: 'degreeCelsius', desc: '', args: []);
  }

  /// `Blood Sugar Trend`
  String get bloodSugarTrend {
    return Intl.message(
      'Blood Sugar Trend',
      name: 'bloodSugarTrend',
      desc: '',
      args: [],
    );
  }

  /// `Daily Average Blood Sugar`
  String get dailyAverageBloodSugar {
    return Intl.message(
      'Daily Average Blood Sugar',
      name: 'dailyAverageBloodSugar',
      desc: '',
      args: [],
    );
  }

  /// `Blood Sugar History`
  String get bloodSugarHistory {
    return Intl.message(
      'Blood Sugar History',
      name: 'bloodSugarHistory',
      desc: '',
      args: [],
    );
  }

  /// ` mg/dL`
  String get mgPerDl {
    return Intl.message(' mg/dL', name: 'mgPerDl', desc: '', args: []);
  }

  /// `Water Trend`
  String get waterTrend {
    return Intl.message('Water Trend', name: 'waterTrend', desc: '', args: []);
  }

  /// `Daily Total Water`
  String get dailyTotalWater {
    return Intl.message(
      'Daily Total Water',
      name: 'dailyTotalWater',
      desc: '',
      args: [],
    );
  }

  /// `Water History`
  String get waterHistory {
    return Intl.message(
      'Water History',
      name: 'waterHistory',
      desc: '',
      args: [],
    );
  }

  /// `L`
  String get liters {
    return Intl.message('L', name: 'liters', desc: '', args: []);
  }

  /// `Stress Trend`
  String get stressTrend {
    return Intl.message(
      'Stress Trend',
      name: 'stressTrend',
      desc: '',
      args: [],
    );
  }

  /// `Mood Trend`
  String get moodTrend {
    return Intl.message('Mood Trend', name: 'moodTrend', desc: '', args: []);
  }

  /// `Stress & Mood History`
  String get stressMoodHistory {
    return Intl.message(
      'Stress & Mood History',
      name: 'stressMoodHistory',
      desc: '',
      args: [],
    );
  }

  /// `Stress`
  String get stress {
    return Intl.message('Stress', name: 'stress', desc: '', args: []);
  }

  /// `Mood`
  String get mood {
    return Intl.message('Mood', name: 'mood', desc: '', args: []);
  }

  /// `Course Duration Trend`
  String get courseDurationTrend {
    return Intl.message(
      'Course Duration Trend',
      name: 'courseDurationTrend',
      desc: '',
      args: [],
    );
  }

  /// `Medication Distribution`
  String get medicationDistribution {
    return Intl.message(
      'Medication Distribution',
      name: 'medicationDistribution',
      desc: '',
      args: [],
    );
  }

  /// `Course History`
  String get courseHistory {
    return Intl.message(
      'Course History',
      name: 'courseHistory',
      desc: '',
      args: [],
    );
  }

  /// `Course: {from} - {to}`
  String courseFromTo(Object from, Object to) {
    return Intl.message(
      'Course: $from - $to',
      name: 'courseFromTo',
      desc: '',
      args: [from, to],
    );
  }

  /// `Medication Time`
  String get medicationTime {
    return Intl.message(
      'Medication Time',
      name: 'medicationTime',
      desc: '',
      args: [],
    );
  }

  /// `d`
  String get days {
    return Intl.message('d', name: 'days', desc: '', args: []);
  }

  /// `Medication Type Distribution`
  String get medicationTypeDistribution {
    return Intl.message(
      'Medication Type Distribution',
      name: 'medicationTypeDistribution',
      desc: '',
      args: [],
    );
  }

  /// `Dosage Trend Over Time`
  String get dosageTrend {
    return Intl.message(
      'Dosage Trend Over Time',
      name: 'dosageTrend',
      desc: '',
      args: [],
    );
  }

  /// `Medication History`
  String get medicationHistory {
    return Intl.message(
      'Medication History',
      name: 'medicationHistory',
      desc: '',
      args: [],
    );
  }

  /// `Dosage`
  String get dosage {
    return Intl.message('Dosage', name: 'dosage', desc: '', args: []);
  }

  /// `Course`
  String get course {
    return Intl.message('Course', name: 'course', desc: '', args: []);
  }

  /// `mg`
  String get dosageUnit {
    return Intl.message('mg', name: 'dosageUnit', desc: '', args: []);
  }

  /// `Currently, no data is stored in the cloud or cached locally. Please add data using your Healthque mobile app and ensure your internet connection is enabled to cache the information.`
  String get noData {
    return Intl.message(
      'Currently, no data is stored in the cloud or cached locally. Please add data using your Healthque mobile app and ensure your internet connection is enabled to cache the information.',
      name: 'noData',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<Strings> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'uk'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<Strings> load(Locale locale) => Strings.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
