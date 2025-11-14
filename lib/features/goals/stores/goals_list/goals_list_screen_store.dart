import 'package:mobx/mobx.dart';
import 'package:get_it/get_it.dart';

import '../../models/goal_model.dart';
import '../../services/goal_service.dart';

part 'goals_list_screen_store.g.dart';

class GoalsListScreenStore = _GoalsListScreenStore
    with _$GoalsListScreenStore;

abstract class _GoalsListScreenStore with Store {
  _GoalsListScreenStore() {
    refresh();
  }

  final GoalService _goalService = GetIt.I<GoalService>();

  @observable
  String searchQuery = '';

  @observable
  ObservableList<Goal> goals = ObservableList<Goal>();

  @computed
  bool get hasGoals => goals.isNotEmpty;

  @action
  void setSearchQuery(String value) {
    searchQuery = value;
    _applyFilter();
  }

  @action
  void refresh() {
    _applyFilter();
  }

  void _applyFilter() {
    final all = _goalService.goals;
    final q = searchQuery.toLowerCase();

    final filtered = q.isEmpty
        ? all
        : all.where((g) => g.title.toLowerCase().contains(q)).toList();

    goals
      ..clear()
      ..addAll(filtered);
  }

  @action
  void deleteByFilteredIndex(int index) {
    if (index < 0 || index >= goals.length) return;

    final goal = goals[index];
    final all = _goalService.goals;
    final originalIndex = all.indexOf(goal);

    if (originalIndex != -1) {
      _goalService.deleteGoal(originalIndex);
    }

    _applyFilter();
  }
}
