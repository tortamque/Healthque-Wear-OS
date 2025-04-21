import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:healthque_wear_os/core/extensions/context.dart';
import 'package:healthque_wear_os/core/shared/shared.dart';
import 'package:healthque_wear_os/features/firebase_sync/firebase_sync.dart';
import 'package:healthque_wear_os/features/main/main.dart';

class StressMoodPage extends StatefulWidget {
  const StressMoodPage({super.key, required this.records});

  final List<StressMoodRecord> records;

  @override
  State<StressMoodPage> createState() => _StressMoodPageState();
}

class _StressMoodPageState extends State<StressMoodPage> with BackButtonListenerMixin<StressMoodPage> {
  @override
  Widget build(BuildContext context) {
    return UnifiedBody(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            context.strings.stressTrend,
            style: context.textTheme.titleMedium,
          ),
          const Gap(8),
          StressTrendLineChart(records: widget.records),
          const Gap(16),
          Text(
            context.strings.moodTrend,
            style: context.textTheme.titleMedium,
          ),
          const Gap(8),
          MoodTrendLineChart(records: widget.records),
          const Gap(16),
          Text(
            context.strings.stressMoodHistory,
            style: context.textTheme.titleMedium,
          ),
          const Gap(8),
          StressMoodListView(records: widget.records),
        ],
      ),
    );
  }
}
