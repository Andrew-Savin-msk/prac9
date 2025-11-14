// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'goals_list_screen_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$GoalsListScreenStore on _GoalsListScreenStore, Store {
  Computed<bool>? _$hasGoalsComputed;

  @override
  bool get hasGoals => (_$hasGoalsComputed ??= Computed<bool>(
    () => super.hasGoals,
    name: '_GoalsListScreenStore.hasGoals',
  )).value;

  late final _$searchQueryAtom = Atom(
    name: '_GoalsListScreenStore.searchQuery',
    context: context,
  );

  @override
  String get searchQuery {
    _$searchQueryAtom.reportRead();
    return super.searchQuery;
  }

  @override
  set searchQuery(String value) {
    _$searchQueryAtom.reportWrite(value, super.searchQuery, () {
      super.searchQuery = value;
    });
  }

  late final _$goalsAtom = Atom(
    name: '_GoalsListScreenStore.goals',
    context: context,
  );

  @override
  ObservableList<Goal> get goals {
    _$goalsAtom.reportRead();
    return super.goals;
  }

  @override
  set goals(ObservableList<Goal> value) {
    _$goalsAtom.reportWrite(value, super.goals, () {
      super.goals = value;
    });
  }

  late final _$_GoalsListScreenStoreActionController = ActionController(
    name: '_GoalsListScreenStore',
    context: context,
  );

  @override
  void setSearchQuery(String value) {
    final _$actionInfo = _$_GoalsListScreenStoreActionController.startAction(
      name: '_GoalsListScreenStore.setSearchQuery',
    );
    try {
      return super.setSearchQuery(value);
    } finally {
      _$_GoalsListScreenStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void refresh() {
    final _$actionInfo = _$_GoalsListScreenStoreActionController.startAction(
      name: '_GoalsListScreenStore.refresh',
    );
    try {
      return super.refresh();
    } finally {
      _$_GoalsListScreenStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void deleteByFilteredIndex(int index) {
    final _$actionInfo = _$_GoalsListScreenStoreActionController.startAction(
      name: '_GoalsListScreenStore.deleteByFilteredIndex',
    );
    try {
      return super.deleteByFilteredIndex(index);
    } finally {
      _$_GoalsListScreenStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
searchQuery: ${searchQuery},
goals: ${goals},
hasGoals: ${hasGoals}
    ''';
  }
}
