import 'package:flutter/material.dart';
import 'package:healthque_wear_os/core/shared/shared.dart';

class CourseTreatmentsPage extends StatefulWidget {
  const CourseTreatmentsPage({super.key});

  @override
  State<CourseTreatmentsPage> createState() => _CourseTreatmentsPageState();
}

class _CourseTreatmentsPageState extends State<CourseTreatmentsPage>
    with BackButtonListenerMixin<CourseTreatmentsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'Course treatments',
        ),
      ),
    );
  }
}
