import 'package:flutter/material.dart';
import 'package:healthque_wear_os/core/shared/shared.dart';
import 'package:healthque_wear_os/features/firebase_sync/firebase_sync.dart';
import 'package:healthque_wear_os/features/main/main.dart';

class MedicationListView extends StatelessWidget {
  final List<Medication> records;

  const MedicationListView({super.key, required this.records});

  @override
  Widget build(BuildContext context) {
    if (records.isEmpty) {
      return const NotEnoughDataPlaceholder(padding: EdgeInsets.all(16));
    }
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      padding: const EdgeInsets.all(4),
      itemCount: records.length,
      itemBuilder: (context, index) {
        return MedicationCard(medication: records[index]);
      },
    );
  }
}
