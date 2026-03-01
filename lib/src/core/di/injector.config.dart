// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format width=80

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;

import '../dialogs/dialog_handler.dart' as _i301;
import '../routing/app_navigator.dart' as _i457;
import '../routing/app_routes.dart' as _i574;
import '../services/audio_service.dart' as _i15;
import '../services/scheduler_service.dart' as _i1036;
import '../services/tray_service.dart' as _i585;
import '../window/main_window_listener.dart' as _i706;

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    gh.singleton<_i574.AppRoutes>(() => const _i574.AppRoutes());
    gh.singleton<_i15.AudioService>(() => _i15.AudioService());
    gh.singleton<_i585.TrayService>(() => _i585.TrayService());
    gh.singleton<_i1036.SchedulerService>(
      () => _i1036.SchedulerService(gh<_i15.AudioService>()),
    );
    gh.singleton<_i457.AppNavigator>(
      () => _i457.AppNavigator(gh<_i574.AppRoutes>()),
    );
    gh.singleton<_i301.DialogHandler>(
      () => _i301.DialogHandler(gh<_i457.AppNavigator>()),
    );
    gh.singleton<_i706.MainWindowListener>(
      () => _i706.MainWindowListener(gh<_i301.DialogHandler>()),
    );
    return this;
  }
}
