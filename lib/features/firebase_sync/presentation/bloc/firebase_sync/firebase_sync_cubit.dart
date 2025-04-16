import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:healthque_wear_os/features/firebase_sync/firebase_sync.dart';
import 'package:healthque_wear_os/utils/hive/hive.dart';

part 'firebase_sync_state.dart';
part 'firebase_sync_cubit.freezed.dart';

class FirebaseSyncCubit extends Cubit<FirebaseSyncState> {
  final GetUserDataUseCase _getUserDataUseCase;
  final UserHiveManager _userHiveManager;
  final WorkoutsHiveManager _workoutsHiveManager;
  final BloodPressureTrackingHiveManager _bloodPressureTrackingHiveManager;
  final TemperatureTrackingHiveManager _temperatureTrackingHiveManager;
  final BloodSugarTrackingHiveManager _bloodSugarTrackingHiveManager;
  final WaterTrackingHiveManager _waterTrackingHiveManager;
  final StressMoodTrackingHiveManager _stressMoodTrackingHiveManager;
  final NotificationsHiveManager _notificationsHiveManager;
  final CourseTreatmentHiveManager _courseTreatmentHiveManager;
  final MedicationTrackingHiveManager _medicationTrackingHiveManager;
  final ThemePreferenceHiveManager _themePreferenceHiveManager;
  final LocaleHiveManager _localeHiveManager;

  FirebaseSyncCubit(
    this._getUserDataUseCase,
    this._userHiveManager,
    this._workoutsHiveManager,
    this._bloodPressureTrackingHiveManager,
    this._temperatureTrackingHiveManager,
    this._bloodSugarTrackingHiveManager,
    this._waterTrackingHiveManager,
    this._stressMoodTrackingHiveManager,
    this._notificationsHiveManager,
    this._courseTreatmentHiveManager,
    this._medicationTrackingHiveManager,
    this._themePreferenceHiveManager,
    this._localeHiveManager,
  ) : super(FirebaseSyncState());

  Future<void> loadUserData() async {
    try {
      emit(state.copyWith(isLoading: true));
      final jsonData = await _getUserDataUseCase(null);
      if (jsonData == null) {
        emit(
          state.copyWith(isLoading: false),
        );
        return;
      }

      final Map<String, dynamic> profileJson =
          jsonData["profile"] != null ? _castMapDeep(jsonData["profile"] as Map) : {};
      final Map<String, dynamic> workoutsJson =
          jsonData["workouts"] != null ? _castMapDeep(jsonData["workouts"] as Map) : {"workouts": []};
      final Map<String, dynamic> bloodPressureRecordsJson = jsonData["bloodPressureRecords"] != null
          ? _castMapDeep(jsonData["bloodPressureRecords"] as Map)
          : {"records": []};
      final Map<String, dynamic> temperatureRecordsJson = jsonData["temperatureRecords"] != null
          ? _castMapDeep(jsonData["temperatureRecords"] as Map)
          : {"records": []};
      final Map<String, dynamic> bloodSugarRecordsJson =
          jsonData["bloodSugarRecords"] != null ? _castMapDeep(jsonData["bloodSugarRecords"] as Map) : {"records": []};
      final Map<String, dynamic> waterRecordsJson =
          jsonData["waterRecords"] != null ? _castMapDeep(jsonData["waterRecords"] as Map) : {"records": []};
      final Map<String, dynamic> stressMoodRecordsJson =
          jsonData["stressMoodRecords"] != null ? _castMapDeep(jsonData["stressMoodRecords"] as Map) : {"records": []};
      final Map<String, dynamic> notificationsJson =
          jsonData["notifications"] != null ? _castMapDeep(jsonData["notifications"] as Map) : {"notifications": []};
      final Map<String, dynamic> courseTreatmentsJson = jsonData["courseTreatments"] is Map
          ? _castMapDeep(jsonData["courseTreatments"] as Map<dynamic, dynamic>)
          : {"courses": []};
      final Map<String, dynamic> medicationsJson =
          jsonData["medications"] != null ? _castMapDeep(jsonData["medications"] as Map) : {"medications": []};
      final Map<String, dynamic> themePreferenceJson =
          jsonData["themePreference"] != null ? _castMapDeep(jsonData["themePreference"] as Map) : {};
      final Map<String, dynamic> localeJson =
          jsonData["locale"] != null ? _castMapDeep(jsonData["locale"] as Map) : {"locale": "en"};

      final FirebaseSyncData parsedData = FirebaseSyncData(
        profile: User.fromJson(profileJson),
        workouts: Workouts.fromJson(workoutsJson),
        bloodPressureRecords: BloodPressureRecords.fromJson(bloodPressureRecordsJson),
        temperatureRecords: TemperatureRecords.fromJson(temperatureRecordsJson),
        bloodSugarRecords: BloodSugarRecords.fromJson(bloodSugarRecordsJson),
        waterRecords: WaterRecords.fromJson(waterRecordsJson),
        stressMoodRecords: StressMoodRecords.fromJson(stressMoodRecordsJson),
        notifications: LocalNotifications.fromJson(notificationsJson),
        courseTreatments: CourseTreatments.fromJson(courseTreatmentsJson),
        medications: Medications.fromJson(medicationsJson),
        themePreference: ThemePreference.fromJson(themePreferenceJson),
        locale: localeJson["locale"] as String,
      );

      emit(state.copyWith(isLoading: false, syncData: parsedData));
    } catch (e) {
      emit(state.copyWith(isLoading: false, errorMessage: e.toString()));
    }
  }

