import '../global.dart';
import 'package:elegant_notification/elegant_notification.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

@singleton
class Toast {
  void showSuccess(String message, {String? description = ''}) {
    ElegantNotification.success(
      title: Text(message),
      description: Text(description ?? ''),
    ).show(navigatorKey.currentContext!);
  }

  void showError(String message, {String? description = ''}) {
    ElegantNotification.error(
      title: Text(message),
      description: Text(description ?? ''),
    ).show(navigatorKey.currentContext!);
  }
}
