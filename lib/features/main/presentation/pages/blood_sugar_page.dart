import 'package:flutter/material.dart';
import 'package:healthque_wear_os/core/shared/shared.dart';

class BloodSugarPage extends StatefulWidget {
  const BloodSugarPage({super.key});

  @override
  State<BloodSugarPage> createState() => _BloodSugarPageState();
}

class _BloodSugarPageState extends State<BloodSugarPage> with BackButtonListenerMixin<BloodSugarPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'Blood Sugar Page',
        ),
      ),
    );
  }
}
