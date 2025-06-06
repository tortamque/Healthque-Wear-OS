import 'dart:math';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:healthque_wear_os/core/extensions/color.dart';
import 'package:healthque_wear_os/core/extensions/context.dart';
import 'package:healthque_wear_os/core/extensions/int.dart';
import 'package:healthque_wear_os/core/shared/shared.dart';
import 'package:healthque_wear_os/features/firebase_sync/firebase_sync.dart';

class MoodTrendLineChart extends StatelessWidget {
  final List<StressMoodRecord> records;

  const MoodTrendLineChart({super.key, required this.records});

  @override
  Widget build(BuildContext context) {
    if (records.isEmpty) {
      return const NotEnoughDataPlaceholder(padding: EdgeInsets.symmetric(vertical: 8));
    }
    final sortedRecords = List<StressMoodRecord>.from(records)
      ..sort((a, b) => a.measurementTime.compareTo(b.measurementTime));

    final displayRecords = sortedRecords.length > 4 ? sortedRecords.sublist(sortedRecords.length - 4) : sortedRecords;

    if (displayRecords.length < 2) {
      return const NotEnoughDataPlaceholder(padding: EdgeInsets.symmetric(vertical: 8));
    }

    final List<FlSpot> spots = [];
    double maxMood = -double.infinity;
    double minMood = double.infinity;

    for (int i = 0; i < displayRecords.length; i++) {
      final record = displayRecords[i];
      final double moodValue = record.mood.toDouble();
      maxMood = max(maxMood, moodValue);
      minMood = min(minMood, moodValue);
      spots.add(FlSpot(i.toDouble(), moodValue));
    }

    final double margin = (maxMood - minMood) * 0.1;
    final double chartMinY = minMood - margin;
    final double chartMaxY = maxMood + margin;
    final double rightInterval = (chartMaxY - chartMinY) / 5;

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
                  final index = value.toInt();
                  if (index >= 0 && index < displayRecords.length) {
                    final time = displayRecords[index].measurementTime;
                    final day = time.day.toString().padLeft(2, '0');
                    final month = time.month.toString().padLeft(2, '0');
                    return SideTitleWidget(
                      meta: meta,
                      space: 4,
                      child: Text(
                        "$day.$month",
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
                minIncluded: false,
                showTitles: true,
                reservedSize: 40,
                interval: rightInterval,
                getTitlesWidget: (value, meta) {
                  final int rounded = value.round();
                  final String emoji = rounded.toMood;
                  return SideTitleWidget(
                    meta: meta,
                    space: 8,
                    child: Text(emoji, style: const TextStyle(fontSize: 10)),
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
          maxX: (displayRecords.length - 1).toDouble(),
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
