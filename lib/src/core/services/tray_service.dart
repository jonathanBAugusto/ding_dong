import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:system_tray/system_tray.dart';
import 'package:window_manager/window_manager.dart';

@singleton
class TrayService {
  final SystemTray _systemTray = SystemTray();

  Future<void> init() async {
    final iconAssetPath = Platform.isWindows ? 'assets/icons/bell.ico' : 'assets/icons/bell.png';

    if (Platform.isWindows || Platform.isLinux) {
      final resolvedIconPath =
          '${Directory(Platform.resolvedExecutable).parent.path}${Platform.pathSeparator}data${Platform.pathSeparator}flutter_assets${Platform.pathSeparator}$iconAssetPath';
      if (!File(resolvedIconPath).existsSync()) {
        debugPrint('Tray icon asset not found at runtime: $resolvedIconPath');
        return;
      }
    }

    try {
      await _systemTray.initSystemTray(title: 'Ding Dong', iconPath: iconAssetPath);
    } catch (error, stackTrace) {
      debugPrint('System tray init failed: $error');
      debugPrint('$stackTrace');
      return;
    }

    final menu = Menu();
    await menu.buildFrom([
      MenuItemLabel(label: 'Abrir', onClicked: (_) => windowManager.show()),
      MenuItemLabel(label: 'Fechar', onClicked: (_) => windowManager.destroy()),
    ]);

    await _systemTray.setContextMenu(menu);
    _systemTray.registerSystemTrayEventHandler((eventName) {
      if (eventName == kSystemTrayEventClick) {
        windowManager.show();
      }
    });
  }
}
