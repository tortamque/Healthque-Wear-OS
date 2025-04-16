import 'package:flutter/material.dart';
import 'package:healthque_wear_os/core/shared/shared.dart';

class WaterPage extends StatefulWidget {
  const WaterPage({super.key});

  @override
  State<WaterPage> createState() => _WaterPageState();
}

class _WaterPageState extends State<WaterPage> with BackButtonListenerMixin<WaterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'Water Page',
        ),
      ),
    );
  }
}
