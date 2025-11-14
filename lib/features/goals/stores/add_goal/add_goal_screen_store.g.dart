// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_goal_screen_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$AddGoalScreenStore on _AddGoalScreenStore, Store {
  Computed<bool>? _$canSaveComputed;

  @override
  bool get canSave => (_$canSaveComputed ??= Computed<bool>(
    () => super.canSave,
    name: '_AddGoalScreenStore.canSave',
  )).value;

  late final _$titleAtom = Atom(
    name: '_AddGoalScreenStore.title',
    context: context,
  );

  @override
  String get title {
    _$titleAtom.reportRead();
    return super.title;
  }

  @override
  set title(String value) {
    _$titleAtom.reportWrite(value, super.title, () {
      super.title = value;
    });
  }

  late final _$deadlineAtom = Atom(
    name: '_AddGoalScreenStore.deadline',
    context: context,
  );

  @override
  DateTime? get deadline {
    _$deadlineAtom.reportRead();
    return super.deadline;
  }

  @override
  set deadline(DateTime? value) {
    _$deadlineAtom.reportWrite(value, super.deadline, () {
      super.deadline = value;
    });
  }

  late final _$_AddGoalScreenStoreActionController = ActionController(
    name: '_AddGoalScreenStore',
    context: context,
  );

  @override
  void setTitle(String value) {
    final _$actionInfo = _$_AddGoalScreenStoreActionController.startAction(
      name: '_AddGoalScreenStore.setTitle',
    );
    try {
      return super.setTitle(value);
    } finally {
      _$_AddGoalScreenStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setDeadline(DateTime value) {
    final _$actionInfo = _$_AddGoalScreenStoreActionController.startAction(
      name: '_AddGoalScreenStore.setDeadline',
    );
    try {
      return super.setDeadline(value);
    } finally {
      _$_AddGoalScreenStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void clear() {
    final _$actionInfo = _$_AddGoalScreenStoreActionController.startAction(
      name: '_AddGoalScreenStore.clear',
    );
    try {
      return super.clear();
    } finally {
      _$_AddGoalScreenStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void createGoal() {
    final _$actionInfo = _$_AddGoalScreenStoreActionController.startAction(
      name: '_AddGoalScreenStore.createGoal',
    );
    try {
      return super.createGoal();
    } finally {
      _$_AddGoalScreenStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
title: ${title},
deadline: ${deadline},
canSave: ${canSave}
    ''';
  }
}
