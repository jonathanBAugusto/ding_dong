import 'package:ding_dong/src/core/di/injector.dart';
import 'package:ding_dong/src/core/enum/alarm_repeat_mode.dart';
import 'package:ding_dong/src/core/models/alarm.dart';
import 'package:flutter/material.dart';

import '../../core/enum/asset_type.dart';
import '../../core/l10n/localization_utils.dart';
import '../../core/models/alarm_asset.dart';
import '../../core/services/scheduler_service.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(LocalizationsUtils.l10n.homeScreenTitle)),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(LocalizationsUtils.l10n.homeScreenWelcomeMessage, textAlign: TextAlign.center),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                getIt.get<SchedulerService>().start(const [
                  Alarm(
                    id: 23,
                    label: 'Test Alarm',
                    time: TimeOfDay(hour: 23, minute: 00),
                    repeatMode: AlarmRepeatMode.daily,
                    soundAsset: AlarmAsset(path: 'sounds/school-bell.mp3', type: AssetType.asset),
                  ),
                ]);
              },
              child: Text(LocalizationsUtils.l10n.startButton),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                getIt.get<SchedulerService>().stop();
              },
              child: Text(LocalizationsUtils.l10n.stopButton),
            ),
          ],
        ),
      ),
    );
  }
}
