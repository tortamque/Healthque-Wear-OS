import 'dart:math';

import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:healthque_wear_os/core/extensions/context.dart';
import 'package:healthque_wear_os/core/shared/shared.dart';
import 'package:healthque_wear_os/features/firebase_sync/firebase_sync.dart';

class WorkoutTypeBarChart extends StatelessWidget {
  final List<Workout> workouts;

  const WorkoutTypeBarChart({
    super.key,
    required this.workouts,
  });

  @override
  Widget build(BuildContext context) {
    if (workouts.isEmpty) {
      return const NotEnoughDataPlaceholder(
        padding: EdgeInsets.symmetric(vertical: 8),
      );
    }

    final Map<String, int> typeCounts = {};
    for (final workout in workouts) {
      final typeName = workout.workoutType.displayName(context);
      typeCounts.update(typeName, (count) => count + 1, ifAbsent: () => 1);
    }
    if (typeCounts.isEmpty) {
      return const NotEnoughDataPlaceholder(
        padding: EdgeInsets.symmetric(vertical: 8),
      );
    }

    final List<String> allTypes = typeCounts.keys.toList();
    final List<String> displayTypes =
        allTypes.length > 3 ? (List<String>.from(allTypes)..shuffle()).sublist(0, 3) : allTypes;

    final List<BarChartGroupData> groups = List.generate(displayTypes.length, (i) {
      final count = typeCounts[displayTypes[i]]!.toDouble();
      return BarChartGroupData(
        x: i,
        barRods: [
          BarChartRodData(
            toY: count,
            color: context.theme.colorScheme.primary,
            width: 12,
            borderRadius: BorderRadius.circular(8),
          ),
        ],
      );
    });

    double maxY = groups.map((g) => g.barRods.first.toY).reduce(max);
    maxY = maxY + (maxY * 0.1);
    final double dynamicInterval = maxY > 0 ? (maxY / 5 < 1 ? 1 : maxY / 5) : 1;

    return AspectRatio(
      aspectRatio: 1.6,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
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
                    if (value.toInt() < displayTypes.length) {
                      final label = displayTypes[value.toInt()];
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
                  interval: dynamicInterval,
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
            barTouchData: BarTouchData(enabled: false),
          ),
          duration: const Duration(milliseconds: 150),
          curve: Curves.linear,
        ),
      ),
    );
  }
}
