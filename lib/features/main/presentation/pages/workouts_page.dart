import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:healthque_wear_os/core/extensions/context.dart';
import 'package:healthque_wear_os/core/shared/shared.dart';
import 'package:healthque_wear_os/features/firebase_sync/firebase_sync.dart';
import 'package:healthque_wear_os/features/main/main.dart';

class WorkoutsPage extends StatefulWidget {
  const WorkoutsPage({super.key, required this.workouts});

  final List<Workout> workouts;

  @override
  State<WorkoutsPage> createState() => _WorkoutsPageState();
}

class _WorkoutsPageState extends State<WorkoutsPage> with BackButtonListenerMixin<WorkoutsPage> {
  @override
  Widget build(BuildContext context) {
    return UnifiedBody(
      child: Column(
        children: [
          Text(context.strings.amountOfEach, textAlign: TextAlign.center),
          WorkoutTypeBarChart(workouts: widget.workouts),
          Gap(8),
          Text(context.strings.workoutDurationOver, textAlign: TextAlign.center),
          WorkoutDurationLineChart(workouts: widget.workouts),
          Gap(8),
          Text(context.strings.workoutHistory, textAlign: TextAlign.center),
          WorkoutListView(workouts: widget.workouts),
        ],
      ),
    );
  }
}
