import 'dart:math';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:healthque_wear_os/core/extensions/context.dart';
import 'package:healthque_wear_os/core/shared/shared.dart';
import 'package:healthque_wear_os/features/firebase_sync/firebase_sync.dart';

class TemperatureTrendLineChart extends StatelessWidget {
  final List<TemperatureRecord> records;

  const TemperatureTrendLineChart({super.key, required this.records});

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

    if (sortedDays.length < 2) {
      return const NotEnoughDataPlaceholder(padding: EdgeInsets.symmetric(vertical: 8));
    }

    final List<String> displayDays = sortedDays.length > 4 ? sortedDays.sublist(sortedDays.length - 4) : sortedDays;

    final List<FlSpot> spots = [];
    double maxY = -double.infinity;
    double minYValue = double.infinity;
    for (int i = 0; i < displayDays.length; i++) {
      final List<TemperatureRecord> dayRecords = grouped[displayDays[i]]!;
      final double avgTemp = dayRecords.map((r) => r.temperature).reduce((a, b) => a + b) / dayRecords.length;
      maxY = max(maxY, avgTemp);
      minYValue = min(minYValue, avgTemp);
      spots.add(FlSpot(i.toDouble(), avgTemp));
    }

    final double margin = (maxY - minYValue) * 0.1;
    final double chartMinY = minYValue - margin;
    final double chartMaxY = maxY + margin;
    final double rightInterval = (chartMaxY - chartMinY) / 4;

    return AspectRatio(
      aspectRatio: 1.5,
      child: LineChart(
        LineChartData(
          extraLinesData: ExtraLinesData(
            horizontalLines: [
              HorizontalLine(
                y: 36.6,
                color: context.theme.colorScheme.onPrimaryFixedVariant,
                strokeWidth: 2,
                dashArray: [10, 10],
                strokeCap: StrokeCap.round,
              )
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
                minIncluded: false,
                reservedSize: 40,
                interval: rightInterval,
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
                color: context.theme.colorScheme.primary.withOpacity(0.3),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
