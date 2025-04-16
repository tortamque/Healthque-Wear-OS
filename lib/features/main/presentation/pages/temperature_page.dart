import 'package:flutter/material.dart';
import 'package:healthque_wear_os/core/shared/shared.dart';

class TemperaturePage extends StatefulWidget {
  const TemperaturePage({super.key});

  @override
  State<TemperaturePage> createState() => _TemperaturePageState();
}

class _TemperaturePageState extends State<TemperaturePage> with BackButtonListenerMixin<TemperaturePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'Temperature Page',
        ),
      ),
    );
  }
}
