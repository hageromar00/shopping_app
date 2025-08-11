import 'package:go_router/go_router.dart';
import 'package:shopping_app/presentation_layer/home_views.dart';
import 'package:shopping_app/presentation_layer/screens/sign_in.dart';
import 'package:shopping_app/presentation_layer/screens/sign_up.dart';

class AppRouter {
  static const ksignin = 'signin';
  static const ksignup = 'signup';
  static final router = GoRouter(
    routes: [
      GoRoute(path: '/', builder: (context, state) => const HomeViews()),
      GoRoute(path: ksignin, builder: (context, state) =>  SignInViews()),
      GoRoute(path: ksignup, builder: (context, state) => const SignUpViews()),
    ],
  );
}
