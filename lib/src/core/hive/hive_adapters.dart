import 'package:flutter/material.dart';
import 'package:hive_ce_flutter/adapters.dart';

import '../enum/alarm_repeat_mode.dart';
import '../enum/asset_type.dart';
import '../models/alarm.dart';
import '../models/alarm_asset.dart';

part 'hive_adapters.g.dart';

@GenerateAdapters([
  AdapterSpec<Alarm>(),
  AdapterSpec<AlarmAsset>(),
  AdapterSpec<AlarmRepeatMode>(),
  AdapterSpec<AssetType>(),
  AdapterSpec<TimeOfDay>(),
])
void setupAdapters() {}
