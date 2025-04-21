import 'package:healthque_wear_os/features/firebase_sync/firebase_sync.dart';
import 'package:healthque_wear_os/utils/utils.dart';
import 'package:hive_flutter/hive_flutter.dart';

class MedicationTrackingHiveManager implements HiveManager<Medications> {
  @override
  late Box<Medications> box;

  @override
  String get hiveKey => 'medicationTracking';

  @override
  Future<void> init() async {
    box = await Hive.openBox<Medications>(hiveKey);
  }
}
