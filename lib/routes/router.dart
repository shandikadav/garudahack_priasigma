import 'package:go_router/go_router.dart';

import '../ui/pages/splash_page.dart';

part 'route_name.dart';

// GoRouter configuration
final router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      name: RouteNames.splash,
      builder: (context, state) => const SplashPage(),
      // routes: []
    ),
    GoRoute(
      path: '/',
      name: RouteNames.splash,
      builder: (context, state) => const SplashPage(),
      // routes: []
    ),
  ],
);