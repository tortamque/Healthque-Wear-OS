import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:healthque_wear_os/core/extensions/context.dart';
import 'package:healthque_wear_os/core/shared/shared.dart';
import 'package:healthque_wear_os/features/firebase_sync/firebase_sync.dart';
import 'package:healthque_wear_os/features/main/main.dart';

class TemperaturePage extends StatefulWidget {
  const TemperaturePage({super.key, required this.records});

  final List<TemperatureRecord> records;

  @override
  State<TemperaturePage> createState() => _TemperaturePageState();
}

class _TemperaturePageState extends State<TemperaturePage> with BackButtonListenerMixin<TemperaturePage> {
  @override
  Widget build(BuildContext context) {
    return UnifiedBody(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            context.strings.temperatureTrend,
            style: context.textTheme.titleMedium,
          ),
          const Gap(8),
          TemperatureTrendLineChart(records: widget.records),
          const Gap(16),
          Text(
            context.strings.dailyAverageTemp,
            style: context.textTheme.titleMedium,
          ),
          const Gap(8),
          TemperatureAveragesBarChart(records: widget.records),
          const Gap(16),
          Text(
            context.strings.temperatureHistory,
            style: context.textTheme.titleMedium,
          ),
          const Gap(8),
          TemperatureListView(records: widget.records),
        ],
      ),
    );
  }
}
