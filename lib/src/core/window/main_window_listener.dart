import 'package:injectable/injectable.dart';
import 'package:window_manager/window_manager.dart';

import '../dialogs/dialog_handler.dart';

@singleton
class MainWindowListener implements WindowListener {
  final DialogHandler _dialogHandler;
  MainWindowListener(this._dialogHandler);

  @override
  void onWindowBlur() {}

  @override
  void onWindowClose() {
    _dialogHandler
        .showConfirmationDialog(
          title: 'Exit Ding Dong',
          content: 'Are you sure you want to exit Ding Dong?',
          confirmButtonText: 'Exit',
          cancelButtonText: 'Minimize',
        )
        .then((shouldExit) {
          if (shouldExit) {
            windowManager.destroy();
            return;
          }
          windowManager.minimize();
        });
  }

  @override
  void onWindowDocked() {}

  @override
  void onWindowEnterFullScreen() {}

  @override
  void onWindowEvent(String eventName) {}

  @override
  void onWindowFocus() {}

  @override
  void onWindowLeaveFullScreen() {}

  @override
  void onWindowMaximize() {}

  @override
  void onWindowMinimize() {}

  @override
  void onWindowMove() {}

  @override
  void onWindowMoved() {}

  @override
  void onWindowResize() {}

  @override
  void onWindowResized() {}

  @override
  void onWindowRestore() {}

  @override
  void onWindowUndocked() {}

  @override
  void onWindowUnmaximize() {}
}
