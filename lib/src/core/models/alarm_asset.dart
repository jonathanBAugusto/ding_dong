import 'package:freezed_annotation/freezed_annotation.dart';

import '../enum/asset_type.dart';

part 'alarm_asset.freezed.dart';
part 'alarm_asset.g.dart';

@freezed
abstract class AlarmAsset with _$AlarmAsset {
  const factory AlarmAsset({@Default('') String path, @Default(AssetType.asset) AssetType type}) = _AlarmAsset;

  factory AlarmAsset.fromJson(Map<String, dynamic> json) => _$AlarmAssetFromJson(json);
}
