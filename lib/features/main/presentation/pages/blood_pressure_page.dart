import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:healthque_wear_os/core/extensions/context.dart';
import 'package:healthque_wear_os/core/shared/shared.dart';
import 'package:healthque_wear_os/features/firebase_sync/firebase_sync.dart';
import 'package:healthque_wear_os/features/main/main.dart';

class BloodPressurePage extends StatefulWidget {
  const BloodPressurePage({super.key, required this.records});

  final List<BloodPressureRecord> records;

  @override
  State<BloodPressurePage> createState() => _BloodPressurePageState();
}

class _BloodPressurePageState extends State<BloodPressurePage> with BackButtonListenerMixin<BloodPressurePage> {
  @override
  Widget build(BuildContext context) {
    return UnifiedBody(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            context.strings.bloodPressureTrend,
            style: context.textTheme.titleSmall,
            textAlign: TextAlign.center,
          ),
          const Gap(8),
          BloodPressureTrendLineChart(records: widget.records),
          const Gap(16),
          Text(
            context.strings.dailyAverageBp,
            style: context.textTheme.titleMedium,
            textAlign: TextAlign.center,
          ),
          const Gap(8),
          BloodPressureAveragesBarChart(records: widget.records),
          const Gap(16),
          Text(
            context.strings.bloodPressureHistory,
            style: context.textTheme.titleSmall,
            textAlign: TextAlign.center,
          ),
          const Gap(8),
          BloodPressureListView(records: widget.records),
        ],
      ),
    );
  }
}
