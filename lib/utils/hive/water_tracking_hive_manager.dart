import 'package:healthque_wear_os/features/firebase_sync/firebase_sync.dart';
import 'package:hive_flutter/hive_flutter.dart';

class WaterTrackingHiveManager {
  late Box<WaterRecords> waterRecordsBox;
  String get hiveKey => 'water_records';

  Future<void> init() async {
    waterRecordsBox = await Hive.openBox<WaterRecords>(hiveKey);
  }
}
