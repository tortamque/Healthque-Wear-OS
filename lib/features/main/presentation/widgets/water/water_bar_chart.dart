import 'dart:math';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:healthque_wear_os/core/extensions/context.dart';
import 'package:healthque_wear_os/core/shared/shared.dart';
import 'package:healthque_wear_os/features/firebase_sync/firebase_sync.dart';

class WaterConsumptionBarChart extends StatelessWidget {
  final List<WaterRecord> records;

  const WaterConsumptionBarChart({super.key, required this.records});

  @override
  Widget build(BuildContext context) {
    if (records.isEmpty) {
      return const NotEnoughDataPlaceholder(padding: EdgeInsets.symmetric(vertical: 8));
    }
    final Map<String, double> dailyAmount = {};
    for (final record in records) {
      final key =
          "${record.datetime.year}-${record.datetime.month.toString().padLeft(2, '0')}-${record.datetime.day.toString().padLeft(2, '0')}";
      dailyAmount.update(key, (existing) => existing + record.amount, ifAbsent: () => record.amount);
    }
    final List<String> sortedDays = dailyAmount.keys.toList()..sort();
    if (sortedDays.isEmpty) {
      return const NotEnoughDataPlaceholder(padding: EdgeInsets.symmetric(vertical: 8));
    }
    final List<String> displayDays = sortedDays.length > 4 ? sortedDays.sublist(sortedDays.length - 4) : sortedDays;

    final List<BarChartGroupData> groups = [];
    double maxY = 0;
    for (int i = 0; i < displayDays.length; i++) {
      final double totalAmount = dailyAmount[displayDays[i]]!;
      maxY = max(maxY, totalAmount);
      groups.add(
        BarChartGroupData(
          x: i,
          barRods: [
            BarChartRodData(
              toY: totalAmount,
              color: context.theme.colorScheme.primary,
              width: 12,
              borderRadius: BorderRadius.circular(4),
            ),
          ],
        ),
      );
    }
    maxY = maxY + (maxY * 0.1);
    final double interval = maxY / 4;

    return AspectRatio(
      aspectRatio: 1.6,
      child: BarChart(
        BarChartData(
          maxY: maxY,
          alignment: BarChartAlignment.spaceAround,
          barGroups: groups,
          gridData: FlGridData(show: false),
          borderData: FlBorderData(show: false),
          titlesData: FlTitlesData(
            bottomTitles: AxisTitles(
              sideTitles: SideTitles(
                showTitles: true,
                reservedSize: 24,
                getTitlesWidget: (value, meta) {
                  if (value.toInt() < displayDays.length) {
                    final parts = displayDays[value.toInt()].split('-');
                    final label = "${parts[2]}.${parts[1]}";
                    return SideTitleWidget(
                      meta: meta,
                      space: 4,
                      child: Text(label, style: const TextStyle(fontSize: 10)),
                    );
                  }
                  return Container();
                },
              ),
            ),
            rightTitles: AxisTitles(
              sideTitles: SideTitles(
                maxIncluded: false,
                showTitles: true,
                reservedSize: 40,
                interval: interval,
                getTitlesWidget: (value, meta) {
                  final label = "${value.toStringAsFixed(1)} ${context.strings.liters}";
                  return SideTitleWidget(
                    meta: meta,
                    space: 8,
                    child: Text(label, style: const TextStyle(fontSize: 10)),
                  );
                },
              ),
            ),
            leftTitles: AxisTitles(
              sideTitles: SideTitles(showTitles: false),
            ),
            topTitles: AxisTitles(
              sideTitles: SideTitles(showTitles: false),
            ),
          ),
          barTouchData: BarTouchData(enabled: false),
        ),
        duration: const Duration(milliseconds: 150),
        curve: Curves.linear,
      ),
    );
  }
}
