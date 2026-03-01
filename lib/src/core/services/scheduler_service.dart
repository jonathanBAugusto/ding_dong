import 'dart:async';

import 'package:ding_dong/src/core/models/alarm.dart';
import 'package:ding_dong/src/core/services/audio_service.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

import '../enum/alarm_repeat_mode.dart';

@singleton
class SchedulerService {
  Timer? _timer;
  List<Alarm> _scheduledAlarms = [];

  final AudioService _audioService;

  SchedulerService(this._audioService);

  void start(List<Alarm> alarms) {
    _scheduledAlarms = alarms.where((alarm) => alarm.isActive).toList();
    _timer?.cancel();
    _timer = Timer.periodic(const Duration(seconds: 15), (_) => _checkAlarms());
  }

  void updateAlarms(List<Alarm> alarms) {
    _scheduledAlarms = alarms;
  }

  void stop() {
    _timer?.cancel();
  }

  void _checkAlarms() {
    final now = TimeOfDay.now();
    final today = DateTime.now().weekday;
    debugPrint('Checking alarms at $now on weekday $today');
    for (final alarm in _scheduledAlarms) {
      if (!alarm.isActive) continue;

      final timeMatches = alarm.time.hour == now.hour && alarm.time.minute == now.minute;

      final dayMatches =
          alarm.repeatMode == AlarmRepeatMode.daily ||
          (alarm.repeatMode == AlarmRepeatMode.weekdays && alarm.customRepeatDays.contains(today)) ||
          (alarm.repeatMode == AlarmRepeatMode.custom && alarm.customRepeatDays.isEmpty);
      debugPrint('Alarm ${alarm.label} - Time matches: $timeMatches, Day matches: $dayMatches');
      if (timeMatches && dayMatches) {
        _audioService.play(alarm.soundAsset);
      }
    }
  }
}
