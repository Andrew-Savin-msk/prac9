import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'features/goals/app_router.dart';
import 'features/goals/services/goal_service.dart';
import 'features/goals/stores/goal_details/goal_detail_screen_store.dart';
import 'features/goals/stores/goals_list/goals_list_screen_store.dart';
import 'features/goals/stores/add_goal/add_goal_screen_store.dart';
import 'features/goals/stores/profile/profile_screen_store.dart';
import 'features/goals/stores/completed_goals/completed_goals_screen_store.dart';

void main() {
  GetIt.I.registerSingleton<GoalService>(GoalService());
  GetIt.I.registerSingleton<GoalDetailScreenStore>(GoalDetailScreenStore());
  GetIt.I.registerSingleton<CompletedGoalsScreenStore>(CompletedGoalsScreenStore());
  GetIt.I.registerLazySingleton<GoalsListScreenStore>(() => GoalsListScreenStore());
  GetIt.I.registerLazySingleton<AddGoalScreenStore>(() => AddGoalScreenStore());
  GetIt.I.registerSingleton<ProfileScreenStore>(ProfileScreenStore());
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final router = buildRouter();
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'Goals',
      theme: ThemeData(useMaterial3: true, colorSchemeSeed: Colors.indigo),
      routerConfig: router,
    );
  }
}
