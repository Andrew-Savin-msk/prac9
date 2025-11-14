// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'completed_goals_screen_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$CompletedGoalsScreenStore on _CompletedGoalsScreenStore, Store {
  Computed<bool>? _$hasCompletedComputed;

  @override
  bool get hasCompleted => (_$hasCompletedComputed ??= Computed<bool>(
    () => super.hasCompleted,
    name: '_CompletedGoalsScreenStore.hasCompleted',
  )).value;
  Computed<int>? _$completedCountComputed;

  @override
  int get completedCount => (_$completedCountComputed ??= Computed<int>(
    () => super.completedCount,
    name: '_CompletedGoalsScreenStore.completedCount',
  )).value;

  late final _$completedGoalsAtom = Atom(
    name: '_CompletedGoalsScreenStore.completedGoals',
    context: context,
  );

  @override
  ObservableList<CompletedGoalEntry> get completedGoals {
    _$completedGoalsAtom.reportRead();
    return super.completedGoals;
  }

  @override
  set completedGoals(ObservableList<CompletedGoalEntry> value) {
    _$completedGoalsAtom.reportWrite(value, super.completedGoals, () {
      super.completedGoals = value;
    });
  }

  late final _$_CompletedGoalsScreenStoreActionController = ActionController(
    name: '_CompletedGoalsScreenStore',
    context: context,
  );

  @override
  void refresh() {
    final _$actionInfo = _$_CompletedGoalsScreenStoreActionController
        .startAction(name: '_CompletedGoalsScreenStore.refresh');
    try {
      return super.refresh();
    } finally {
      _$_CompletedGoalsScreenStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void deleteAllCompleted() {
    final _$actionInfo = _$_CompletedGoalsScreenStoreActionController
        .startAction(name: '_CompletedGoalsScreenStore.deleteAllCompleted');
    try {
      return super.deleteAllCompleted();
    } finally {
      _$_CompletedGoalsScreenStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void deleteByOriginalIndex(int originalIndex) {
    final _$actionInfo = _$_CompletedGoalsScreenStoreActionController
        .startAction(name: '_CompletedGoalsScreenStore.deleteByOriginalIndex');
    try {
      return super.deleteByOriginalIndex(originalIndex);
    } finally {
      _$_CompletedGoalsScreenStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
completedGoals: ${completedGoals},
hasCompleted: ${hasCompleted},
completedCount: ${completedCount}
    ''';
  }
}
