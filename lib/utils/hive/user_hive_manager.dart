import 'package:healthque_wear_os/features/firebase_sync/firebase_sync.dart';
import 'package:hive_flutter/hive_flutter.dart';

class UserHiveManager {
  late Box<User> userBox;

  String get hiveKey => 'user';

  Future<void> init() async {
    userBox = await Hive.openBox<User>(hiveKey);
  }
}
