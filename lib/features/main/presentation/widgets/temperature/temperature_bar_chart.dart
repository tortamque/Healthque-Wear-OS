import 'dart:math';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:healthque_wear_os/core/extensions/context.dart';
import 'package:healthque_wear_os/core/shared/shared.dart';
import 'package:healthque_wear_os/features/firebase_sync/firebase_sync.dart';

class TemperatureAveragesBarChart extends StatelessWidget {
  final List<TemperatureRecord> records;

  const TemperatureAveragesBarChart({super.key, required this.records});

  @override
  Widget build(BuildContext context) {
    if (records.isEmpty) {
      return const NotEnoughDataPlaceholder(padding: EdgeInsets.symmetric(vertical: 8));
    }

    final Map<String, List<TemperatureRecord>> grouped = {};
    for (final record in records) {
      final key =
          "${record.measurementTime.year}-${record.measurementTime.month.toString().padLeft(2, '0')}-${record.measurementTime.day.toString().padLeft(2, '0')}";
      grouped.update(key, (list) {
        list.add(record);
        return list;
      }, ifAbsent: () => [record]);
    }
    final List<String> sortedDays = grouped.keys.toList()..sort();

    if (sortedDays.isEmpty) {
      return const NotEnoughDataPlaceholder(padding: EdgeInsets.symmetric(vertical: 8));
    }

    final List<String> displayDays = sortedDays.length > 4 ? sortedDays.sublist(sortedDays.length - 4) : sortedDays;

    final List<BarChartGroupData> groupsData = [];
    double globalMax = 0;
    for (int i = 0; i < displayDays.length; i++) {
      final dayRecords = grouped[displayDays[i]]!;
      final double avgTemp = dayRecords.map((r) => r.temperature).reduce((a, b) => a + b) / dayRecords.length;
      globalMax = max(globalMax, avgTemp);
      groupsData.add(
        BarChartGroupData(
          x: i,
          barRods: [
            BarChartRodData(
              toY: avgTemp,
              color: context.theme.colorScheme.primary,
              width: 12,
              borderRadius: BorderRadius.circular(4),
            ),
          ],
        ),
      );
    }
    globalMax = globalMax + (globalMax * 0.1);
    final double interval = globalMax / 4;

    return AspectRatio(
      aspectRatio: 1.6,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: BarChart(
          BarChartData(
            maxY: globalMax,
            alignment: BarChartAlignment.spaceAround,
            barGroups: groupsData,
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
                        child: Text(
                          label,
                          style: const TextStyle(fontSize: 10),
                        ),
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
                    final label = "${value.toStringAsFixed(1)}${context.strings.degreeCelsius}";
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
            barTouchData: BarTouchData(enabled: false),
          ),
          duration: const Duration(milliseconds: 150),
          curve: Curves.linear,
        ),
      ),
    );
  }
}
