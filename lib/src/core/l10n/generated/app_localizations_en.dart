// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get homeScreenTitle => 'Welcome to Ding Dong!';

  @override
  String get homeScreenWelcomeMessage => 'This is the home screen of Ding Dong. Enjoy your stay!';

  @override
  String get startButton => 'Start';

  @override
  String get stopButton => 'Stop';

  @override
  String get createAlarmButton => 'Create Alarm';

  @override
  String get alarmTimeLabel => 'Alarm Time';

  @override
  String get alarmRepeatLabel => 'Repeat';

  @override
  String get alarmRepeatModeDaily => 'Daily';

  @override
  String get alarmRepeatModeWeekly => 'Weekly';

  @override
  String get alarmRepeatModeMonthly => 'Monthly';

  @override
  String get alarmRepeatModeYearly => 'Yearly';
}
