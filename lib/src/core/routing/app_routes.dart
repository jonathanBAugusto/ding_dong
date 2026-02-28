import 'package:go_router/go_router.dart';
import 'package:injectable/injectable.dart';

import '../../features/home/home_screen.dart';
import 'destiny.dart';

@singleton
class AppRoutes {
  const AppRoutes();

  List<GoRoute> get routes => [GoRoute(path: Destiny.home.path, builder: (context, state) => const HomeScreen())];
}
