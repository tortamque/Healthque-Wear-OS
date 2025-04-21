import 'package:healthque_wear_os/features/firebase_sync/firebase_sync.dart';
import 'package:healthque_wear_os/utils/utils.dart';
import 'package:hive_flutter/hive_flutter.dart';

class UserHiveManager implements HiveManager<User> {
  @override
  late Box<User> box;

  @override
  String get hiveKey => 'user';

  @override
  Future<void> init() async {
    box = await Hive.openBox<User>(hiveKey);
  }
}
