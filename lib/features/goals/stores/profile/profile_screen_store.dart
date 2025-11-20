import 'package:mobx/mobx.dart';

part 'profile_screen_store.g.dart';

class Achievement {
  final String title;
  final String description;
  final String imageUrl;
  final bool isUnlocked;

  const Achievement({
    required this.title,
    required this.description,
    required this.imageUrl,
    this.isUnlocked = false,
  });
}

class AchievementService {
  List<Achievement> getAchievements() => const [
    Achievement(
      title: 'Первый шаг',
      description: 'Создана первая цель',
      imageUrl: 'https://picsum.photos/id/237/600/400',
      isUnlocked: true,
    ),
    Achievement(
      title: 'Настойчивость',
      description: 'Выполнено 5 целей подряд',
      imageUrl: 'https://picsum.photos/id/1025/600/400',
      isUnlocked: true,
    ),
    Achievement(
      title: 'Мастер планирования',
      description: 'Добавлено 10 подцелей',
      imageUrl: 'https://picsum.photos/id/1011/600/400',
      isUnlocked: false,
    ),
    Achievement(
      title: 'Ежедневная серия',
      description: 'Серия из 7 дней',
      imageUrl: 'https://picsum.photos/id/1003/600/400',
      isUnlocked: false,
    ),
    Achievement(
      title: 'Целеустремлённый',
      description: 'Цель с подцелями',
      imageUrl: 'https://picsum.photos/id/1035/600/400',
      isUnlocked: true,
    ),
    Achievement(
      title: 'Легенда целей',
      description: 'Все цели закрыты',
      imageUrl: 'https://picsum.photos/id/1043/600/400',
      isUnlocked: false,
    ),
  ];
}

class ProfileScreenStore = _ProfileScreenStore with _$ProfileScreenStore;

abstract class _ProfileScreenStore with Store {
  _ProfileScreenStore() {
    _loadAchievements();
  }

  final AchievementService _service = AchievementService();

  @observable
  ObservableList<Achievement> achievements = ObservableList<Achievement>();

  @computed
  bool get hasAchievements => achievements.isNotEmpty;

  @computed
  int get unlockedCount =>
      achievements.where((a) => a.isUnlocked).length;

  @action
  void _loadAchievements() {
    achievements = ObservableList.of(_service.getAchievements());
  }

  @action
  void refresh() => _loadAchievements();
}
