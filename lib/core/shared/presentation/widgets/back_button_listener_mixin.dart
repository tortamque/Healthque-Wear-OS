import 'dart:async';
import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:wear_os_plugin/wear_os_plugin.dart';

mixin BackButtonListenerMixin<T extends StatefulWidget> on State<T> {
  StreamSubscription? _keySubscription;

  @override
  void initState() {
    super.initState();
    _keySubscription = WearOsPlugin.instance.keyEvents?.listen((event) {
      log('Key event: key code = ${event.keyCode} ${event.down ? 'down' : 'up'}');
      if (event.keyCode == KeyData.KEYCODE_BACK && event.down == false) {
        if (!mounted) return;

        if (context.canPop()) {
          context.pop();
        }
      }
    });
  }

  @override
  void dispose() {
    _keySubscription?.cancel();
    super.dispose();
  }
}
