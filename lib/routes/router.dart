import 'package:garudahack_priasigmas/ui/pages/signup_page.dart';
import 'package:go_router/go_router.dart';

import '../ui/pages/signin_page.dart';
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
      path: '/signUp',
      name: RouteNames.signUp,
      builder: (context, state) => const SignUpPage(),
      // routes: []
    ),
    GoRoute(
    path: '/signIn',
    name: RouteNames.signIn,
    builder: (context, state)=> const SignInPage()
)
  ],
);