import 'dart:math';

import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:healthque_wear_os/core/extensions/color.dart';
import 'package:healthque_wear_os/core/extensions/context.dart';
import 'package:healthque_wear_os/core/shared/shared.dart';
import 'package:healthque_wear_os/features/firebase_sync/firebase_sync.dart';

class CourseTreatmentTrendLineChart extends StatelessWidget {
  final List<CourseTreatment> courses;

  const CourseTreatmentTrendLineChart({super.key, required this.courses});

  @override
  Widget build(BuildContext context) {
    if (courses.isEmpty) {
      return const NotEnoughDataPlaceholder(
        padding: EdgeInsets.symmetric(vertical: 8),
      );
    }

    final List<CourseTreatment> sortedCourses = List.from(courses)
      ..sort((a, b) => a.courseStart.compareTo(b.courseStart));

    if (sortedCourses.length < 2) {
      return const NotEnoughDataPlaceholder(
        padding: EdgeInsets.symmetric(vertical: 8),
      );
    }

    final List<CourseTreatment> displayCourses =
        sortedCourses.length > 4 ? sortedCourses.sublist(sortedCourses.length - 4) : sortedCourses;

    final List<FlSpot> spots = [];
    double maxDuration = -double.infinity;
    double minDuration = double.infinity;

    for (int i = 0; i < displayCourses.length; i++) {
      final course = displayCourses[i];
      final double durationDays = course.courseEnd.difference(course.courseStart).inDays.toDouble();
      maxDuration = max(maxDuration, durationDays);
      minDuration = min(minDuration, durationDays);
      spots.add(FlSpot(i.toDouble(), durationDays));
    }

    final double margin = (maxDuration - minDuration) * 0.1 == 0 ? 1 : (maxDuration - minDuration) * 0.1;
    final double chartMinY = minDuration - margin;
    final double chartMaxY = maxDuration + margin;
    final double rightInterval = (chartMaxY - chartMinY) / 4 < 1 ? 1 : (chartMaxY - chartMinY) / 4;

    return AspectRatio(
      aspectRatio: 1,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
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
                    if (value.toInt() < displayCourses.length) {
                      final dt = displayCourses[value.toInt()].courseStart;
                      final label = "${dt.day.toString().padLeft(2, '0')}.${dt.month.toString().padLeft(2, '0')}";
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
                  minIncluded: false,
                  maxIncluded: false,
                  showTitles: true,
                  reservedSize: 40,
                  interval: rightInterval,
                  getTitlesWidget: (value, meta) {
                    final label = "${value.toStringAsFixed(0)} ${context.strings.days}";
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
            maxX: (displayCourses.length - 1).toDouble(),
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
      ),
    );
  }
}
