import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';

import '../models/goal_model.dart';
import '../widgets/progress_text.dart';
import '../stores/goal_details/goal_detail_screen_store.dart';

class GoalDetailScreen extends StatelessWidget {
  GoalDetailScreen({super.key, required this.goal})
      : _subtaskController = TextEditingController(),
        store = GetIt.I<GoalDetailScreenStore>() {
    store.attachGoal(goal);
  }

  final Goal goal;
  final GoalDetailScreenStore store;
  final TextEditingController _subtaskController;

  void _addSubtask() {
    final text = _subtaskController.text;
    store.addSubtask(text);
    _subtaskController.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(goal.title),
        leading: BackButton(onPressed: () => context.pop()),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Observer(
          builder: (_) {
            final subtasks = store.subtasks;

            return Column(
              children: [
                ProgressText(progress: store.progress),
                const Divider(),
                TextField(
                  controller: _subtaskController,
                  decoration: const InputDecoration(
                    labelText: 'Добавить подзадачу',
                  ),
                ),
                const SizedBox(height: 10),
                ElevatedButton(
                  onPressed: _addSubtask,
                  child: const Text('Добавить'),
                ),
                const SizedBox(height: 10),
                Expanded(
                  child: subtasks.isEmpty
                      ? const Center(child: Text('Подзадач пока нет'))
                      : ListView.builder(
                    itemCount: subtasks.length,
                    itemBuilder: (context, index) {
                      final sub = subtasks[index];
                      return CheckboxListTile(
                        title: Text(sub.title),
                        value: sub.done,
                        onChanged: (val) {
                          if (val == null) return;
                          store.toggleSubtask(index, val);
                        },
                      );
                    },
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
