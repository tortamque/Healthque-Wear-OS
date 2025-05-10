import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:healthque_wear_os/config/routes/routes.dart';
import 'package:healthque_wear_os/core/shared/shared.dart';
import 'package:healthque_wear_os/features/authorization/authorization.dart';
import 'package:healthque_wear_os/features/firebase_sync/firebase_sync.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthCubit, AuthState>(
      listener: (context, state) {
        if (state is AuthStateAuthenticated) {
          context.read<FirebaseSyncCubit>().init();
          context.go(Routes.dashboardPage);
        } else if (state is AuthStateUnauthenticated || state is AuthStateFailure) {
          context.go(Routes.signInPage);
        }
      },
      child: const Scaffold(
        body: Center(
          child: UnifiedCircularProgressIndicator(),
        ),
      ),
    );
  }
}
