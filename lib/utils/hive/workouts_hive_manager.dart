import 'package:healthque_wear_os/features/firebase_sync/domain/entities/workout/workouts.dart';
import 'package:healthque_wear_os/utils/utils.dart';
import 'package:hive_flutter/hive_flutter.dart';

class WorkoutsHiveManager implements HiveManager<Workouts> {
  @override
  late Box<Workouts> box;

  @override
  String get hiveKey => 'workouts';

  @override
  Future<void> init() async {
    box = await Hive.openBox<Workouts>(hiveKey);
  }
}
