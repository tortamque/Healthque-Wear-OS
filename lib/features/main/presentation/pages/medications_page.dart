import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:healthque_wear_os/core/extensions/context.dart';
import 'package:healthque_wear_os/core/shared/shared.dart';
import 'package:healthque_wear_os/features/firebase_sync/firebase_sync.dart';
import 'package:healthque_wear_os/features/main/main.dart';

class MedicationsPage extends StatefulWidget {
  const MedicationsPage({super.key, required this.records});

  final List<Medication> records;

  @override
  State<MedicationsPage> createState() => _MedicationsPageState();
}

class _MedicationsPageState extends State<MedicationsPage> with BackButtonListenerMixin<MedicationsPage> {
  @override
  Widget build(BuildContext context) {
    return UnifiedBody(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            context.strings.medicationTypeDistribution,
            style: context.textTheme.titleMedium,
          ),
          const Gap(8),
          MedicationsTypeBarChart(records: widget.records),
          const Gap(16),
          Text(
            context.strings.dosageTrend,
            style: context.textTheme.titleMedium,
          ),
          const Gap(8),
          MedicationDosageTrendLineChart(records: widget.records),
          const Gap(16),
          Text(
            context.strings.medicationHistory,
            style: context.textTheme.titleMedium,
          ),
          const Gap(8),
          MedicationListView(records: widget.records),
        ],
      ),
    );
  }
}
