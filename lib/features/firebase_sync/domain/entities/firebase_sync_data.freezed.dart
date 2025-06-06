// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'firebase_sync_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$FirebaseSyncData {
  User? get profile;
  Workouts? get workouts;
  BloodPressureRecords? get bloodPressureRecords;
  TemperatureRecords? get temperatureRecords;
  BloodSugarRecords? get bloodSugarRecords;
  WaterRecords? get waterRecords;
  StressMoodRecords? get stressMoodRecords;
  LocalNotifications? get notifications;
  CourseTreatments? get courseTreatments;
  Medications? get medications;
  ThemePreference? get themePreference;
  String? get locale;

  /// Create a copy of FirebaseSyncData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $FirebaseSyncDataCopyWith<FirebaseSyncData> get copyWith =>
      _$FirebaseSyncDataCopyWithImpl<FirebaseSyncData>(
          this as FirebaseSyncData, _$identity);

  /// Serializes this FirebaseSyncData to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is FirebaseSyncData &&
            (identical(other.profile, profile) || other.profile == profile) &&
            (identical(other.workouts, workouts) ||
                other.workouts == workouts) &&
            (identical(other.bloodPressureRecords, bloodPressureRecords) ||
                other.bloodPressureRecords == bloodPressureRecords) &&
            (identical(other.temperatureRecords, temperatureRecords) ||
                other.temperatureRecords == temperatureRecords) &&
            (identical(other.bloodSugarRecords, bloodSugarRecords) ||
                other.bloodSugarRecords == bloodSugarRecords) &&
            (identical(other.waterRecords, waterRecords) ||
                other.waterRecords == waterRecords) &&
            (identical(other.stressMoodRecords, stressMoodRecords) ||
                other.stressMoodRecords == stressMoodRecords) &&
            (identical(other.notifications, notifications) ||
                other.notifications == notifications) &&
            (identical(other.courseTreatments, courseTreatments) ||
                other.courseTreatments == courseTreatments) &&
            (identical(other.medications, medications) ||
                other.medications == medications) &&
            (identical(other.themePreference, themePreference) ||
                other.themePreference == themePreference) &&
            (identical(other.locale, locale) || other.locale == locale));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      profile,
      workouts,
      bloodPressureRecords,
      temperatureRecords,
      bloodSugarRecords,
      waterRecords,
      stressMoodRecords,
      notifications,
      courseTreatments,
      medications,
      themePreference,
      locale);

  @override
  String toString() {
    return 'FirebaseSyncData(profile: $profile, workouts: $workouts, bloodPressureRecords: $bloodPressureRecords, temperatureRecords: $temperatureRecords, bloodSugarRecords: $bloodSugarRecords, waterRecords: $waterRecords, stressMoodRecords: $stressMoodRecords, notifications: $notifications, courseTreatments: $courseTreatments, medications: $medications, themePreference: $themePreference, locale: $locale)';
  }
}

/// @nodoc
abstract mixin class $FirebaseSyncDataCopyWith<$Res> {
  factory $FirebaseSyncDataCopyWith(
          FirebaseSyncData value, $Res Function(FirebaseSyncData) _then) =
      _$FirebaseSyncDataCopyWithImpl;
  @useResult
  $Res call(
      {User? profile,
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
      String? locale});

  $UserCopyWith<$Res>? get profile;
  $WorkoutsCopyWith<$Res>? get workouts;
  $BloodPressureRecordsCopyWith<$Res>? get bloodPressureRecords;
  $TemperatureRecordsCopyWith<$Res>? get temperatureRecords;
  $BloodSugarRecordsCopyWith<$Res>? get bloodSugarRecords;
  $WaterRecordsCopyWith<$Res>? get waterRecords;
  $StressMoodRecordsCopyWith<$Res>? get stressMoodRecords;
  $LocalNotificationsCopyWith<$Res>? get notifications;
  $CourseTreatmentsCopyWith<$Res>? get courseTreatments;
  $MedicationsCopyWith<$Res>? get medications;
  $ThemePreferenceCopyWith<$Res>? get themePreference;
}

