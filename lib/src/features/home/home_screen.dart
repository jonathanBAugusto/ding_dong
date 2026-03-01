import '../../core/di/injector.dart';
import '../alarm_list/components/alarm_data_table.dart';
import 'package:flutter/material.dart';

import '../../core/l10n/localization_utils.dart';
import '../alarm_list/domain/alarm_controller.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final alarmController = getIt.get<AlarmController>();

  @override
  void initState() {
    alarmController.initialize();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(LocalizationsUtils.l10n.homeScreenTitle)),
      body: Center(
        child: AnimatedBuilder(
          animation: Listenable.merge([alarmController.alarms, alarmController.isLoading]),
          builder: (context, child) => Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(LocalizationsUtils.l10n.homeScreenWelcomeMessage, textAlign: TextAlign.center),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: alarmController.onNewAlarmTap,
                    child: Text(LocalizationsUtils.l10n.createAlarmButton),
                  ),
                ],
              ),
              ConstrainedBox(
                constraints: const BoxConstraints(maxWidth: 900, maxHeight: 800),
                child: AlarmDataTable(alarms: alarmController.alarms.value),
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
