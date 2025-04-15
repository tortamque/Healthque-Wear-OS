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

  /// `Workouts pressed`
  String get workoutsTap {
    return Intl.message(
      'Workouts pressed',
      name: 'workoutsTap',
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

  /// `Blood pressure pressed`
  String get bloodPressureTap {
    return Intl.message(
      'Blood pressure pressed',
      name: 'bloodPressureTap',
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

  /// `Temperature pressed`
  String get temperatureTap {
    return Intl.message(
      'Temperature pressed',
      name: 'temperatureTap',
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

  /// `Blood sugar pressed`
  String get bloodSugarTap {
    return Intl.message(
      'Blood sugar pressed',
      name: 'bloodSugarTap',
      desc: '',
      args: [],
    );
  }

  /// `Water`
  String get water {
    return Intl.message('Water', name: 'water', desc: '', args: []);
  }

  /// `Show your water records`
  String get showWater {
    return Intl.message(
      'Show your water records',
      name: 'showWater',
      desc: '',
      args: [],
    );
  }

  /// `Water pressed`
  String get waterTap {
    return Intl.message('Water pressed', name: 'waterTap', desc: '', args: []);
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

  /// `Stress & Mood pressed`
  String get stressMoodTap {
    return Intl.message(
      'Stress & Mood pressed',
      name: 'stressMoodTap',
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

  /// `Course treatments pressed`
  String get courseTreatmentsTap {
    return Intl.message(
      'Course treatments pressed',
      name: 'courseTreatmentsTap',
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

  /// `Medications pressed`
  String get medicationsTap {
    return Intl.message(
      'Medications pressed',
      name: 'medicationsTap',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<Strings> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[Locale.fromSubtags(languageCode: 'en')];
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
