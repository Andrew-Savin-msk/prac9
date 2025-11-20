import 'package:mobx/mobx.dart';

import '../../models/goal_model.dart';

part 'goal_detail_screen_store.g.dart';

class GoalDetailScreenStore = _GoalDetailScreenStore
    with _$GoalDetailScreenStore;

abstract class _GoalDetailScreenStore with Store {
  _GoalDetailScreenStore();

  @observable
  Goal? currentGoal;

  @observable
  ObservableList<Subtask> subtasks = ObservableList<Subtask>();


  @computed
  double get progress {
    if (subtasks.isEmpty) return 0;
    final done = subtasks.where((s) => s.done).length;
    return (done / subtasks.length) * 100;
  }

  @action
  void attachGoal(Goal goal) {
    currentGoal = goal;
    subtasks = ObservableList<Subtask>.of(goal.subtasks);
  }

  @action
  void addSubtask(String title) {
    final text = title.trim();
    if (text.isEmpty) return;

    subtasks.add(Subtask(title: text));
    _syncBackToGoal();
  }

  @action
  void toggleSubtask(int index, bool done) {
    if (index < 0 || index >= subtasks.length) return;

    final old = subtasks[index];
    final updated = Subtask(title: old.title, done: done);

    subtasks[index] = updated;

    _syncBackToGoal();
  }

  void _syncBackToGoal() {
    final goal = currentGoal;
    if (goal == null) return;

    goal.subtasks = subtasks.toList();
  }
}
