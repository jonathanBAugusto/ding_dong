import 'package:flutter/material.dart';

import '../../../core/di/injector.dart';
import '../../../core/enum/asset_type.dart';
import '../../../core/models/alarm.dart';
import '../../../core/models/alarm_asset.dart';
import '../../../core/routing/app_navigator.dart';

class NewAlarmDialog extends StatefulWidget {
  const NewAlarmDialog({super.key});

  @override
  State<NewAlarmDialog> createState() => _NewAlarmDialogState();
}

class _NewAlarmDialogState extends State<NewAlarmDialog> {
  final _appNavigator = getIt.get<AppNavigator>();
  final TextEditingController _labelController = TextEditingController();
  final TextEditingController _timeController = TextEditingController();
  TimeOfDay _selectedTime = TimeOfDay.now();

  Future<void> _selectTime(BuildContext context) async {
    final TimeOfDay? picked = await showTimePicker(
      context: context,
      initialTime: _selectedTime,
      helpText: 'Select Ring Time',
      cancelText: 'Cancel',
      confirmText: 'Ok',
    );

    if (picked != null && picked != _selectedTime) {
      setState(() {
        _selectedTime = picked;
        _timeController.text = _selectedTime.format(context);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text('Create New Alarm', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            const SizedBox(height: 20),
            TextField(
              controller: _labelController,
              decoration: const InputDecoration(labelText: 'Label'),
            ),
            const SizedBox(height: 10),
            TextField(
              controller: _timeController,
              decoration: InputDecoration(
                labelText: 'Time (HH:mm)',
                suffixIcon: IconButton(
                  icon: const Icon(Icons.access_alarm),
                  onPressed: () {
                    _selectTime(context);
                  },
                ),
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                final newAlarm = Alarm(
                  id: DateTime.now().millisecondsSinceEpoch,
                  label: _labelController.text,
                  time: _selectedTime,
                  repeatMode: .daily,
                  soundAsset: const AlarmAsset(path: 'sounds/default_alarm.mp3', type: AssetType.asset),
                );
                _appNavigator.pop(newAlarm);
              },
              child: const Text('Save'),
            ),
          ],
        ),
      ),
    );
  }
}
