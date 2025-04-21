import 'package:healthque_wear_os/features/firebase_sync/firebase_sync.dart';
import 'package:healthque_wear_os/utils/utils.dart';
import 'package:hive_flutter/hive_flutter.dart';

class BloodPressureTrackingHiveManager implements HiveManager<BloodPressureRecords> {
  @override
  late Box<BloodPressureRecords> box;
  @override
  String get hiveKey => 'bloodPressureRecords';

  @override
  Future<void> init() async {
    box = await Hive.openBox<BloodPressureRecords>(hiveKey);
  }
}
