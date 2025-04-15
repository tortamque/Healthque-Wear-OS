// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'firebase_sync_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_FirebaseSyncData _$FirebaseSyncDataFromJson(Map<String, dynamic> json) =>
    _FirebaseSyncData(
      profile: User.fromJson(json['profile'] as Map<String, dynamic>),
      workouts: Workouts.fromJson(json['workouts'] as Map<String, dynamic>),
      bloodPressureRecords: BloodPressureRecords.fromJson(
          json['bloodPressureRecords'] as Map<String, dynamic>),
      temperatureRecords: TemperatureRecords.fromJson(
          json['temperatureRecords'] as Map<String, dynamic>),
      bloodSugarRecords: BloodSugarRecords.fromJson(
          json['bloodSugarRecords'] as Map<String, dynamic>),
      waterRecords:
          WaterRecords.fromJson(json['waterRecords'] as Map<String, dynamic>),
      stressMoodRecords: StressMoodRecords.fromJson(
          json['stressMoodRecords'] as Map<String, dynamic>),
      notifications: LocalNotifications.fromJson(
          json['notifications'] as Map<String, dynamic>),
      courseTreatments: CourseTreatments.fromJson(
          json['courseTreatments'] as Map<String, dynamic>),
      medications:
          Medications.fromJson(json['medications'] as Map<String, dynamic>),
      themePreference: ThemePreference.fromJson(
          json['themePreference'] as Map<String, dynamic>),
      locale: json['locale'] as String,
    );

Map<String, dynamic> _$FirebaseSyncDataToJson(_FirebaseSyncData instance) =>
    <String, dynamic>{
      'profile': instance.profile,
      'workouts': instance.workouts,
      'bloodPressureRecords': instance.bloodPressureRecords,
      'temperatureRecords': instance.temperatureRecords,
      'bloodSugarRecords': instance.bloodSugarRecords,
      'waterRecords': instance.waterRecords,
      'stressMoodRecords': instance.stressMoodRecords,
      'notifications': instance.notifications,
      'courseTreatments': instance.courseTreatments,
      'medications': instance.medications,
      'themePreference': instance.themePreference,
      'locale': instance.locale,
    };
