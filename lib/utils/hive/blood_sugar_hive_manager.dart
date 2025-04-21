import 'package:healthque_wear_os/features/firebase_sync/firebase_sync.dart';
import 'package:healthque_wear_os/utils/utils.dart';
import 'package:hive_flutter/hive_flutter.dart';

class BloodSugarTrackingHiveManager implements HiveManager<BloodSugarRecords> {
  @override
  late Box<BloodSugarRecords> box;

  @override
  String get hiveKey => 'bloodSugarRecords';

  @override
  Future<void> init() async {
    box = await Hive.openBox<BloodSugarRecords>(hiveKey);
  }
}
