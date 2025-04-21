import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:healthque_wear_os/core/extensions/context.dart';
import 'package:healthque_wear_os/features/firebase_sync/firebase_sync.dart';

class WorkoutCard extends StatelessWidget {
  final Workout workout;

  const WorkoutCard({
    super.key,
    required this.workout,
  });

  String _formatDuration(BuildContext context, int minutes) {
    if (minutes < 60) {
      return context.strings.amountMinutes(minutes);
    } else {
      final hours = minutes ~/ 60;
      final remainingMinutes = minutes % 60;
      if (remainingMinutes == 0) {
        return context.strings.amountHours(hours);
      } else {
        return context.strings.amountHoursMinutes(hours, remainingMinutes);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    final createdAt = workout.createdAt;
    final createdAtStr =
        "${createdAt.day.toString().padLeft(2, '0')}.${createdAt.month.toString().padLeft(2, '0')}.${createdAt.year} ${createdAt.hour}:${createdAt.minute.toString().padLeft(2, '0')}";

    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  workout.workoutType.displayName(context),
                  style: context.textTheme.titleMedium,
                ),
                if (workout.isFavorite)
                  Icon(
                    Icons.favorite,
                    color: context.theme.colorScheme.primary,
                  ),
              ],
            ),
            const Gap(8),
            Text(
              _formatDuration(context, workout.durationMinutes),
              style: context.textTheme.bodyMedium,
            ),
            const Gap(4),
            Text(
              "${context.strings.intensity}: ${workout.intensity}",
              style: context.textTheme.bodyMedium,
            ),
            if (workout.distance != null) ...[
              const Gap(4),
              Text(
                "${workout.distance} ${context.strings.kilometers}",
                style: context.textTheme.bodyMedium,
              ),
            ],
            const Gap(4),
            if (workout.tags != null && workout.tags!.isNotEmpty)
              Wrap(
                spacing: 2,
                children: workout.tags!
                    .map(
                      (tag) => Chip(
                        label: Text(tag),
                        padding: const EdgeInsets.symmetric(horizontal: 2),
                        visualDensity: VisualDensity.compact,
                      ),
                    )
                    .toList(),
              ),
            const Gap(4),
            Text(
              "${context.strings.moodRating}: ${workout.moodRating}",
              style: context.textTheme.bodyMedium,
            ),
            const Gap(4),
            Text(
              createdAtStr,
              style: context.textTheme.bodySmall,
            ),
            if (workout.notes.isNotEmpty) ...[
              const Gap(8),
              Text(
                workout.notes,
                style: context.textTheme.bodySmall,
              ),
            ],
          ],
        ),
      ),
    );
  }
}
