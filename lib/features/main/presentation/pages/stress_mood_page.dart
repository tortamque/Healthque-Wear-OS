import 'package:flutter/material.dart';
import 'package:healthque_wear_os/core/shared/shared.dart';

class StressMoodPage extends StatefulWidget {
  const StressMoodPage({super.key});

  @override
  State<StressMoodPage> createState() => _StressMoodPageState();
}

class _StressMoodPageState extends State<StressMoodPage> with BackButtonListenerMixin<StressMoodPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'Stress Mood Page',
        ),
      ),
    );
  }
}
