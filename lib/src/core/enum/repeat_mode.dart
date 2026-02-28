enum RepeatMode {
  once,
  daily,
  weekdays,
  custom;

  List<int> repeatDays({List<int> customDays = const []}) {
    switch (this) {
      case RepeatMode.once:
        return [];
      case RepeatMode.daily:
        return [1, 2, 3, 4, 5, 6, 7];
      case RepeatMode.weekdays:
        return [1, 2, 3, 4, 5];
      case RepeatMode.custom:
        return customDays;
    }
  }
}
