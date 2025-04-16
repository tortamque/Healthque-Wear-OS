import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:healthque_wear_os/core/shared/shared.dart';
import 'package:wear_os_plugin/wear_os_clipper.dart';
import 'package:wear_os_plugin/wear_os_scroll_view.dart';

class UnifiedBody extends StatefulWidget {
  const UnifiedBody({
    super.key,
    required this.child,
    this.showBackButton = true,
  });

  final Widget child;
  final bool showBackButton;

  @override
  State<UnifiedBody> createState() => _UnifiedBodyState();
}

class _UnifiedBodyState extends State<UnifiedBody> {
  final controller = ScrollController();

  @override
  Widget build(BuildContext context) {
    return WearOsClipper(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: WearOsScrollView(
            controller: controller,
            autoHide: true,
            child: Center(
              child: ListView(
                shrinkWrap: true,
                controller: controller,
                clipBehavior: Clip.none,
                children: [
                  const Gap(32),
                  widget.child,
                  if (widget.showBackButton) ...[
                    const Gap(16),
                    CustomBackButton(),
                  ],
                  const Gap(32),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }
}
