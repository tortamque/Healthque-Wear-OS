import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:healthque_wear_os/core/extensions/context.dart';
import 'package:healthque_wear_os/features/firebase_sync/firebase_sync.dart';

class MedicationCard extends StatelessWidget {
  final Medication medication;

  const MedicationCard({super.key, required this.medication});

  @override
  Widget build(BuildContext context) {
    final dt = medication.createdAt;
    final dateStr =
        "${dt.day.toString().padLeft(2, '0')}.${dt.month.toString().padLeft(2, '0')}.${dt.year} ${dt.hour}:${dt.minute.toString().padLeft(2, '0')}";
    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              medication.type.displayName(context),
              style: context.textTheme.titleMedium,
            ),
            const Gap(4),
            Text(
              "${context.strings.dosage}: ${medication.dosage} ${context.strings.dosageUnit}",
              style: context.textTheme.bodyMedium,
            ),
            const Gap(4),
            Text(
              "${context.strings.course}: ${medication.course}",
              style: context.textTheme.bodyMedium,
            ),
            const Gap(4),
            Text(
              dateStr,
              style: context.textTheme.bodySmall,
            ),
            if (medication.notes != null && (medication.notes ?? '').isNotEmpty) ...[
              const Gap(8),
              Text(
                medication.notes ?? '',
                style: context.textTheme.bodySmall,
              ),
            ],
          ],
        ),
      ),
    );
  }
}
