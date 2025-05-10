// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'firebase_sync_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_FirebaseSyncData _$FirebaseSyncDataFromJson(Map<String, dynamic> json) =>
    _FirebaseSyncData(
      profile: json['profile'] == null
          ? null
          : User.fromJson(json['profile'] as Map<String, dynamic>),
      workouts: json['workouts'] == null
          ? null
          : Workouts.fromJson(json['workouts'] as Map<String, dynamic>),
      bloodPressureRecords: json['bloodPressureRecords'] == null
          ? null
          : BloodPressureRecords.fromJson(
              json['bloodPressureRecords'] as Map<String, dynamic>),
      temperatureRecords: json['temperatureRecords'] == null
          ? null
          : TemperatureRecords.fromJson(
              json['temperatureRecords'] as Map<String, dynamic>),
      bloodSugarRecords: json['bloodSugarRecords'] == null
          ? null
          : BloodSugarRecords.fromJson(
              json['bloodSugarRecords'] as Map<String, dynamic>),
      waterRecords: json['waterRecords'] == null
          ? null
          : WaterRecords.fromJson(json['waterRecords'] as Map<String, dynamic>),
      stressMoodRecords: json['stressMoodRecords'] == null
          ? null
          : StressMoodRecords.fromJson(
              json['stressMoodRecords'] as Map<String, dynamic>),
      notifications: json['notifications'] == null
          ? null
          : LocalNotifications.fromJson(
              json['notifications'] as Map<String, dynamic>),
      courseTreatments: json['courseTreatments'] == null
          ? null
          : CourseTreatments.fromJson(
              json['courseTreatments'] as Map<String, dynamic>),
      medications: json['medications'] == null
          ? null
          : Medications.fromJson(json['medications'] as Map<String, dynamic>),
      themePreference: json['themePreference'] == null
          ? null
          : ThemePreference.fromJson(
              json['themePreference'] as Map<String, dynamic>),
      locale: json['locale'] as String?,
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
