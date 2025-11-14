import 'package:mobx/mobx.dart';
import 'package:get_it/get_it.dart';

import '../../models/goal_model.dart';
import '../../services/goal_service.dart';

part 'completed_goals_screen_store.g.dart';

class CompletedGoalEntry {
  final int originalIndex;
  final Goal goal;

  CompletedGoalEntry(this.originalIndex, this.goal);
}

class CompletedGoalsScreenStore = _CompletedGoalsScreenStore
    with _$CompletedGoalsScreenStore;

abstract class _CompletedGoalsScreenStore with Store {
  _CompletedGoalsScreenStore() {
    refresh();
  }

  final GoalService _goalService = GetIt.I<GoalService>();

  @observable
  ObservableList<CompletedGoalEntry> completedGoals =
  ObservableList<CompletedGoalEntry>();

  @computed
  bool get hasCompleted => completedGoals.isNotEmpty;

  @computed
  int get completedCount => completedGoals.length;

  @action
  void refresh() {
    final all = _goalService.goals;
    final list = all
        .asMap()
        .entries
        .where((e) => e.value.isCompleted)
        .map((e) => CompletedGoalEntry(e.key, e.value))
        .toList();

    completedGoals
      ..clear()
      ..addAll(list);
  }

  @action
  void deleteAllCompleted() {
    _goalService.goals.removeWhere((g) => g.isCompleted);
    refresh();
  }

  @action
  void deleteByOriginalIndex(int originalIndex) {
    if (originalIndex < 0 || originalIndex >= _goalService.goals.length) {
      return;
    }
    _goalService.deleteGoal(originalIndex);
    refresh();
  }
}
