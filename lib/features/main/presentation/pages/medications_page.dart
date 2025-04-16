import 'package:flutter/material.dart';
import 'package:healthque_wear_os/core/shared/shared.dart';

class MedicationsPage extends StatefulWidget {
  const MedicationsPage({super.key});

  @override
  State<MedicationsPage> createState() => _MedicationsPageState();
}

class _MedicationsPageState extends State<MedicationsPage> with BackButtonListenerMixin<MedicationsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'Medications Page',
        ),
      ),
    );
  }
}
