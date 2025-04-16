import 'package:flutter/material.dart';
import 'package:healthque_wear_os/core/shared/shared.dart';

class BloodPressurePage extends StatefulWidget {
  const BloodPressurePage({super.key});

  @override
  State<BloodPressurePage> createState() => _BloodPressurePageState();
}

class _BloodPressurePageState extends State<BloodPressurePage> with BackButtonListenerMixin<BloodPressurePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'Blood Pressure Page',
        ),
      ),
    );
  }
}

// TODO: Add circle icon button on all screens to go back (context.pop)
