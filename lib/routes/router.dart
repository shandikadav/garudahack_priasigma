import 'package:garudahack_priasigmas/ui/pages/detail_food_item.dart';
import 'package:garudahack_priasigmas/ui/pages/fruits_pages.dart';
import 'package:garudahack_priasigmas/ui/pages/home_page.dart';
import 'package:garudahack_priasigmas/ui/pages/meals_page.dart';
import 'package:garudahack_priasigmas/ui/pages/profile_page.dart';
import 'package:garudahack_priasigmas/ui/pages/signup_page.dart';
import 'package:garudahack_priasigmas/ui/pages/splash_page.dart';
import 'package:go_router/go_router.dart';
import '../ui/pages/signin_page.dart';
// import '../ui/pages/splash_page.dart';
import '../ui/widgets/item_food_widget.dart';

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
      builder: (context, state) =>  SignUpPage(),
    ),
    GoRoute(
        path: '/signIn',
        name: RouteNames.signIn,
        builder: (context, state) => const SignInPage()),
    GoRoute(
        path: '/home',
        name: RouteNames.home,
        builder: (context, state) => const HomePage()),
    GoRoute(
      path: '/profile',
      name: RouteNames.profile,
      builder: (context, state) => const ProfilePage(),
    ),
    GoRoute(
      path: '/fruit-pages',
      name: RouteNames.fruitspages,
      builder: (context, state) => const FruitsPages(),
      routes: [
        GoRoute(
          path: 'detail-food',
          name: RouteNames.detailFood,
          builder: (context, state) {
            final extra = state.extra as Map<String, dynamic>? ?? {};
            final imageSource = extra['imageSource'] as String? ?? 'assets/IMAGE_Default.png';
            final filteredClassList = extra['filteredClassList'] as List<FoodItem>? ?? [];
            return DetailFoodItem(
              imageSource: imageSource,
              filteredClassList: filteredClassList,
            );
          },
        ),
        GoRoute(
          path: 'meals-Page',
          name: RouteNames.mealsPage,
          builder: (context, state) => const MealsPage(),
        ),
      ],
    ),
  ],
);
