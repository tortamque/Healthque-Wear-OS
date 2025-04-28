import 'package:healthque_wear_os/features/firebase_sync/firebase_sync.dart';
import 'package:healthque_wear_os/utils/utils.dart';
import 'package:hive_flutter/hive_flutter.dart';

class TemperatureTrackingHiveManager implements HiveManager<TemperatureRecords> {
  @override
  late Box<TemperatureRecords> box;

  @override
  String get hiveKey => 'temperatureRecords';

  @override
  Future<void> init() async {
    box = await Hive.openBox<TemperatureRecords>(hiveKey);
  }
}
