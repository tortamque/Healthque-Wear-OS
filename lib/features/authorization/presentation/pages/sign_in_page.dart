import 'package:healthque_wear_os/features/firebase_sync/firebase_sync.dart';
import 'package:wear_os_plugin/wear_os_scroll_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:healthque_wear_os/config/routes/routes.dart';
import 'package:healthque_wear_os/core/extensions/context.dart';
import 'package:healthque_wear_os/features/authorization/authorization.dart';
import 'package:wear_os_plugin/wear_os_clipper.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  final scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return WearOsClipper(
      child: BlocProvider(
        create: (_) => AuthCubit(),
        child: Scaffold(
          body: Padding(
            padding: const EdgeInsets.all(8),
            child: BlocConsumer<AuthCubit, AuthState>(
              listener: (context, state) {
                if (state is AuthStateAuthenticated) {
                  context.go(Routes.dashboardPage);
                  context.read<FirebaseSyncCubit>().loadUserData();
                }
              },
              builder: (context, state) {
                if (state is AuthStateLoading) {
                  return const Center(child: CircularProgressIndicator());
                }
                if (state is AuthStateFailure) {
                  return Center(child: Text('Error: ${state.message}'));
                }
                if (state is AuthStateUnauthenticated || state is AuthStateInitial) {
                  return WearOsScrollView(
                    controller: scrollController,
                    autoHide: true,
                    child: Center(
                      child: ListView(
                        shrinkWrap: true,
                        controller: scrollController,
                        children: [
                          Text(
                            context.strings.signInWithGoogleAccount,
                            textAlign: TextAlign.center,
                          ),
                          Gap(4),
                          ElevatedButton(
                            onPressed: context.read<AuthCubit>().signInWithGoogle,
                            child: Text(context.strings.signInWithGoogle),
                          ),
                        ],
                      ),
                    ),
                  );
                }

                return SizedBox();
              },
            ),
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    scrollController.dispose();
    super.dispose();
  }
}
