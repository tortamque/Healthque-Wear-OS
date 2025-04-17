import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:healthque_wear_os/core/extensions/context.dart';
import 'package:healthque_wear_os/features/firebase_sync/firebase_sync.dart';

class CourseTreatmentCard extends StatelessWidget {
  final CourseTreatment courseTreatment;

  const CourseTreatmentCard({super.key, required this.courseTreatment});

  @override
  Widget build(BuildContext context) {
    final start = courseTreatment.courseStart;
    final end = courseTreatment.courseEnd;
    final medicationTime = courseTreatment.medicationTime;
    final periodLabel = context.strings.courseFromTo(
      "${start.day.toString().padLeft(2, '0')}.${start.month.toString().padLeft(2, '0')}.${start.year}",
      "${end.day.toString().padLeft(2, '0')}.${end.month.toString().padLeft(2, '0')}.${end.year}",
    );
    final medicationTimeStr =
        "${medicationTime.hour.toString().padLeft(2, '0')}:${medicationTime.minute.toString().padLeft(2, '0')}";

    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              periodLabel,
              style: context.textTheme.titleMedium,
            ),
            const Gap(4),
            Text(
              "${context.strings.medicationTime}: $medicationTimeStr",
              style: context.textTheme.bodySmall,
            ),
            const Gap(8),
            Wrap(
              spacing: 4,
              runSpacing: 4,
              children: courseTreatment.entries.map((entry) {
                return Chip(
                  label: Text(
                    "${entry.name} (${entry.medicationType.displayName(context)} - ${entry.dosage})",
                    style: const TextStyle(fontSize: 10),
                  ),
                );
              }).toList(),
            )
          ],
        ),
      ),
    );
  }
}
