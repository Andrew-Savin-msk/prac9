// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'goal_detail_screen_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$GoalDetailScreenStore on _GoalDetailScreenStore, Store {
  Computed<double>? _$progressComputed;

  @override
  double get progress => (_$progressComputed ??= Computed<double>(
    () => super.progress,
    name: '_GoalDetailScreenStore.progress',
  )).value;

  late final _$currentGoalAtom = Atom(
    name: '_GoalDetailScreenStore.currentGoal',
    context: context,
  );

  @override
  Goal? get currentGoal {
    _$currentGoalAtom.reportRead();
    return super.currentGoal;
  }

  @override
  set currentGoal(Goal? value) {
    _$currentGoalAtom.reportWrite(value, super.currentGoal, () {
      super.currentGoal = value;
    });
  }

  late final _$subtasksAtom = Atom(
    name: '_GoalDetailScreenStore.subtasks',
    context: context,
  );

  @override
  ObservableList<Subtask> get subtasks {
    _$subtasksAtom.reportRead();
    return super.subtasks;
  }

  @override
  set subtasks(ObservableList<Subtask> value) {
    _$subtasksAtom.reportWrite(value, super.subtasks, () {
      super.subtasks = value;
    });
  }

  late final _$_GoalDetailScreenStoreActionController = ActionController(
    name: '_GoalDetailScreenStore',
    context: context,
  );

  @override
  void attachGoal(Goal goal) {
    final _$actionInfo = _$_GoalDetailScreenStoreActionController.startAction(
      name: '_GoalDetailScreenStore.attachGoal',
    );
    try {
      return super.attachGoal(goal);
    } finally {
      _$_GoalDetailScreenStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void addSubtask(String title) {
    final _$actionInfo = _$_GoalDetailScreenStoreActionController.startAction(
      name: '_GoalDetailScreenStore.addSubtask',
    );
    try {
      return super.addSubtask(title);
    } finally {
      _$_GoalDetailScreenStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void toggleSubtask(int index, bool done) {
    final _$actionInfo = _$_GoalDetailScreenStoreActionController.startAction(
      name: '_GoalDetailScreenStore.toggleSubtask',
    );
    try {
      return super.toggleSubtask(index, done);
    } finally {
      _$_GoalDetailScreenStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
currentGoal: ${currentGoal},
subtasks: ${subtasks},
progress: ${progress}
    ''';
  }
}
