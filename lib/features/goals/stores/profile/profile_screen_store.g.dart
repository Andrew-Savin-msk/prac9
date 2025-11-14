// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_screen_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$ProfileScreenStore on _ProfileScreenStore, Store {
  Computed<bool>? _$hasAchievementsComputed;

  @override
  bool get hasAchievements => (_$hasAchievementsComputed ??= Computed<bool>(
    () => super.hasAchievements,
    name: '_ProfileScreenStore.hasAchievements',
  )).value;
  Computed<int>? _$unlockedCountComputed;

  @override
  int get unlockedCount => (_$unlockedCountComputed ??= Computed<int>(
    () => super.unlockedCount,
    name: '_ProfileScreenStore.unlockedCount',
  )).value;

  late final _$achievementsAtom = Atom(
    name: '_ProfileScreenStore.achievements',
    context: context,
  );

  @override
  ObservableList<Achievement> get achievements {
    _$achievementsAtom.reportRead();
    return super.achievements;
  }

  @override
  set achievements(ObservableList<Achievement> value) {
    _$achievementsAtom.reportWrite(value, super.achievements, () {
      super.achievements = value;
    });
  }

  late final _$_ProfileScreenStoreActionController = ActionController(
    name: '_ProfileScreenStore',
    context: context,
  );

  @override
  void _loadAchievements() {
    final _$actionInfo = _$_ProfileScreenStoreActionController.startAction(
      name: '_ProfileScreenStore._loadAchievements',
    );
    try {
      return super._loadAchievements();
    } finally {
      _$_ProfileScreenStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void refresh() {
    final _$actionInfo = _$_ProfileScreenStoreActionController.startAction(
      name: '_ProfileScreenStore.refresh',
    );
    try {
      return super.refresh();
    } finally {
      _$_ProfileScreenStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
achievements: ${achievements},
hasAchievements: ${hasAchievements},
unlockedCount: ${unlockedCount}
    ''';
  }
}
