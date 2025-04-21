import 'package:healthque_wear_os/features/firebase_sync/firebase_sync.dart';
import 'package:healthque_wear_os/utils/utils.dart';
import 'package:hive_flutter/hive_flutter.dart';

class WaterTrackingHiveManager implements HiveManager<WaterRecords> {
  @override
  late Box<WaterRecords> box;
  @override
  String get hiveKey => 'water_records';

  @override
  Future<void> init() async {
    box = await Hive.openBox<WaterRecords>(hiveKey);
  }
}
