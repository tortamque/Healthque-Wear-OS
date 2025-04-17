import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:healthque_wear_os/core/extensions/context.dart';
import 'package:healthque_wear_os/core/shared/shared.dart';
import 'package:healthque_wear_os/features/firebase_sync/firebase_sync.dart';
import 'package:healthque_wear_os/features/main/main.dart';

class WaterPage extends StatefulWidget {
  const WaterPage({super.key, required this.records});

  final List<WaterRecord> records;

  @override
  State<WaterPage> createState() => _WaterPageState();
}

class _WaterPageState extends State<WaterPage> with BackButtonListenerMixin<WaterPage> {
  @override
  Widget build(BuildContext context) {
    return UnifiedBody(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            context.strings.waterTrend,
            style: context.textTheme.titleMedium,
          ),
          const Gap(8),
          WaterTrendLineChart(records: widget.records),
          const Gap(16),
          Text(
            context.strings.dailyTotalWater,
            style: context.textTheme.titleMedium,
          ),
          const Gap(8),
          WaterConsumptionBarChart(records: widget.records),
          const Gap(16),
          Text(
            context.strings.waterHistory,
            style: context.textTheme.titleMedium,
          ),
          const Gap(8),
          WaterRecordListView(records: widget.records),
        ],
      ),
    );
  }
}
