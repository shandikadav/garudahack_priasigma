import 'package:garudahack_priasigmas/ui/pages/signup_page.dart';
import 'package:go_router/go_router.dart';

import '../ui/pages/splash_page.dart';

part 'route_name.dart';

// GoRouter configuration
final router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      name: RouteNames.home,
      builder: (context, state) => const SignUpPage(),
      // routes: []
    ),
    GoRoute(
      path: '/signUp',
      name: RouteNames.signUp,
      builder: (context, state) => const SignUpPage(),
      // routes: []
    ),
  ],
);