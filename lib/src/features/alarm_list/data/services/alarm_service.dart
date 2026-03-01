import 'package:hive_ce_flutter/adapters.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/models/alarm.dart';

const String alarmBoxName = 'alarmsBox';
const String alarmListKey = 'alarms';

@singleton
class AlarmService {
  Box<Alarm>? _currentHiveBox;

  AlarmService();

  Box<Alarm> get _hiveBox => _currentHiveBox ??= Hive.box<Alarm>(alarmBoxName);

  Future<List<Alarm>> getAlarms() async {
    return _hiveBox.values.toList();
  }

  Future<void> addAlarm(Alarm alarm) async {
    await _hiveBox.add(alarm);
  }

  Future<void> updateAlarm(Alarm alarm) async {
    final index = _hiveBox.values.toList().indexWhere((a) => a.id == alarm.id);
    if (index != -1) {
      await _hiveBox.putAt(index, alarm);
    }
  }

  Future<void> deleteAlarm(int id) async {
    final index = _hiveBox.values.toList().indexWhere((a) => a.id == id);
    if (index != -1) {
      await _hiveBox.deleteAt(index);
    }
  }
}
