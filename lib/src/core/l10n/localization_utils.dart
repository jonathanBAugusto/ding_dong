import '../global.dart';
import 'generated/app_localizations.dart';

class LocalizationsUtils {
  static AppLocalizations get l10n {
    return AppLocalizations.of(navigatorKey.currentContext!)!;
  }
}
