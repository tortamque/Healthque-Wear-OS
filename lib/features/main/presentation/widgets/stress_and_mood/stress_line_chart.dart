import 'dart:math';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:healthque_wear_os/core/extensions/color.dart';
import 'package:healthque_wear_os/core/extensions/context.dart';
import 'package:healthque_wear_os/core/shared/shared.dart';
import 'package:healthque_wear_os/features/firebase_sync/firebase_sync.dart';

class StressTrendLineChart extends StatelessWidget {
  final List<StressMoodRecord> records;

  const StressTrendLineChart({super.key, required this.records});

  @override
  Widget build(BuildContext context) {
    if (records.isEmpty) {
      return const NotEnoughDataPlaceholder(padding: EdgeInsets.symmetric(vertical: 8));
    }
    final Map<String, List<StressMoodRecord>> grouped = {};
    for (final record in records) {
      final key =
          "${record.measurementTime.year}-${record.measurementTime.month.toString().padLeft(2, '0')}-${record.measurementTime.day.toString().padLeft(2, '0')}";
      grouped.update(key, (list) {
        list.add(record);
        return list;
      }, ifAbsent: () => [record]);
    }
    final List<String> sortedDays = grouped.keys.toList()..sort();

    if (sortedDays.length < 2) {
      return const NotEnoughDataPlaceholder(padding: EdgeInsets.symmetric(vertical: 8));
    }

    final List<String> displayDays = sortedDays.length > 4 ? sortedDays.sublist(sortedDays.length - 4) : sortedDays;

    final List<FlSpot> spots = [];
    double maxStress = -double.infinity;
    double minStress = double.infinity;
    for (int i = 0; i < displayDays.length; i++) {
      final List<StressMoodRecord> dayRecords = grouped[displayDays[i]]!;
      final double avgStress = dayRecords.map((r) => r.stress).reduce((a, b) => a + b) / dayRecords.length;
      maxStress = max(maxStress, avgStress);
      minStress = min(minStress, avgStress);
      spots.add(FlSpot(i.toDouble(), avgStress));
    }
    final double margin = (maxStress - minStress) * 0.1;
    final double chartMinY = minStress - margin;
    final double chartMaxY = maxStress + margin;
    final double rightInterval = (chartMaxY - chartMinY) / 4;

    return AspectRatio(
      aspectRatio: 1,
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
                minIncluded: false,
                reservedSize: 40,
                interval: rightInterval,
                getTitlesWidget: (value, meta) {
                  final label = value.toStringAsFixed(1);
                  return SideTitleWidget(
                    meta: meta,
                    space: 8,
                    child: Text(
                      label,
                      style: const TextStyle(fontSize: 10),
                    ),
                  );
                },
              ),
            ),
            leftTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
            topTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
          ),
          borderData: FlBorderData(show: false),
          minX: 0,
          maxX: (displayDays.length - 1).toDouble(),
          minY: chartMinY,
          maxY: chartMaxY,
          lineBarsData: [
            LineChartBarData(
              isCurved: true,
              spots: spots,
              barWidth: 3,
              color: context.theme.colorScheme.primary,
              dotData: FlDotData(show: true),
              belowBarData: BarAreaData(
                show: true,
                color: context.theme.colorScheme.primary.customOpacity(0.3),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
