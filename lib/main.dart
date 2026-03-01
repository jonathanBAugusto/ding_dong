import 'dart:io';

import 'package:ding_dong/src/core/di/injector.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:hive_ce_flutter/hive_ce_flutter.dart';
import 'package:launch_at_startup/launch_at_startup.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:window_manager/window_manager.dart';

import 'src/core/l10n/generated/app_localizations.dart';
import 'src/core/routing/app_navigator.dart';
import 'src/core/services/tray_service.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  final packageInfo = await PackageInfo.fromPlatform();

  launchAtStartup.setup(
    appName: packageInfo.appName,
    appPath: Platform.resolvedExecutable,
    packageName: packageInfo.packageName,
  );

  await windowManager.ensureInitialized();
  await Hive.initFlutter();

  configureDependencies();

  await windowManager.setPreventClose(true);
  await windowManager.setTitle('Ding Dong');
  await windowManager.setMinimumSize(const Size(400, 500));

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
