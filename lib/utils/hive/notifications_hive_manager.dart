import 'package:healthque_wear_os/features/firebase_sync/firebase_sync.dart';
import 'package:healthque_wear_os/utils/utils.dart';
import 'package:hive_flutter/hive_flutter.dart';

class NotificationsHiveManager implements HiveManager<LocalNotifications> {
  @override
  late Box<LocalNotifications> box;

  @override
  String get hiveKey => 'local_notifications';

  @override
  Future<void> init() async {
    box = await Hive.openBox<LocalNotifications>(hiveKey);
  }
}
