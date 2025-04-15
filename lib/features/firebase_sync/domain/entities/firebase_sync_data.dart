import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:healthque_wear_os/features/firebase_sync/firebase_sync.dart';

part 'firebase_sync_data.freezed.dart';
part 'firebase_sync_data.g.dart';

@freezed
abstract class FirebaseSyncData with _$FirebaseSyncData {
  const factory FirebaseSyncData({
    required User profile,
    required Workouts workouts,
    required BloodPressureRecords bloodPressureRecords,
    required TemperatureRecords temperatureRecords,
    required BloodSugarRecords bloodSugarRecords,
    required WaterRecords waterRecords,
    required StressMoodRecords stressMoodRecords,
    required LocalNotifications notifications,
    required CourseTreatments courseTreatments,
    required Medications medications,
    required ThemePreference themePreference,
    required String locale,
  }) = _FirebaseSyncData;

  factory FirebaseSyncData.fromJson(Map<String, dynamic> json) => _$FirebaseSyncDataFromJson(json);
}
