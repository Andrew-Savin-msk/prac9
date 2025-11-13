import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import '../services/goal_service.dart';
import 'progress_text.dart';

class GoalsStatsCard extends StatelessWidget {
  const GoalsStatsCard({super.key});

  double _averageProgress(BuildContext context) {
    final goals = GetIt.I<GoalService>().goals;
    if (goals.isEmpty) return 0;
    return goals.map((g) => g.progress).reduce((a, b) => a + b) / goals.length;
  }

  int _completedCount(BuildContext context) => GetIt.I<GoalService>().goals.where((g) => g.isCompleted).length;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      margin: const EdgeInsets.only(bottom: 16),
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(children: [
              Text(
                '${GetIt.I<GoalService>().goals.length}',
                style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              const Text('Всего целей'),
            ]),
            Column(children: [
              Text(
                '${_completedCount(context)}',
                style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              const Text('Выполнено'),
            ]),
            Column(children: [
              ProgressText(progress: _averageProgress(context)),
            ]),
          ],
        ),
      ),
    );
  }
}
