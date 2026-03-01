// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Portuguese (`pt`).
class AppLocalizationsPt extends AppLocalizations {
  AppLocalizationsPt([String locale = 'pt']) : super(locale);

  @override
  String get homeScreenTitle => 'Bem-vindo ao Ding Dong!';

  @override
  String get homeScreenWelcomeMessage => 'Esta é a tela inicial do Ding Dong. Aproveite sua estadia!';

  @override
  String get startButton => 'Iniciar';

  @override
  String get stopButton => 'Parar';

  @override
  String get createAlarmButton => 'Criar Alarme';

  @override
  String get alarmTimeLabel => 'Hora da Alarme';

  @override
  String get alarmRepeatLabel => 'Repetir';

  @override
  String get alarmRepeatModeDaily => 'Diário';

  @override
  String get alarmRepeatModeWeekly => 'Semanal';

  @override
  String get alarmRepeatModeMonthly => 'Mensal';

  @override
  String get alarmRepeatModeYearly => 'Anual';
}
