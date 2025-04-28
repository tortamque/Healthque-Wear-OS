import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:healthque_wear_os/core/extensions/context.dart';
import 'package:healthque_wear_os/core/shared/shared.dart';
import 'package:healthque_wear_os/features/firebase_sync/firebase_sync.dart';
import 'package:healthque_wear_os/features/main/main.dart';

class CourseTreatmentsPage extends StatefulWidget {
  const CourseTreatmentsPage({super.key, required this.courses});

  final List<CourseTreatment> courses;

  @override
  State<CourseTreatmentsPage> createState() => _CourseTreatmentsPageState();
}

class _CourseTreatmentsPageState extends State<CourseTreatmentsPage>
    with BackButtonListenerMixin<CourseTreatmentsPage> {
  @override
  Widget build(BuildContext context) {
    return UnifiedBody(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            context.strings.courseDurationTrend,
            style: context.textTheme.titleMedium,
          ),
          const Gap(8),
          CourseTreatmentTrendLineChart(courses: widget.courses),
          const Gap(16),
          Text(
            context.strings.medicationDistribution,
            style: context.textTheme.titleMedium,
          ),
          const Gap(8),
          CourseTreatmentMedicationBarChart(courses: widget.courses),
          const Gap(16),
          Text(
            context.strings.courseHistory,
            style: context.textTheme.titleMedium,
          ),
          const Gap(8),
          CourseTreatmentListView(courses: widget.courses),
        ],
      ),
    );
  }
}
