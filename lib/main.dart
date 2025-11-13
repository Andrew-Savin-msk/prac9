import 'package:flutter/material.dart';
import 'features/goals/services/goal_service.dart';
import 'package:get_it/get_it.dart';
import 'features/goals/app_router.dart';

void main() {
  GetIt.I.registerSingleton<GoalService>(GoalService());
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
