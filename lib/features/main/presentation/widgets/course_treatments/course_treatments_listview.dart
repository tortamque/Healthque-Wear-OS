import 'package:flutter/material.dart';
import 'package:healthque_wear_os/core/shared/shared.dart';
import 'package:healthque_wear_os/features/firebase_sync/firebase_sync.dart';
import 'package:healthque_wear_os/features/main/main.dart';

class CourseTreatmentListView extends StatelessWidget {
  final List<CourseTreatment> courses;

  const CourseTreatmentListView({super.key, required this.courses});

  @override
  Widget build(BuildContext context) {
    if (courses.isEmpty) {
      return const NotEnoughDataPlaceholder(padding: EdgeInsets.all(16));
    }
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      padding: const EdgeInsets.all(4),
      itemCount: courses.length,
      itemBuilder: (context, index) {
        return CourseTreatmentCard(courseTreatment: courses[index]);
      },
    );
  }
}
