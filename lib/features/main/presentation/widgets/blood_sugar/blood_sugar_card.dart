import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:healthque_wear_os/core/extensions/context.dart';
import 'package:healthque_wear_os/features/firebase_sync/firebase_sync.dart';

class BloodSugarCard extends StatelessWidget {
  final BloodSugarRecord record;

  const BloodSugarCard({super.key, required this.record});

  @override
  Widget build(BuildContext context) {
    final dt = record.measurementTime;
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
              "${record.glucose.toStringAsFixed(1)}${context.strings.mgPerDl}",
              style: context.textTheme.bodyMedium,
            ),
            const Gap(4),
            Text(
              dateStr,
              style: context.textTheme.bodySmall,
            ),
          ],
        ),
      ),
    );
  }
}