  Future<void> saveDataToHives(FirebaseSyncData data) async {
    try {
      await _userHiveManager.userBox.put(_userHiveManager.hiveKey, data.profile);
      await _workoutsHiveManager.workoutsBox.put(_workoutsHiveManager.hiveKey, data.workouts);
      await _bloodPressureTrackingHiveManager.bloodPressureBox
          .put(_bloodPressureTrackingHiveManager.hiveKey, data.bloodPressureRecords);
      await _temperatureTrackingHiveManager.temperatureRecordsBox
          .put(_temperatureTrackingHiveManager.hiveKey, data.temperatureRecords);
      await _bloodSugarTrackingHiveManager.bloodSugarRecordsBox
          .put(_bloodSugarTrackingHiveManager.hiveKey, data.bloodSugarRecords);
      await _waterTrackingHiveManager.waterRecordsBox.put(_waterTrackingHiveManager.hiveKey, data.waterRecords);
      await _stressMoodTrackingHiveManager.stressMoodBox
          .put(_stressMoodTrackingHiveManager.hiveKey, data.stressMoodRecords);
      await _notificationsHiveManager.notifications.put(_notificationsHiveManager.hiveKey, data.notifications);
      await _courseTreatmentHiveManager.courseTreatmentsBox
          .put(_courseTreatmentHiveManager.hiveKey, data.courseTreatments);
      await _medicationTrackingHiveManager.medicationTrackingBox
          .put(_medicationTrackingHiveManager.hiveKey, data.medications);
      await _themePreferenceHiveManager.themePreferenceBox
          .put(_themePreferenceHiveManager.hiveKey, data.themePreference);
      await _localeHiveManager.localeBox.put(_localeHiveManager.hiveKey, data.locale);
    } catch (e) {
      rethrow;
    }
  }

  Future<void> init() async {
    try {
      await loadUserData();
      if (state.syncData != null) {
        await saveDataToHives(state.syncData!);
      }
    } catch (e) {
      emit(state.copyWith(errorMessage: e.toString()));
    }
  }

  Map<String, dynamic> _castMapDeep(Map<dynamic, dynamic> map) {
    return map.map((key, value) {
      final newKey = key is String ? key : key.toString();
      if (value is Map) {
        return MapEntry(newKey, _castMapDeep(value));
      } else if (value is List) {
        return MapEntry(
          newKey,
          value.map((element) {
            if (element is Map) {
              return _castMapDeep(element);
            }
            return element;
          }).toList(),
        );
      } else {
        return MapEntry(newKey, value);
      }
    });
  }
}
