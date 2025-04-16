import 'package:flutter/material.dart';
import 'package:healthque_wear_os/core/shared/shared.dart';

class WorkoutsPage extends StatefulWidget {
  const WorkoutsPage({super.key});

  @override
  State<WorkoutsPage> createState() => _WorkoutsPageState();
}

class _WorkoutsPageState extends State<WorkoutsPage> with BackButtonListenerMixin<WorkoutsPage> {
  @override
  Widget build(BuildContext context) {
    return UnifiedBody(
      child: Column(
        children: [
          Text('Workouts page'),
        ],
      ),
    );
  }
}
