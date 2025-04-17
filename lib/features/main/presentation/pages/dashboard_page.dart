import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:healthque_wear_os/config/routes/routes.dart';
import 'package:healthque_wear_os/core/extensions/context.dart';
import 'package:healthque_wear_os/core/shared/shared.dart';
import 'package:healthque_wear_os/features/firebase_sync/firebase_sync.dart';
import 'package:wear_os_plugin/wear_os_clipper.dart';
import 'package:wear_os_plugin/wear_os_scroll_view.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key});

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  final controller = ScrollController();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FirebaseSyncCubit, FirebaseSyncState>(
      builder: (context, state) {
        if (state.isLoading) {
          return const Center(child: UnifiedCircularProgressIndicator());
        }
        if (state.errorMessage != null) {
          return Center(
            child: Text(state.errorMessage!),
          );
        }
        final syncData = state.syncData;
        if (syncData == null) {
          return Center(
            child: Text(context.strings.noDataInCloud),
          );
        }

        final workouts = syncData.workouts.workouts;
        final bloodPressureRecords = syncData.bloodPressureRecords.records;
        final temperatureRecords = syncData.temperatureRecords.records;
        final bloodSugarRecords = syncData.bloodSugarRecords.records;
        final waterRecords = syncData.waterRecords.records;
        final stressMoodRecords = syncData.stressMoodRecords.records;
        final courseTreatments = syncData.courseTreatments.courses;

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
                      if (syncData.workouts.workouts.isNotEmpty)
                        ActionCard(
                          title: context.strings.workouts,
                          subtitle: context.strings.showWorkouts,
                          icon: Icons.fitness_center_rounded,
                          onTap: () => context.push(Routes.workoutsPage, extra: workouts),
                        ),
                      if (syncData.bloodPressureRecords.records.isNotEmpty)
                        ActionCard(
                          title: context.strings.bloodPressure,
                          subtitle: context.strings.showBloodPressure,
                          icon: Icons.monitor_heart_rounded,
                          onTap: () => context.push(Routes.bloodPressurePage, extra: bloodPressureRecords),
                        ),
                      if (syncData.temperatureRecords.records.isNotEmpty)
                        ActionCard(
                          title: context.strings.temperature,
                          subtitle: context.strings.showTemperature,
                          icon: Icons.thermostat,
                          onTap: () => context.push(Routes.temperaturePage, extra: temperatureRecords),
                        ),
                      if (syncData.bloodSugarRecords.records.isNotEmpty)
                        ActionCard(
                          title: context.strings.bloodSugar,
                          subtitle: context.strings.showBloodSugar,
                          icon: Icons.show_chart_rounded,
                          onTap: () => context.push(Routes.bloodSugarPage, extra: bloodSugarRecords),
                        ),
                      if (syncData.waterRecords.records.isNotEmpty)
                        ActionCard(
                          title: context.strings.water,
                          subtitle: context.strings.showWater,
                          icon: Icons.water_drop_rounded,
                          onTap: () => context.push(Routes.waterPage, extra: waterRecords),
                        ),
                      if (syncData.stressMoodRecords.records.isNotEmpty)
                        ActionCard(
                          title: context.strings.stressMood,
                          subtitle: context.strings.showStressMood,
                          icon: Icons.sentiment_satisfied_alt_rounded,
                          onTap: () => context.push(Routes.stressMoodPage, extra: stressMoodRecords),
                        ),
                      if (syncData.courseTreatments.courses.isNotEmpty)
                        ActionCard(
                          title: context.strings.courseTreatments,
                          subtitle: context.strings.showCourseTreatments,
                          icon: Icons.event_available_rounded,
                          onTap: () => context.push(Routes.courseTreatmentsPage, extra: courseTreatments),
                        ),
                      if (syncData.medications.medications.isNotEmpty)
                        ActionCard(
                          title: context.strings.medications,
                          subtitle: context.strings.showMedications,
                          icon: Icons.healing_rounded,
                          onTap: () => context.push(Routes.medicationsPage),
                        ),
                      const Gap(32),
                    ],
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }
}
