import 'dart:math';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:healthque_wear_os/core/extensions/color.dart';
import 'package:healthque_wear_os/core/extensions/context.dart';
import 'package:healthque_wear_os/core/shared/shared.dart';
import 'package:healthque_wear_os/features/firebase_sync/firebase_sync.dart';

class MedicationDosageTrendLineChart extends StatelessWidget {
  final List<Medication> records;

  const MedicationDosageTrendLineChart({super.key, required this.records});

  @override
  Widget build(BuildContext context) {
    if (records.isEmpty) {
      return const NotEnoughDataPlaceholder(padding: EdgeInsets.symmetric(vertical: 8));
    }
    final Map<String, List<Medication>> grouped = {};
    for (final med in records) {
      final key =
          "${med.createdAt.year}-${med.createdAt.month.toString().padLeft(2, '0')}-${med.createdAt.day.toString().padLeft(2, '0')}";
      grouped.update(key, (list) {
        list.add(med);
        return list;
      }, ifAbsent: () => [med]);
    }
    final List<String> sortedDays = grouped.keys.toList()..sort();

    if (sortedDays.length < 2) {
      return const NotEnoughDataPlaceholder(padding: EdgeInsets.symmetric(vertical: 8));
    }
    final List<String> displayDays = sortedDays.length > 4 ? sortedDays.sublist(sortedDays.length - 4) : sortedDays;

    final List<FlSpot> spots = [];
    double globalMax = -double.infinity;
    double globalMin = double.infinity;

    for (int i = 0; i < displayDays.length; i++) {
      final List<Medication> dayMeds = grouped[displayDays[i]]!;
      final double avgDosage = dayMeds.map((med) => double.parse(med.dosage)).reduce((a, b) => a + b) / dayMeds.length;
      globalMax = max(globalMax, avgDosage);
      globalMin = min(globalMin, avgDosage);
      spots.add(FlSpot(i.toDouble(), avgDosage));
    }
    final double margin = (globalMax - globalMin) * 0.1 == 0 ? 1 : (globalMax - globalMin) * 0.1;
    final double chartMinY = globalMin - margin;
    final double chartMaxY = globalMax + margin;
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
                minIncluded: false,
                showTitles: true,
                reservedSize: 40,
                interval: rightInterval,
                getTitlesWidget: (value, meta) {
                  final label = "${value.toStringAsFixed(0)} ${context.strings.dosageUnit}";
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
