import 'dart:io';

import 'src/core/di/injector.dart';
import 'src/core/hive/hive_adapters.dart';
import 'src/core/models/alarm.dart';
import 'src/core/window/main_window_listener.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:hive_ce_flutter/hive_ce_flutter.dart';
import 'package:launch_at_startup/launch_at_startup.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:window_manager/window_manager.dart';

import 'src/core/l10n/generated/app_localizations.dart';
import 'src/core/routing/app_navigator.dart';
import 'src/core/services/tray_service.dart';
import 'src/features/alarm_list/data/services/alarm_service.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();

  Hive.registerAdapter(TimeOfDayAdapter());
  Hive.registerAdapter(AssetTypeAdapter());
  Hive.registerAdapter(AlarmRepeatModeAdapter());
  Hive.registerAdapter(AlarmAdapter());
  Hive.registerAdapter(AlarmAssetAdapter());

  await Hive.openBox<Alarm>(alarmBoxName);

  final packageInfo = await PackageInfo.fromPlatform();

  launchAtStartup.setup(
    appName: packageInfo.appName,
    appPath: Platform.resolvedExecutable,
    packageName: packageInfo.packageName,
  );

  await windowManager.ensureInitialized();

  configureDependencies();

  await windowManager.setPreventClose(true);
  await windowManager.setTitle('Ding Dong');
  await windowManager.setMinimumSize(const Size(400, 500));
  windowManager.addListener(getIt.get<MainWindowListener>());

  await TrayService().init();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final appNavigator = getIt.get<AppNavigator>();

    return MaterialApp.router(
      title: 'Ding Dong',
      theme: ThemeData(colorScheme: .fromSeed(seedColor: Colors.deepPurple)),
      routerConfig: appNavigator.router,
      localizationsDelegates: const [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
    );
  }
}
