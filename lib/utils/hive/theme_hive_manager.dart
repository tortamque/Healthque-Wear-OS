import 'package:healthque_wear_os/features/firebase_sync/firebase_sync.dart';
import 'package:healthque_wear_os/utils/utils.dart';
import 'package:hive_flutter/hive_flutter.dart';

class ThemePreferenceHiveManager implements HiveManager<ThemePreference> {
  @override
  late Box<ThemePreference> box;

  @override
  String get hiveKey => 'theme_preference';

  @override
  Future<void> init() async {
    box = await Hive.openBox<ThemePreference>(hiveKey);
  }
}
