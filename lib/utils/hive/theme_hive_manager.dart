import 'package:healthque_wear_os/features/firebase_sync/firebase_sync.dart';
import 'package:hive_flutter/hive_flutter.dart';

class ThemePreferenceHiveManager {
  late Box<ThemePreference> themePreferenceBox;

  String get hiveKey => 'theme_preference';

  Future<void> init() async {
    themePreferenceBox = await Hive.openBox<ThemePreference>(hiveKey);
  }
}
