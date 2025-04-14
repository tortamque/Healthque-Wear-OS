import 'package:get_it/get_it.dart';
import 'package:healthque_wear_os/features/firebase_sync/firebase_sync.dart';
import 'package:healthque_wear_os/utils/utils.dart';

final sl = GetIt.instance;

void initializeDependencies() {
  sl
    // Other
    ..registerSingleton<UserHiveManager>(UserHiveManager())
    ..registerSingleton<WorkoutsHiveManager>(WorkoutsHiveManager())
    ..registerSingleton<NotificationsHiveManager>(NotificationsHiveManager())
    ..registerSingleton<MedicationTrackingHiveManager>(MedicationTrackingHiveManager())
    ..registerSingleton<CourseTreatmentHiveManager>(CourseTreatmentHiveManager())
    ..registerSingleton<WaterTrackingHiveManager>(WaterTrackingHiveManager())
    ..registerSingleton<TemperatureTrackingHiveManager>(TemperatureTrackingHiveManager())
    ..registerSingleton<BloodPressureTrackingHiveManager>(BloodPressureTrackingHiveManager())
    ..registerSingleton<ThemePreferenceHiveManager>(ThemePreferenceHiveManager())
    ..registerSingleton<StressMoodTrackingHiveManager>(StressMoodTrackingHiveManager())
    ..registerSingleton<BloodSugarTrackingHiveManager>(BloodSugarTrackingHiveManager())
    ..registerSingleton<LocaleHiveManager>(LocaleHiveManager())

    // Services
    ..registerSingleton<FirebaseDbService>(FirebaseDbServiceImpl())

    // Repositories
    ..registerSingleton<FirebaseRepository>(FirebaseRepositoryImpl(sl()))

    // Use cases
    ..registerSingleton<GetUserDataUseCase>(GetUserDataUseCase(sl()))
    ..registerSingleton<SaveUserDataUseCase>(SaveUserDataUseCase(sl()));

  // Blocs
}