/// @nodoc
class _$FirebaseSyncDataCopyWithImpl<$Res>
    implements $FirebaseSyncDataCopyWith<$Res> {
  _$FirebaseSyncDataCopyWithImpl(this._self, this._then);

  final FirebaseSyncData _self;
  final $Res Function(FirebaseSyncData) _then;

  /// Create a copy of FirebaseSyncData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? profile = freezed,
    Object? workouts = freezed,
    Object? bloodPressureRecords = freezed,
    Object? temperatureRecords = freezed,
    Object? bloodSugarRecords = freezed,
    Object? waterRecords = freezed,
    Object? stressMoodRecords = freezed,
    Object? notifications = freezed,
    Object? courseTreatments = freezed,
    Object? medications = freezed,
    Object? themePreference = freezed,
    Object? locale = freezed,
  }) {
    return _then(_self.copyWith(
      profile: freezed == profile
          ? _self.profile
          : profile // ignore: cast_nullable_to_non_nullable
              as User?,
      workouts: freezed == workouts
          ? _self.workouts
          : workouts // ignore: cast_nullable_to_non_nullable
              as Workouts?,
      bloodPressureRecords: freezed == bloodPressureRecords
          ? _self.bloodPressureRecords
          : bloodPressureRecords // ignore: cast_nullable_to_non_nullable
              as BloodPressureRecords?,
      temperatureRecords: freezed == temperatureRecords
          ? _self.temperatureRecords
          : temperatureRecords // ignore: cast_nullable_to_non_nullable
              as TemperatureRecords?,
      bloodSugarRecords: freezed == bloodSugarRecords
          ? _self.bloodSugarRecords
          : bloodSugarRecords // ignore: cast_nullable_to_non_nullable
              as BloodSugarRecords?,
      waterRecords: freezed == waterRecords
          ? _self.waterRecords
          : waterRecords // ignore: cast_nullable_to_non_nullable
              as WaterRecords?,
      stressMoodRecords: freezed == stressMoodRecords
          ? _self.stressMoodRecords
          : stressMoodRecords // ignore: cast_nullable_to_non_nullable
              as StressMoodRecords?,
      notifications: freezed == notifications
          ? _self.notifications
          : notifications // ignore: cast_nullable_to_non_nullable
              as LocalNotifications?,
      courseTreatments: freezed == courseTreatments
          ? _self.courseTreatments
          : courseTreatments // ignore: cast_nullable_to_non_nullable
              as CourseTreatments?,
      medications: freezed == medications
          ? _self.medications
          : medications // ignore: cast_nullable_to_non_nullable
              as Medications?,
      themePreference: freezed == themePreference
          ? _self.themePreference
          : themePreference // ignore: cast_nullable_to_non_nullable
              as ThemePreference?,
      locale: freezed == locale
          ? _self.locale
          : locale // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  /// Create a copy of FirebaseSyncData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res>? get profile {
    if (_self.profile == null) {
      return null;
    }

    return $UserCopyWith<$Res>(_self.profile!, (value) {
      return _then(_self.copyWith(profile: value));
    });
  }

  /// Create a copy of FirebaseSyncData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $WorkoutsCopyWith<$Res>? get workouts {
    if (_self.workouts == null) {
      return null;
    }

    return $WorkoutsCopyWith<$Res>(_self.workouts!, (value) {
      return _then(_self.copyWith(workouts: value));
    });
  }

  /// Create a copy of FirebaseSyncData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BloodPressureRecordsCopyWith<$Res>? get bloodPressureRecords {
    if (_self.bloodPressureRecords == null) {
      return null;
    }

    return $BloodPressureRecordsCopyWith<$Res>(_self.bloodPressureRecords!,
        (value) {
      return _then(_self.copyWith(bloodPressureRecords: value));
    });
  }

  /// Create a copy of FirebaseSyncData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TemperatureRecordsCopyWith<$Res>? get temperatureRecords {
    if (_self.temperatureRecords == null) {
      return null;
    }

    return $TemperatureRecordsCopyWith<$Res>(_self.temperatureRecords!,
        (value) {
      return _then(_self.copyWith(temperatureRecords: value));
    });
  }

  /// Create a copy of FirebaseSyncData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BloodSugarRecordsCopyWith<$Res>? get bloodSugarRecords {
    if (_self.bloodSugarRecords == null) {
      return null;
    }

    return $BloodSugarRecordsCopyWith<$Res>(_self.bloodSugarRecords!, (value) {
      return _then(_self.copyWith(bloodSugarRecords: value));
    });
  }

  /// Create a copy of FirebaseSyncData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $WaterRecordsCopyWith<$Res>? get waterRecords {
    if (_self.waterRecords == null) {
      return null;
    }

    return $WaterRecordsCopyWith<$Res>(_self.waterRecords!, (value) {
      return _then(_self.copyWith(waterRecords: value));
    });
  }

  /// Create a copy of FirebaseSyncData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StressMoodRecordsCopyWith<$Res>? get stressMoodRecords {
    if (_self.stressMoodRecords == null) {
      return null;
    }

    return $StressMoodRecordsCopyWith<$Res>(_self.stressMoodRecords!, (value) {
      return _then(_self.copyWith(stressMoodRecords: value));
    });
  }

  /// Create a copy of FirebaseSyncData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LocalNotificationsCopyWith<$Res>? get notifications {
    if (_self.notifications == null) {
      return null;
    }

    return $LocalNotificationsCopyWith<$Res>(_self.notifications!, (value) {
      return _then(_self.copyWith(notifications: value));
    });
  }

  /// Create a copy of FirebaseSyncData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CourseTreatmentsCopyWith<$Res>? get courseTreatments {
    if (_self.courseTreatments == null) {
      return null;
    }

    return $CourseTreatmentsCopyWith<$Res>(_self.courseTreatments!, (value) {
      return _then(_self.copyWith(courseTreatments: value));
    });
  }

  /// Create a copy of FirebaseSyncData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MedicationsCopyWith<$Res>? get medications {
    if (_self.medications == null) {
      return null;
    }

    return $MedicationsCopyWith<$Res>(_self.medications!, (value) {
      return _then(_self.copyWith(medications: value));
    });
  }

  /// Create a copy of FirebaseSyncData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ThemePreferenceCopyWith<$Res>? get themePreference {
    if (_self.themePreference == null) {
      return null;
    }

    return $ThemePreferenceCopyWith<$Res>(_self.themePreference!, (value) {
      return _then(_self.copyWith(themePreference: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _FirebaseSyncData implements FirebaseSyncData {
  const _FirebaseSyncData(
      {this.profile,
      this.workouts,
      this.bloodPressureRecords,
      this.temperatureRecords,
      this.bloodSugarRecords,
      this.waterRecords,
      this.stressMoodRecords,
      this.notifications,
      this.courseTreatments,
      this.medications,
      this.themePreference,
      this.locale});
  factory _FirebaseSyncData.fromJson(Map<String, dynamic> json) =>
      _$FirebaseSyncDataFromJson(json);

  @override
  final User? profile;
  @override
  final Workouts? workouts;
  @override
  final BloodPressureRecords? bloodPressureRecords;
  @override
  final TemperatureRecords? temperatureRecords;
  @override
  final BloodSugarRecords? bloodSugarRecords;
  @override
  final WaterRecords? waterRecords;
  @override
  final StressMoodRecords? stressMoodRecords;
  @override
  final LocalNotifications? notifications;
  @override
  final CourseTreatments? courseTreatments;
  @override
  final Medications? medications;
  @override
  final ThemePreference? themePreference;
  @override
  final String? locale;

  /// Create a copy of FirebaseSyncData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$FirebaseSyncDataCopyWith<_FirebaseSyncData> get copyWith =>
      __$FirebaseSyncDataCopyWithImpl<_FirebaseSyncData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$FirebaseSyncDataToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _FirebaseSyncData &&
            (identical(other.profile, profile) || other.profile == profile) &&
            (identical(other.workouts, workouts) ||
                other.workouts == workouts) &&
            (identical(other.bloodPressureRecords, bloodPressureRecords) ||
                other.bloodPressureRecords == bloodPressureRecords) &&
            (identical(other.temperatureRecords, temperatureRecords) ||
                other.temperatureRecords == temperatureRecords) &&
            (identical(other.bloodSugarRecords, bloodSugarRecords) ||
                other.bloodSugarRecords == bloodSugarRecords) &&
            (identical(other.waterRecords, waterRecords) ||
                other.waterRecords == waterRecords) &&
            (identical(other.stressMoodRecords, stressMoodRecords) ||
                other.stressMoodRecords == stressMoodRecords) &&
            (identical(other.notifications, notifications) ||
                other.notifications == notifications) &&
            (identical(other.courseTreatments, courseTreatments) ||
                other.courseTreatments == courseTreatments) &&
            (identical(other.medications, medications) ||
                other.medications == medications) &&
            (identical(other.themePreference, themePreference) ||
                other.themePreference == themePreference) &&
            (identical(other.locale, locale) || other.locale == locale));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      profile,
      workouts,
      bloodPressureRecords,
      temperatureRecords,
      bloodSugarRecords,
      waterRecords,
      stressMoodRecords,
      notifications,
      courseTreatments,
      medications,
      themePreference,
      locale);

  @override
  String toString() {
    return 'FirebaseSyncData(profile: $profile, workouts: $workouts, bloodPressureRecords: $bloodPressureRecords, temperatureRecords: $temperatureRecords, bloodSugarRecords: $bloodSugarRecords, waterRecords: $waterRecords, stressMoodRecords: $stressMoodRecords, notifications: $notifications, courseTreatments: $courseTreatments, medications: $medications, themePreference: $themePreference, locale: $locale)';
  }
}

/// @nodoc
abstract mixin class _$FirebaseSyncDataCopyWith<$Res>
    implements $FirebaseSyncDataCopyWith<$Res> {
  factory _$FirebaseSyncDataCopyWith(
          _FirebaseSyncData value, $Res Function(_FirebaseSyncData) _then) =
      __$FirebaseSyncDataCopyWithImpl;
  @override
  @useResult
  $Res call(
      {User? profile,
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
      String? locale});

  @override
  $UserCopyWith<$Res>? get profile;
  @override
  $WorkoutsCopyWith<$Res>? get workouts;
  @override
  $BloodPressureRecordsCopyWith<$Res>? get bloodPressureRecords;
  @override
  $TemperatureRecordsCopyWith<$Res>? get temperatureRecords;
  @override
  $BloodSugarRecordsCopyWith<$Res>? get bloodSugarRecords;
  @override
  $WaterRecordsCopyWith<$Res>? get waterRecords;
  @override
  $StressMoodRecordsCopyWith<$Res>? get stressMoodRecords;
  @override
  $LocalNotificationsCopyWith<$Res>? get notifications;
  @override
  $CourseTreatmentsCopyWith<$Res>? get courseTreatments;
  @override
  $MedicationsCopyWith<$Res>? get medications;
  @override
  $ThemePreferenceCopyWith<$Res>? get themePreference;
}

/// @nodoc
class __$FirebaseSyncDataCopyWithImpl<$Res>
    implements _$FirebaseSyncDataCopyWith<$Res> {
  __$FirebaseSyncDataCopyWithImpl(this._self, this._then);

  final _FirebaseSyncData _self;
  final $Res Function(_FirebaseSyncData) _then;

  /// Create a copy of FirebaseSyncData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? profile = freezed,
    Object? workouts = freezed,
    Object? bloodPressureRecords = freezed,
    Object? temperatureRecords = freezed,
    Object? bloodSugarRecords = freezed,
    Object? waterRecords = freezed,
    Object? stressMoodRecords = freezed,
    Object? notifications = freezed,
    Object? courseTreatments = freezed,
    Object? medications = freezed,
    Object? themePreference = freezed,
    Object? locale = freezed,
  }) {
    return _then(_FirebaseSyncData(
      profile: freezed == profile
          ? _self.profile
          : profile // ignore: cast_nullable_to_non_nullable
              as User?,
      workouts: freezed == workouts
          ? _self.workouts
          : workouts // ignore: cast_nullable_to_non_nullable
              as Workouts?,
      bloodPressureRecords: freezed == bloodPressureRecords
          ? _self.bloodPressureRecords
          : bloodPressureRecords // ignore: cast_nullable_to_non_nullable
              as BloodPressureRecords?,
      temperatureRecords: freezed == temperatureRecords
          ? _self.temperatureRecords
          : temperatureRecords // ignore: cast_nullable_to_non_nullable
              as TemperatureRecords?,
      bloodSugarRecords: freezed == bloodSugarRecords
          ? _self.bloodSugarRecords
          : bloodSugarRecords // ignore: cast_nullable_to_non_nullable
              as BloodSugarRecords?,
      waterRecords: freezed == waterRecords
          ? _self.waterRecords
          : waterRecords // ignore: cast_nullable_to_non_nullable
              as WaterRecords?,
      stressMoodRecords: freezed == stressMoodRecords
          ? _self.stressMoodRecords
          : stressMoodRecords // ignore: cast_nullable_to_non_nullable
              as StressMoodRecords?,
      notifications: freezed == notifications
          ? _self.notifications
          : notifications // ignore: cast_nullable_to_non_nullable
              as LocalNotifications?,
      courseTreatments: freezed == courseTreatments
          ? _self.courseTreatments
          : courseTreatments // ignore: cast_nullable_to_non_nullable
              as CourseTreatments?,
      medications: freezed == medications
          ? _self.medications
          : medications // ignore: cast_nullable_to_non_nullable
              as Medications?,
      themePreference: freezed == themePreference
          ? _self.themePreference
          : themePreference // ignore: cast_nullable_to_non_nullable
              as ThemePreference?,
      locale: freezed == locale
          ? _self.locale
          : locale // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  /// Create a copy of FirebaseSyncData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res>? get profile {
    if (_self.profile == null) {
      return null;
    }

    return $UserCopyWith<$Res>(_self.profile!, (value) {
      return _then(_self.copyWith(profile: value));
    });
  }

  /// Create a copy of FirebaseSyncData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $WorkoutsCopyWith<$Res>? get workouts {
    if (_self.workouts == null) {
      return null;
    }

    return $WorkoutsCopyWith<$Res>(_self.workouts!, (value) {
      return _then(_self.copyWith(workouts: value));
    });
  }

  /// Create a copy of FirebaseSyncData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BloodPressureRecordsCopyWith<$Res>? get bloodPressureRecords {
    if (_self.bloodPressureRecords == null) {
      return null;
    }

    return $BloodPressureRecordsCopyWith<$Res>(_self.bloodPressureRecords!,
        (value) {
      return _then(_self.copyWith(bloodPressureRecords: value));
    });
  }

  /// Create a copy of FirebaseSyncData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TemperatureRecordsCopyWith<$Res>? get temperatureRecords {
    if (_self.temperatureRecords == null) {
      return null;
    }

    return $TemperatureRecordsCopyWith<$Res>(_self.temperatureRecords!,
        (value) {
      return _then(_self.copyWith(temperatureRecords: value));
    });
  }

  /// Create a copy of FirebaseSyncData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BloodSugarRecordsCopyWith<$Res>? get bloodSugarRecords {
    if (_self.bloodSugarRecords == null) {
      return null;
    }

    return $BloodSugarRecordsCopyWith<$Res>(_self.bloodSugarRecords!, (value) {
      return _then(_self.copyWith(bloodSugarRecords: value));
    });
  }

  /// Create a copy of FirebaseSyncData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $WaterRecordsCopyWith<$Res>? get waterRecords {
    if (_self.waterRecords == null) {
      return null;
    }

    return $WaterRecordsCopyWith<$Res>(_self.waterRecords!, (value) {
      return _then(_self.copyWith(waterRecords: value));
    });
  }

  /// Create a copy of FirebaseSyncData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StressMoodRecordsCopyWith<$Res>? get stressMoodRecords {
    if (_self.stressMoodRecords == null) {
      return null;
    }

    return $StressMoodRecordsCopyWith<$Res>(_self.stressMoodRecords!, (value) {
      return _then(_self.copyWith(stressMoodRecords: value));
    });
  }

  /// Create a copy of FirebaseSyncData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LocalNotificationsCopyWith<$Res>? get notifications {
    if (_self.notifications == null) {
      return null;
    }

    return $LocalNotificationsCopyWith<$Res>(_self.notifications!, (value) {
      return _then(_self.copyWith(notifications: value));
    });
  }

  /// Create a copy of FirebaseSyncData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CourseTreatmentsCopyWith<$Res>? get courseTreatments {
    if (_self.courseTreatments == null) {
      return null;
    }

    return $CourseTreatmentsCopyWith<$Res>(_self.courseTreatments!, (value) {
      return _then(_self.copyWith(courseTreatments: value));
    });
  }

  /// Create a copy of FirebaseSyncData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MedicationsCopyWith<$Res>? get medications {
    if (_self.medications == null) {
      return null;
    }

    return $MedicationsCopyWith<$Res>(_self.medications!, (value) {
      return _then(_self.copyWith(medications: value));
    });
  }

  /// Create a copy of FirebaseSyncData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ThemePreferenceCopyWith<$Res>? get themePreference {
    if (_self.themePreference == null) {
      return null;
    }

    return $ThemePreferenceCopyWith<$Res>(_self.themePreference!, (value) {
      return _then(_self.copyWith(themePreference: value));
    });
  }
}

// dart format on
