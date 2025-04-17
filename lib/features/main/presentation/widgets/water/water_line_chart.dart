import 'dart:math';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:healthque_wear_os/core/extensions/context.dart';
import 'package:healthque_wear_os/core/shared/shared.dart';
import 'package:healthque_wear_os/features/firebase_sync/firebase_sync.dart';

class WaterTrendLineChart extends StatelessWidget {
  final List<WaterRecord> records;

  const WaterTrendLineChart({super.key, required this.records});

  @override
  Widget build(BuildContext context) {
    if (records.isEmpty) {
      return const NotEnoughDataPlaceholder(padding: EdgeInsets.symmetric(vertical: 8));
    }
    final Map<String, double> dailyAmount = {};
    for (final record in records) {
      final dateKey =
          "${record.datetime.year}-${record.datetime.month.toString().padLeft(2, '0')}-${record.datetime.day.toString().padLeft(2, '0')}";
      dailyAmount.update(dateKey, (existing) => existing + record.amount, ifAbsent: () => record.amount);
    }
    final List<String> sortedDays = dailyAmount.keys.toList()..sort();
    if (sortedDays.length < 2) {
      return const NotEnoughDataPlaceholder(padding: EdgeInsets.symmetric(vertical: 8));
    }
    final List<String> displayDays = sortedDays.length > 4 ? sortedDays.sublist(sortedDays.length - 4) : sortedDays;

    final List<FlSpot> spots = [];
    double maxY = 0;
    for (int i = 0; i < displayDays.length; i++) {
      final amount = dailyAmount[displayDays[i]]!;
      maxY = max(maxY, amount);
      spots.add(FlSpot(i.toDouble(), amount));
    }
    final double rightInterval = maxY / 3;

    return AspectRatio(
      aspectRatio: 1.5,
      child: LineChart(
        LineChartData(
          lineTouchData: LineTouchData(enabled: false),
          gridData: FlGridData(show: false),
          titlesData: FlTitlesData(
            bottomTitles: AxisTitles(
              sideTitles: SideTitles(
                showTitles: true,
                reservedSize: 24,
                interval: 1,
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
                interval: rightInterval,
                getTitlesWidget: (value, meta) {
                  final label = "${value.toStringAsFixed(1)}${context.strings.liters}";
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
          borderData: FlBorderData(show: false),
          minX: 0,
          maxX: (displayDays.length - 1).toDouble(),
          minY: 0,
          maxY: maxY + (maxY * 0.1),
          lineBarsData: [
            LineChartBarData(
              isCurved: true,
              spots: spots,
              barWidth: 3,
              color: context.theme.colorScheme.primary,
              dotData: FlDotData(show: true),
              belowBarData: BarAreaData(
                show: true,
                color: context.theme.colorScheme.primary.withOpacity(0.3),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
