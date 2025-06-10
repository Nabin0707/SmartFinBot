import 'package:flutterthemetest/view/features/login/presentation/pages/login_page.dart';
import 'package:flutterthemetest/view/features/login/presentation/pages/login_start_page.dart';
import 'package:flutterthemetest/view/features/login/presentation/pages/register_page.dart';
import 'package:flutterthemetest/view/features/login/presentation/pages/onboarding1.dart';
import 'package:flutterthemetest/view/features/login/presentation/pages/onboarding2.dart';
import 'package:go_router/go_router.dart';

GoRouter routes = GoRouter(
  initialLocation: '/onboarding1', // 👈 Ensures Onboarding1 shows on app launch
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const LoginStartPage(),
    ),
    GoRoute(
      path: '/login',
      builder: (context, state) => const LoginPage(),
    ),
    GoRoute(
      path: '/register',
      builder: (context, state) => const RegisterPage(),
    ),
    GoRoute(
      path: '/onboarding1',
      builder: (context, state) => const OnboardingPage1(),
    ),
    GoRoute(
      path: '/onboarding2',
      builder: (context, state) => const Onboarding2(),
    ),
  ],
);
