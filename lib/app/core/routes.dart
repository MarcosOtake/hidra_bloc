import 'package:go_router/go_router.dart';
import 'package:hidro_bloc/app/models/home/home_page.dart';
import 'package:hidro_bloc/app/models/login/login_page.dart';
import 'package:hidro_bloc/app/models/splash/splash_page.dart';

final routes = GoRouter(routes: [
  GoRoute(
    path: '/',
    builder: (context, state) => const SplashPage(),
  ),
  GoRoute(
    path: '/home',
    builder: (context, state) => const HomePage(),
  ),
  GoRoute(
    path: '/login',
    builder: (context, state) => const LoginPage(),
  ),
]);
