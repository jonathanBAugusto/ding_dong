import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

import '../../../core/dialogs/dialog_handler.dart';
import '../../../core/models/alarm.dart';
import '../../../core/notifications/toast.dart';
import '../../../core/services/scheduler_service.dart';
import '../components/new_alarm_dialog.dart';
import '../data/services/alarm_service.dart';

@singleton
class AlarmController {
  final AlarmService _alarmService;
  final SchedulerService _schedulerService;
  final Toast _toast;
  final DialogHandler _dialogHandler;

  AlarmController(this._alarmService, this._schedulerService, this._toast, this._dialogHandler);

  final alarms = ValueNotifier<List<Alarm>>([]);
  final isLoading = ValueNotifier<bool>(false);

  void initialize() async {
    await loadAlarms();
    startListenAlarms();
  }

  Future<void> loadAlarms() async {
    isLoading.value = true;
    try {
      final loadedAlarms = await _alarmService.getAlarms();
      alarms.value = loadedAlarms;
    } catch (e) {
      _toast.showError('Failed to load alarms', description: e.toString());
    } finally {
      isLoading.value = false;
    }
  }

  Future<void> addAlarm(Alarm alarm) async {
    try {
      await _alarmService.addAlarm(alarm);
      await loadAlarms();
      _toast.showSuccess('Alarm added successfully');
    } catch (e) {
      debugPrintStack(label: 'Error adding alarm: $e', stackTrace: StackTrace.current);

      _toast.showError('Failed to add alarm', description: e.toString());
    }
  }

  void startListenAlarms() {
    _schedulerService.start(alarms.value);
  }

  void stopListenAlarms() {
    _schedulerService.stop();
  }

  void updateAlarms(List<Alarm> updatedAlarms) {
    _schedulerService.updateAlarms(updatedAlarms);
  }

  VoidCallback? get onNewAlarmTap => isLoading.value
      ? null
      : () async {
          final newAlarm = await _dialogHandler.showContentDialog<Alarm?>(
            content: const NewAlarmDialog(),
            title: 'Create New Alarm',
          );
          if (newAlarm != null) {
            await addAlarm(newAlarm);
          }
        };
}
