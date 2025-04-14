import 'package:healthque_wear_os/features/firebase_sync/firebase_sync.dart';
import 'package:hive_flutter/hive_flutter.dart';

class StressMoodTrackingHiveManager {
  late Box<StressMoodRecords> stressMoodBox;

  String get hiveKey => 'stress_mood_records';

  Future<void> init() async {
    stressMoodBox = await Hive.openBox<StressMoodRecords>(hiveKey);
  }
}
