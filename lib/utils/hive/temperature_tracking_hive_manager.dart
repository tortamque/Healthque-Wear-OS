import 'package:healthque_wear_os/features/firebase_sync/firebase_sync.dart';
import 'package:hive_flutter/hive_flutter.dart';

class TemperatureTrackingHiveManager {
  late Box<TemperatureRecords> temperatureRecordsBox;

  String get hiveKey => 'temperatureRecords';

  Future<void> init() async {
    temperatureRecordsBox = await Hive.openBox<TemperatureRecords>(hiveKey);
  }
}
