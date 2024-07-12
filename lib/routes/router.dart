import 'package:garudahack_priasigmas/ui/pages/createshop_page.dart';
import 'package:garudahack_priasigmas/ui/pages/home_page.dart';
import 'package:garudahack_priasigmas/ui/pages/profile_page.dart';
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
      name: RouteNames.home,
      builder: (context, state) => const CreateshopPage(),
      // routes: []
    ),
    GoRoute(
      path: '/signUp',
      name: RouteNames.signUp,
      builder: (context, state) => SignUpPage(),
      // routes: []
    ),
    GoRoute(
        path: '/signIn',
        name: RouteNames.signIn,
        builder: (context, state) => const SignInPage()),
    // GoRoute(
    //     path: '/home',
    //     name: RouteNames.home,
    //     builder: (context, state) => const HomePage()),
    GoRoute(
      path: '/profile',
      name: RouteNames.profile,
      builder: (context, state) => const ProfilePage(),
      // routes: []
    ),
  ],
);
