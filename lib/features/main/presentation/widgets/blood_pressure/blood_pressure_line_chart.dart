import 'dart:math';

import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:healthque_wear_os/core/extensions/color.dart';
import 'package:healthque_wear_os/core/extensions/context.dart';
import 'package:healthque_wear_os/core/shared/shared.dart';
import 'package:healthque_wear_os/features/firebase_sync/firebase_sync.dart';

class BloodPressureTrendLineChart extends StatelessWidget {
  final List<BloodPressureRecord> records;

  const BloodPressureTrendLineChart({super.key, required this.records});

  @override
  Widget build(BuildContext context) {
    if (records.isEmpty || records.length < 2) {
      return const NotEnoughDataPlaceholder(padding: EdgeInsets.symmetric(vertical: 8));
    }

    final List<BloodPressureRecord> sortedRecords = List.from(records)
      ..sort((a, b) => a.measurementTime.compareTo(b.measurementTime));

    final List<BloodPressureRecord> displayRecords =
        sortedRecords.length > 4 ? sortedRecords.sublist(sortedRecords.length - 4) : sortedRecords;

    List<FlSpot> systolicSpots = [];
    List<FlSpot> diastolicSpots = [];
    double maxY = 0;
    for (int i = 0; i < displayRecords.length; i++) {
      final systolic = displayRecords[i].systolic.toDouble();
      final diastolic = displayRecords[i].diastolic.toDouble();
      maxY = max(maxY, max(systolic, diastolic));
      systolicSpots.add(FlSpot(i.toDouble(), systolic));
      diastolicSpots.add(FlSpot(i.toDouble(), diastolic));
    }
    final double rightInterval = maxY / 4;

    return AspectRatio(
      aspectRatio: 1.5,
      child: LineChart(
        LineChartData(
          extraLinesData: ExtraLinesData(
            horizontalLines: [
              HorizontalLine(
                y: 120,
                color: context.theme.colorScheme.secondary.customOpacity(0.25),
                strokeWidth: 2,
                dashArray: [6, 4],
              ),
              HorizontalLine(
                y: 80,
                color: context.theme.colorScheme.secondary.customOpacity(0.25),
                strokeWidth: 2,
                dashArray: [6, 4],
              ),
            ],
          ),
          lineTouchData: LineTouchData(enabled: false),
          gridData: FlGridData(show: false),
          titlesData: FlTitlesData(
            bottomTitles: AxisTitles(
              sideTitles: SideTitles(
                showTitles: true,
                reservedSize: 24,
                interval: 1,
                getTitlesWidget: (value, meta) {
                  if (value.toInt() < displayRecords.length) {
                    final dt = displayRecords[value.toInt()].measurementTime;
                    final label = "${dt.day.toString().padLeft(2, '0')}.${dt.month.toString().padLeft(2, '0')}";
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
                  return SideTitleWidget(
                    meta: meta,
                    space: 8,
                    child: Text(
                      value.toInt().toString(),
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
          maxX: (displayRecords.length - 1).toDouble(),
          minY: 0,
          maxY: maxY + (maxY * 0.1),
          lineBarsData: [
            LineChartBarData(
              isCurved: true,
              spots: systolicSpots,
              barWidth: 3,
              color: context.theme.colorScheme.primary,
              dotData: FlDotData(show: true),
              belowBarData: BarAreaData(
                show: true,
                color: context.theme.colorScheme.primary.customOpacity(0.15),
              ),
            ),
            LineChartBarData(
              isCurved: true,
              spots: diastolicSpots,
              barWidth: 3,
              color: context.theme.colorScheme.onPrimaryFixedVariant,
              dotData: FlDotData(show: true),
              belowBarData: BarAreaData(
                show: true,
                color: context.theme.colorScheme.onPrimaryFixedVariant.customOpacity(0.2),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
