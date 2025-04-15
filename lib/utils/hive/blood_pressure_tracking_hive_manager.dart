import 'package:healthque_wear_os/features/firebase_sync/firebase_sync.dart';
import 'package:hive_flutter/hive_flutter.dart';

class BloodPressureTrackingHiveManager {
  late Box<BloodPressureRecords> bloodPressureBox;
  String get hiveKey => 'bloodPressureRecords';

  Future<void> init() async {
    bloodPressureBox = await Hive.openBox<BloodPressureRecords>(hiveKey);
  }
}
