import '../global.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

import '../routing/app_navigator.dart';

@singleton
class DialogHandler {
  final AppNavigator _appNavigator;
  DialogHandler(this._appNavigator);

  Future<T?> showAlertDialog<T>({required String title, required String text, String confirmButtonText = 'OK'}) {
    return showDialog<T>(
      context: navigatorKey.currentContext!,
      builder: (context) => AlertDialog(
        title: Text(title),
        content: SelectableText(text, style: const TextStyle(fontSize: 16)),
        actions: [TextButton(onPressed: () => _appNavigator.pop(), child: Text(confirmButtonText))],
      ),
    );
  }

  Future<T?> showContentDialog<T>({
    required String title,
    required Widget content,
    List<Widget>? actions,
    String confirmationButtonText = 'OK',
  }) {
    return showDialog<T>(
      context: navigatorKey.currentContext!,
      builder: (context) => AlertDialog(
        title: Text(title),
        content: content,
        actions: actions ?? [TextButton(onPressed: () => _appNavigator.pop(), child: Text(confirmationButtonText))],
      ),
    );
  }

  Future<bool> showConfirmationDialog({
    required String title,
    required String content,
    String confirmButtonText = 'Yes',
    String cancelButtonText = 'No',
  }) {
    return showDialog<bool>(
      context: navigatorKey.currentContext!,
      builder: (context) => AlertDialog(
        title: Text(title, style: const TextStyle(fontWeight: FontWeight.bold)),
        content: Text(content, style: const TextStyle(fontSize: 16)),
        actions: [
          TextButton(onPressed: () => _appNavigator.pop(false), child: Text(cancelButtonText)),
          ElevatedButton(onPressed: () => _appNavigator.pop(true), child: Text(confirmButtonText)),
        ],
      ),
    ).then((value) => value ?? false);
  }
}
