import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:healthque_wear_os/features/firebase_sync/firebase_sync.dart';
import 'package:hive/hive.dart';

part 'workouts.freezed.dart';
part 'workouts.g.dart';

@freezed
abstract class Workouts with _$Workouts {
  @HiveType(typeId: 4, adapterName: 'WorkoutsAdapter')
  const factory Workouts({
    @HiveField(0) required List<Workout> workouts,
  }) = _Workouts;

  factory Workouts.fromJson(Map<String, dynamic> json) => _$WorkoutsFromJson(json);
}
