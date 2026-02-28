import 'package:go_router/go_router.dart';
import 'package:injectable/injectable.dart';

import '../global.dart';
import 'app_routes.dart';

@singleton
class AppNavigator {
  late final GoRouter router;

  final AppRoutes _appRoutes;

  AppNavigator(this._appRoutes) {
    _setRouter();
  }

  void _setRouter() {
    router = GoRouter(navigatorKey: navigatorKey, routes: _appRoutes.routes);
  }
}
