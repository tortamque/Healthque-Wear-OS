import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:healthque_wear_os/features/firebase_sync/firebase_sync.dart';

part 'firebase_sync_data.freezed.dart';
part 'firebase_sync_data.g.dart';

@freezed
abstract class FirebaseSyncData with _$FirebaseSyncData {
  const factory FirebaseSyncData({
    User? profile,
    Workouts? workouts,
    BloodPressureRecords? bloodPressureRecords,
    TemperatureRecords? temperatureRecords,
    BloodSugarRecords? bloodSugarRecords,
    WaterRecords? waterRecords,
    StressMoodRecords? stressMoodRecords,
    LocalNotifications? notifications,
    CourseTreatments? courseTreatments,
    Medications? medications,
    ThemePreference? themePreference,
    String? locale,
  }) = _FirebaseSyncData;

  factory FirebaseSyncData.fromJson(Map<String, dynamic> json) => _$FirebaseSyncDataFromJson(json);
}
