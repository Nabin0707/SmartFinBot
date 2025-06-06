import 'package:flutterthemetest/view/features/login/presentation/pages/login_page.dart';
import 'package:flutterthemetest/view/features/login/presentation/pages/login_start_page.dart';
import 'package:go_router/go_router.dart';

GoRouter routes = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(path: '/', builder: (context, state) => const LoginStartPage()),
    GoRoute(path: '/login', builder: (context, state) => const LoginPage()),
  ],
);
