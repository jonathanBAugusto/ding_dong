import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../enum/alarm_repeat_mode.dart';
import 'alarm_asset.dart';

part 'alarm.freezed.dart';
part 'alarm.g.dart';

TimeOfDay _timeFromJson(String json) {
  final parts = json.split(':');
  return TimeOfDay(hour: int.parse(parts[0]), minute: int.parse(parts[1]));
}

String _timeToJson(TimeOfDay time) {
  return '${time.hour}:${time.minute}';
}

@freezed
abstract class Alarm with _$Alarm {
  const Alarm._();

  const factory Alarm({
    required int id,
    required String label,
    required AlarmAsset soundAsset,
    required AlarmRepeatMode repeatMode,
    @Default([]) List<int> customRepeatDays,
    @JsonKey(fromJson: _timeFromJson, toJson: _timeToJson) required TimeOfDay time,
    @Default(true) bool isActive,
  }) = _Alarm;

  factory Alarm.fromJson(Map<String, dynamic> json) => _$AlarmFromJson(json);
}
