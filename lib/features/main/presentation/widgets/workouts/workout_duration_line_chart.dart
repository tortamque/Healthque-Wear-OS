import 'dart:math';

import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:healthque_wear_os/core/extensions/color.dart';
import 'package:healthque_wear_os/core/extensions/context.dart';
import 'package:healthque_wear_os/core/shared/shared.dart';
import 'package:healthque_wear_os/features/firebase_sync/firebase_sync.dart';

class WorkoutDurationLineChart extends StatelessWidget {
  final List<Workout> workouts;

  const WorkoutDurationLineChart({
    super.key,
    required this.workouts,
  });

  @override
  Widget build(BuildContext context) {
    final Map<String, int> dailyDuration = {};
    for (final workout in workouts) {
      final dateKey =
          "${workout.createdAt.year}-${workout.createdAt.month.toString().padLeft(2, '0')}-${workout.createdAt.day.toString().padLeft(2, '0')}";
      dailyDuration.update(
        dateKey,
        (value) => value + workout.durationMinutes,
        ifAbsent: () => workout.durationMinutes,
      );
    }
    final List<String> sortedDays = dailyDuration.keys.toList()..sort();

    if (sortedDays.length < 2) {
      return const NotEnoughDataPlaceholder(
        padding: EdgeInsets.symmetric(vertical: 8),
      );
    }

    final List<String> displayDays = sortedDays.length > 4 ? sortedDays.sublist(sortedDays.length - 4) : sortedDays;

    final List<FlSpot> spots = [];
    double maxY = 0;
    for (int i = 0; i < displayDays.length; i++) {
      final duration = dailyDuration[displayDays[i]]!.toDouble();
      maxY = max(maxY, duration);
      spots.add(FlSpot(i.toDouble(), duration));
    }
    final double rightInterval = maxY / 4;

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
                interval: rightInterval,
                getTitlesWidget: (value, meta) {
                  final int minutesValue = value.toInt();
                  String label;
                  if (minutesValue < 60) {
                    label = '$minutesValue ${context.strings.minutesLowercase}';
                  } else {
                    final int hours = minutesValue ~/ 60;
                    final int remaining = minutesValue % 60;
                    if (remaining == 0) {
                      label = context.strings.amountHours(hours);
                    } else {
                      label = context.strings.amountHoursMinutes(hours, remaining);
                    }
                  }
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
                color: context.theme.colorScheme.primary.customOpacity(0.3),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
