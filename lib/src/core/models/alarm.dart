import 'package:flutter/material.dart';

import '../enum/asset_type.dart';

class Alarm {
  final int id;
  final String label;
  final TimeOfDay time;
  final List<int> repeatDays;
  final String soundAsset;
  final AssetType soundAssetType;
  final bool isActive;

  const Alarm({
    required this.id,
    required this.label,
    required this.time,
    this.repeatDays = const [],
    this.soundAsset = 'assets/sounds/bell.mp3',
    this.soundAssetType = AssetType.asset,
    this.isActive = true,
  });
}
