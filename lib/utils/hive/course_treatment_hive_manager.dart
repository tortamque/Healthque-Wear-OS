import 'package:healthque_wear_os/features/firebase_sync/firebase_sync.dart';
import 'package:healthque_wear_os/utils/utils.dart';
import 'package:hive_flutter/hive_flutter.dart';

class CourseTreatmentHiveManager implements HiveManager<CourseTreatments> {
  @override
  late Box<CourseTreatments> box;
  @override
  String get hiveKey => 'course_treatments';

  @override
  Future<void> init() async {
    box = await Hive.openBox<CourseTreatments>(hiveKey);
  }
}
