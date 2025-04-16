import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CustomBackButton extends StatelessWidget {
  const CustomBackButton({super.key});

  @override
  Widget build(BuildContext context) {
    return context.canPop()
        ? IconButton.filledTonal(
            onPressed: context.pop,
            icon: Icon(Icons.arrow_back_rounded),
            style: IconButton.styleFrom(
              shape: const CircleBorder(),
              padding: const EdgeInsets.all(16),
            ),
          )
        : SizedBox.shrink();
  }
}
