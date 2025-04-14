import 'package:healthque_wear_os/features/firebase_sync/firebase_sync.dart';
import 'package:hive_flutter/hive_flutter.dart';

class CourseTreatmentHiveManager {
  late Box<CourseTreatments> courseTreatmentsBox;
  String get hiveKey => 'course_treatments';

  Future<void> init() async {
    courseTreatmentsBox = await Hive.openBox<CourseTreatments>(hiveKey);
  }
}
