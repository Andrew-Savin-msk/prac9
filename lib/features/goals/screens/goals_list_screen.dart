import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';

import '../app_router.dart';
import '../widgets/goals_stats_card.dart';
import '../widgets/goals_search_bar.dart';
import '../widgets/goals_list_view.dart';
import '../stores/goals_list/goals_list_screen_store.dart';


class GoalsListScreen extends StatelessWidget {
  GoalsListScreen({super.key})
      : store = GetIt.I<GoalsListScreenStore>(),
        _searchController = TextEditingController() {
    store.setSearchQuery('');
    store.refresh();
  }

  final GoalsListScreenStore store;
  final TextEditingController _searchController;

  void _addGoal(BuildContext context) {
    context.push(Routes.addGoal);
  }

  void _openCompleted(BuildContext context) {
    context.push(Routes.completed);
  }

  void _openProfile(BuildContext context) {
    context.push(Routes.profile);
  }

  void _deleteGoal(BuildContext context, int index) {
    showDialog(
      context: context,
      builder: (ctx) => AlertDialog(
        title: const Text('Удалить цель?'),
        content: const Text('Вы уверены, что хотите удалить эту цель?'),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(ctx),
            child: const Text('Отмена'),
          ),
          FilledButton(
            onPressed: () {
              store.deleteByFilteredIndex(index);
              Navigator.pop(ctx);
            },
            child: const Text('Удалить'),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Менеджер целей'),
        actions: [
          IconButton(
            tooltip: 'Выполненные',
            icon: const Icon(Icons.done_all),
            onPressed: () => _openCompleted(context),
          ),
          IconButton(
            tooltip: 'Профиль',
            icon: const Icon(Icons.person),
            onPressed: () => _openProfile(context),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Observer(
          builder: (_) {
            final goals = store.goals;

            return Column(
              children: [
                const GoalsStatsCard(),
                GoalsSearchBar(
                  controller: _searchController,
                  onChanged: () {
                    store.setSearchQuery(_searchController.text);
                  },
                ),
                const SizedBox(height: 10),
                Expanded(
                  child: goals.isEmpty
                      ? const Center(child: Text('Целей пока нет'))
                      : GoalsListView(
                    goals: goals,
                    onDelete: (index) => _deleteGoal(context, index),
                    onTap: (goal) async {
                      await context.push(
                        Routes.goalDetail,
                        extra: goal,
                      );
                      store.refresh();
                    },
                  ),
                ),
              ],
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () => _addGoal(context),
        label: const Text('Новая цель'),
        icon: const Icon(Icons.add),
      ),
    );
  }
}