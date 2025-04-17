import 'package:flutter/material.dart';
import 'package:healthque_wear_os/core/shared/shared.dart';
import 'package:healthque_wear_os/features/firebase_sync/firebase_sync.dart';
import 'package:healthque_wear_os/features/main/main.dart';

class WorkoutListView extends StatelessWidget {
  final List<Workout> workouts;

  const WorkoutListView({
    super.key,
    required this.workouts,
  });

  @override
  Widget build(BuildContext context) {
    if (workouts.isEmpty) {
      return const NotEnoughDataPlaceholder(
        padding: EdgeInsets.all(16),
      );
    }
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      padding: const EdgeInsets.all(4),
      itemCount: workouts.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.only(bottom: 12),
          child: WorkoutCard(workout: workouts[index]),
        );
      },
    );
  }
}
