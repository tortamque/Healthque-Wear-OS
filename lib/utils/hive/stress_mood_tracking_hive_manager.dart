import 'package:healthque_wear_os/features/firebase_sync/firebase_sync.dart';
import 'package:healthque_wear_os/utils/utils.dart';
import 'package:hive_flutter/hive_flutter.dart';

class StressMoodTrackingHiveManager implements HiveManager<StressMoodRecords> {
  @override
  late Box<StressMoodRecords> box;

  @override
  String get hiveKey => 'stress_mood_records';

  @override
  Future<void> init() async {
    box = await Hive.openBox<StressMoodRecords>(hiveKey);
  }
}
