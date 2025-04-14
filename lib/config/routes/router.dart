import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:healthque_wear_os/config/routes/routes.dart';
import 'package:healthque_wear_os/features/authorization/authorization.dart';
import 'package:healthque_wear_os/features/dashboard/dashboard.dart';
import 'package:healthque_wear_os/features/splash/splash.dart';

final _rootNavigatorKey = GlobalKey<NavigatorState>(debugLabel: 'root');

final GoRouter router = GoRouter(
  navigatorKey: _rootNavigatorKey,
  initialLocation: Routes.splashScreen,
  routes: [
    GoRoute(
      path: Routes.signInPage,
      builder: (context, state) => SignInPage(),
    ),
    GoRoute(
      path: Routes.dashboardPage,
      builder: (context, state) => DashboardPage(),
    ),
    GoRoute(
      path: Routes.splashScreen,
      builder: (context, state) => SplashScreen(),
    ),
  ],
);
