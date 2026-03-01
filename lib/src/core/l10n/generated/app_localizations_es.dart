// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Spanish Castilian (`es`).
class AppLocalizationsEs extends AppLocalizations {
  AppLocalizationsEs([String locale = 'es']) : super(locale);

  @override
  String get homeScreenTitle => '¡Bienvenido a Ding Dong!';

  @override
  String get homeScreenWelcomeMessage => 'Esta es la pantalla principal de Ding Dong. ¡Disfruta tu estadía!';

  @override
  String get startButton => 'Iniciar';

  @override
  String get stopButton => 'Detener';

  @override
  String get createAlarmButton => 'Crear Alarma';

  @override
  String get alarmTimeLabel => 'Hora de la Alarma';

  @override
  String get alarmRepeatLabel => 'Repetir';

  @override
  String get alarmRepeatModeDaily => 'Diario';

  @override
  String get alarmRepeatModeWeekly => 'Semanal';

  @override
  String get alarmRepeatModeMonthly => 'Mensual';

  @override
  String get alarmRepeatModeYearly => 'Anual';
}
