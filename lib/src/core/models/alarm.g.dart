// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'alarm.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Alarm _$AlarmFromJson(Map<String, dynamic> json) => _Alarm(
  id: (json['id'] as num).toInt(),
  label: json['label'] as String,
  soundAsset: AlarmAsset.fromJson(json['soundAsset'] as Map<String, dynamic>),
  repeatMode: $enumDecode(_$AlarmRepeatModeEnumMap, json['repeatMode']),
  customRepeatDays:
      (json['customRepeatDays'] as List<dynamic>?)
          ?.map((e) => (e as num).toInt())
          .toList() ??
      const [],
  time: _timeFromJson(json['time'] as String),
  isActive: json['isActive'] as bool? ?? true,
);

Map<String, dynamic> _$AlarmToJson(_Alarm instance) => <String, dynamic>{
  'id': instance.id,
  'label': instance.label,
  'soundAsset': instance.soundAsset,
  'repeatMode': _$AlarmRepeatModeEnumMap[instance.repeatMode]!,
  'customRepeatDays': instance.customRepeatDays,
  'time': _timeToJson(instance.time),
  'isActive': instance.isActive,
};

const _$AlarmRepeatModeEnumMap = {
  AlarmRepeatMode.once: 'once',
  AlarmRepeatMode.daily: 'daily',
  AlarmRepeatMode.weekdays: 'weekdays',
  AlarmRepeatMode.custom: 'custom',
};
