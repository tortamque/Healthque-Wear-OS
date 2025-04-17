import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:healthque_wear_os/config/routes/routes.dart';
import 'package:healthque_wear_os/features/authorization/authorization.dart';
import 'package:healthque_wear_os/features/firebase_sync/firebase_sync.dart';
import 'package:healthque_wear_os/features/main/main.dart';
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
    GoRoute(
      path: Routes.workoutsPage,
      builder: (context, state) {
        final extra = state.extra as List<Workout>;

        return WorkoutsPage(workouts: extra);
      },
    ),
    GoRoute(
      path: Routes.bloodPressurePage,
      builder: (context, state) {
        final extra = state.extra as List<BloodPressureRecord>;

        return BloodPressurePage(records: extra);
      },
    ),
    GoRoute(
      path: Routes.bloodSugarPage,
      builder: (context, state) {
        final extra = state.extra as List<BloodSugarRecord>;

        return BloodSugarPage(records: extra);
      },
    ),
    GoRoute(
      path: Routes.temperaturePage,
      builder: (context, state) {
        final extra = state.extra as List<TemperatureRecord>;

        return TemperaturePage(records: extra);
      },
    ),
    GoRoute(
      path: Routes.waterPage,
      builder: (context, state) {
        final extra = state.extra as List<WaterRecord>;

        return WaterPage(records: extra);
      },
    ),
    GoRoute(
      path: Routes.stressMoodPage,
      builder: (context, state) {
        final extra = state.extra as List<StressMoodRecord>;

        return StressMoodPage(records: extra);
      },
    ),
    GoRoute(
      path: Routes.medicationsPage,
      builder: (context, state) => MedicationsPage(),
    ),
    GoRoute(
      path: Routes.courseTreatmentsPage,
      builder: (context, state) {
        final extra = state.extra as List<CourseTreatment>;

        return CourseTreatmentsPage(courses: extra);
      },
    ),
  ],
);
