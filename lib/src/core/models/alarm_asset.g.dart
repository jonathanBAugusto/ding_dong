// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'alarm_asset.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AlarmAsset _$AlarmAssetFromJson(Map<String, dynamic> json) => _AlarmAsset(
  path: json['path'] as String? ?? '',
  type:
      $enumDecodeNullable(_$AssetTypeEnumMap, json['type']) ?? AssetType.asset,
);

Map<String, dynamic> _$AlarmAssetToJson(_AlarmAsset instance) =>
    <String, dynamic>{
      'path': instance.path,
      'type': _$AssetTypeEnumMap[instance.type]!,
    };

const _$AssetTypeEnumMap = {
  AssetType.asset: 'asset',
  AssetType.file: 'file',
  AssetType.url: 'url',
  AssetType.bytes: 'bytes',
};
