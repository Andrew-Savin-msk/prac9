import 'package:mobx/mobx.dart';
import 'package:get_it/get_it.dart';

import '../../models/goal_model.dart';
import '../../services/goal_service.dart';

part 'add_goal_screen_store.g.dart';

class AddGoalScreenStore = _AddGoalScreenStore with _$AddGoalScreenStore;

abstract class _AddGoalScreenStore with Store {
  final GoalService _goalService = GetIt.I<GoalService>();

  @observable
  String title = '';

  @observable
  DateTime? deadline;

  @computed
  bool get canSave => title.trim().length >= 3 && deadline != null;

  @action
  void setTitle(String value) {
    title = value;
  }

  @action
  void setDeadline(DateTime value) {
    deadline = value;
  }

  @action
  void clear() {
    title = '';
    deadline = null;
  }

  @action
  void createGoal() {
    if (!canSave) return;

    final goal = Goal(
      title: title.trim(),
      deadline: deadline!,
    );

    _goalService.addGoal(goal);

    clear();
  }
}
