import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:healthque_wear_os/features/firebase_sync/firebase_sync.dart';
import 'package:healthque_wear_os/utils/hive/hive.dart';
import 'package:internet_connection_checker_plus/internet_connection_checker_plus.dart';

part 'firebase_sync_state.dart';
part 'firebase_sync_cubit.freezed.dart';

class FirebaseSyncCubit extends Cubit<FirebaseSyncState> {
  final GetUserDataUseCase _getUserDataUseCase;

  final HiveManager _userHiveManager;
  final HiveManager _workoutsHiveManager;
  final HiveManager _bloodPressureTrackingHiveManager;
  final HiveManager _temperatureTrackingHiveManager;
  final HiveManager _bloodSugarTrackingHiveManager;
  final HiveManager _waterTrackingHiveManager;
  final HiveManager _stressMoodTrackingHiveManager;
  final HiveManager _notificationsHiveManager;
  final HiveManager _courseTreatmentHiveManager;
  final HiveManager _medicationTrackingHiveManager;
  final HiveManager _themePreferenceHiveManager;
  final HiveManager _localeHiveManager;

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
      if (await InternetConnection().hasInternetAccess) {
        await _loadFromFirebase();
      } else {
        await _loadFromCache();
      }
    } catch (e) {
      emit(state.copyWith(isLoading: false, errorMessage: e.toString()));
    }
  }

  Future<void> _loadFromCache() async {
    final profile = _userHiveManager.box.get(_userHiveManager.hiveKey);
    final workouts = _workoutsHiveManager.box.get(_workoutsHiveManager.hiveKey);
    final bloodPressureRecords = _bloodPressureTrackingHiveManager.box.get(_bloodPressureTrackingHiveManager.hiveKey);
    final temperatureRecords = _temperatureTrackingHiveManager.box.get(_temperatureTrackingHiveManager.hiveKey);
    final bloodSugarRecords = _bloodSugarTrackingHiveManager.box.get(_bloodSugarTrackingHiveManager.hiveKey);
    final waterRecords = _waterTrackingHiveManager.box.get(_waterTrackingHiveManager.hiveKey);
    final stressMoodRecords = _stressMoodTrackingHiveManager.box.get(_stressMoodTrackingHiveManager.hiveKey);
    final notifications = _notificationsHiveManager.box.get(_notificationsHiveManager.hiveKey);
    final courseTreatments = _courseTreatmentHiveManager.box.get(_courseTreatmentHiveManager.hiveKey);
    final medications = _medicationTrackingHiveManager.box.get(_medicationTrackingHiveManager.hiveKey);
    final themePreference = _themePreferenceHiveManager.box.get(_themePreferenceHiveManager.hiveKey);
    final locale = _localeHiveManager.box.get(_localeHiveManager.hiveKey);

    final syncData = FirebaseSyncData(
      profile: profile,
      workouts: workouts,
      bloodPressureRecords: bloodPressureRecords,
      temperatureRecords: temperatureRecords,
      bloodSugarRecords: bloodSugarRecords,
      waterRecords: waterRecords,
      stressMoodRecords: stressMoodRecords,
      notifications: notifications,
      courseTreatments: courseTreatments,
      medications: medications,
      themePreference: themePreference,
      locale: locale,
    );

    emit(state.copyWith(isLoading: false, syncData: syncData));
  }

  Future<void> _loadFromFirebase() async {
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
    final Map<String, dynamic> temperatureRecordsJson =
        jsonData["temperatureRecords"] != null ? _castMapDeep(jsonData["temperatureRecords"] as Map) : {"records": []};
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

    await _cacheData(parsedData);

    emit(state.copyWith(isLoading: false, syncData: parsedData));
  }

  Future<void> _cacheData(FirebaseSyncData parsedData) async {
    await _userHiveManager.box.put(_userHiveManager.hiveKey, parsedData.profile);
    await _workoutsHiveManager.box.put(_workoutsHiveManager.hiveKey, parsedData.workouts);
    await _bloodPressureTrackingHiveManager.box
        .put(_bloodPressureTrackingHiveManager.hiveKey, parsedData.bloodPressureRecords);
    await _temperatureTrackingHiveManager.box
        .put(_temperatureTrackingHiveManager.hiveKey, parsedData.temperatureRecords);
    await _bloodSugarTrackingHiveManager.box.put(_bloodSugarTrackingHiveManager.hiveKey, parsedData.bloodSugarRecords);
    await _waterTrackingHiveManager.box.put(_waterTrackingHiveManager.hiveKey, parsedData.waterRecords);
    await _stressMoodTrackingHiveManager.box.put(_stressMoodTrackingHiveManager.hiveKey, parsedData.stressMoodRecords);
    await _notificationsHiveManager.box.put(_notificationsHiveManager.hiveKey, parsedData.notifications);
    await _courseTreatmentHiveManager.box.put(_courseTreatmentHiveManager.hiveKey, parsedData.courseTreatments);
    await _medicationTrackingHiveManager.box.put(_medicationTrackingHiveManager.hiveKey, parsedData.medications);
    await _themePreferenceHiveManager.box.put(_themePreferenceHiveManager.hiveKey, parsedData.themePreference);
    await _localeHiveManager.box.put(_localeHiveManager.hiveKey, parsedData.locale);
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

  Future<void> init() async {
    try {
      await loadUserData();
    } catch (e) {
      emit(state.copyWith(errorMessage: e.toString()));
    }
  }
}
