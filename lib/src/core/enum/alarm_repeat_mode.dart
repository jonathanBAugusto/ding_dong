extension ExAlarmRepeatMode on AlarmRepeatMode {
  String get displayName {
    switch (this) {
      case AlarmRepeatMode.once:
        return 'Once';
      case AlarmRepeatMode.daily:
        return 'Daily';
      case AlarmRepeatMode.weekdays:
        return 'Weekdays';
      case AlarmRepeatMode.custom:
        return 'Custom';
    }
  }

  List<int> repeatDays({List<int> customDays = const []}) {
    switch (this) {
      case AlarmRepeatMode.once:
        return [];
      case AlarmRepeatMode.daily:
        return [1, 2, 3, 4, 5, 6, 7];
      case AlarmRepeatMode.weekdays:
        return [1, 2, 3, 4, 5];
      case AlarmRepeatMode.custom:
        return customDays;
    }
  }
}

enum AlarmRepeatMode { once, daily, weekdays, custom }
