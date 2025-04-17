import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:healthque_wear_os/core/extensions/context.dart';
import 'package:healthque_wear_os/core/shared/shared.dart';
import 'package:healthque_wear_os/features/firebase_sync/firebase_sync.dart';
import 'package:healthque_wear_os/features/main/main.dart';

class BloodSugarPage extends StatefulWidget {
  const BloodSugarPage({super.key, required this.records});

  final List<BloodSugarRecord> records;

  @override
  State<BloodSugarPage> createState() => _BloodSugarPageState();
}

class _BloodSugarPageState extends State<BloodSugarPage> with BackButtonListenerMixin<BloodSugarPage> {
  @override
  Widget build(BuildContext context) {
    return UnifiedBody(
      child: Column(
        children: [
          Text(
            context.strings.bloodSugarTrend,
            style: context.textTheme.titleMedium,
          ),
          const Gap(8),
          BloodSugarTrendLineChart(records: widget.records),
          const Gap(16),
          Text(
            context.strings.dailyAverageBloodSugar,
            style: context.textTheme.titleMedium,
          ),
          const Gap(8),
          BloodSugarAveragesBarChart(records: widget.records),
          const Gap(16),
          Text(
            context.strings.bloodSugarHistory,
            style: context.textTheme.titleMedium,
          ),
          const Gap(8),
          BloodSugarListView(records: widget.records),
        ],
      ),
    );
  }
}
