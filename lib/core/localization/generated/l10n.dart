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

  // skipped getter for the '' key
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
