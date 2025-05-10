import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:healthque_wear_os/features/firebase_sync/firebase_sync.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:healthque_wear_os/config/config.dart';
import 'package:healthque_wear_os/config/routes/router.dart';
import 'package:healthque_wear_os/core/injection_container.dart';
import 'package:healthque_wear_os/firebase_options.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:healthque_wear_os/core/localization/generated/l10n.dart';
import 'package:healthque_wear_os/features/authorization/authorization.dart';
import 'package:healthque_wear_os/utils/utils.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  await _initHive();
  initializeDependencies();
  await _initHiveManagers();

  runApp(HealthqueWearOSApp());
}

class HealthqueWearOSApp extends StatelessWidget {
  const HealthqueWearOSApp({super.key});

  int get defaultColorSeed => 4285132974;
  String get defaultLocale => 'en';

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<AuthCubit>(create: (_) => AuthCubit()),
        BlocProvider<FirebaseSyncCubit>(
          create: (_) => FirebaseSyncCubit(
            sl(),
            sl<UserHiveManager>(),
            sl<WorkoutsHiveManager>(),
            sl<BloodPressureTrackingHiveManager>(),
            sl<TemperatureTrackingHiveManager>(),
            sl<BloodSugarTrackingHiveManager>(),
            sl<WaterTrackingHiveManager>(),
            sl<StressMoodTrackingHiveManager>(),
            sl<NotificationsHiveManager>(),
            sl<CourseTreatmentHiveManager>(),
            sl<MedicationTrackingHiveManager>(),
            sl<ThemePreferenceHiveManager>(),
            sl<LocaleHiveManager>(),
          ),
        ),
      ],
      child: BlocBuilder<FirebaseSyncCubit, FirebaseSyncState>(
        builder: (context, state) {
          final retrievedLocale = state.syncData?.locale;
          final locale = (retrievedLocale == null || retrievedLocale.isEmpty) ? defaultLocale : retrievedLocale;
          final color = Color(state.syncData?.themePreference?.seedColorValue ?? defaultColorSeed);

          return MaterialApp.router(
            debugShowCheckedModeBanner: false,
            theme: themeData(color: color),
            routerConfig: router,
            localizationsDelegates: [
              Strings.delegate,
              GlobalMaterialLocalizations.delegate,
              GlobalWidgetsLocalizations.delegate,
              GlobalCupertinoLocalizations.delegate,
            ],
            supportedLocales: Strings.delegate.supportedLocales,
            locale: Locale(locale),
          );
        },
      ),
    );
  }
}

Future<void> _initHive() async {
  await Hive.initFlutter();
  Hive.registerAdapter(UserAdapter());
  Hive.registerAdapter(GenderAdapter());
  Hive.registerAdapter(WorkoutAdapter());
  Hive.registerAdapter(WorkoutTypeAdapter());
  Hive.registerAdapter(WorkoutsAdapter());
  Hive.registerAdapter(LocalNotificationAdapter());
  Hive.registerAdapter(LocalNotificationsAdapter());
  Hive.registerAdapter(LocalNotificationTypeAdapter());
  Hive.registerAdapter(MedicationTypeAdapter());
  Hive.registerAdapter(MedicationAdapter());
  Hive.registerAdapter(MedicationsAdapter());
  Hive.registerAdapter(CourseTreatmentsAdapter());
  Hive.registerAdapter(CourseTreatmentEntryAdapter());
  Hive.registerAdapter(CourseTreatmentAdapter());
  Hive.registerAdapter(WaterRecordAdapter());
  Hive.registerAdapter(WaterRecordsAdapter());
  Hive.registerAdapter(TemperatureRecordsAdapter());
  Hive.registerAdapter(TemperatureRecordAdapter());
  Hive.registerAdapter(BloodPressureRecordAdapter());
  Hive.registerAdapter(BloodPressureRecordsAdapter());
  Hive.registerAdapter(ThemePreferenceAdapter());
  Hive.registerAdapter(StressMoodRecordAdapter());
  Hive.registerAdapter(StressMoodRecordsAdapter());
  Hive.registerAdapter(BloodSugarRecordAdapter());
  Hive.registerAdapter(BloodSugarRecordsAdapter());
}

Future<void> _initHiveManagers() async {
  await sl<UserHiveManager>().init();
  await sl<WorkoutsHiveManager>().init();
  await sl<NotificationsHiveManager>().init();
  await sl<MedicationTrackingHiveManager>().init();
  await sl<CourseTreatmentHiveManager>().init();
  await sl<WaterTrackingHiveManager>().init();
  await sl<TemperatureTrackingHiveManager>().init();
  await sl<BloodPressureTrackingHiveManager>().init();
  await sl<ThemePreferenceHiveManager>().init();
  await sl<StressMoodTrackingHiveManager>().init();
  await sl<BloodSugarTrackingHiveManager>().init();
  await sl<LocaleHiveManager>().init();
}
