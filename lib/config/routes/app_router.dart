import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:smart_rent_mobile/features/auth/presentation/screens/login_screen.dart';
import 'package:smart_rent_mobile/features/auth/presentation/screens/register_screen.dart';
import 'package:smart_rent_mobile/features/auth/providers/auth_provider.dart';
import 'package:smart_rent_mobile/features/home/presentation/home_screen.dart';

final routerProvider = Provider<GoRouter>((ref) {
  final authState = ref.watch(authProvider);

  return GoRouter(
    initialLocation: '/',
    routes: [
      GoRoute(path: '/', builder: (context, state) => HomeScreen()),

      GoRoute(path: '/login', builder: (context, state) => LoginScreen()),

      GoRoute(path: '/register', builder: (context, state) => RegisterScreen()),
    ],

    // AUTH GUARD
    redirect: (context, state) {
      final isLoggedIn = authState.isLoggedIn;

      final isAuthRoute =
          state.matchedLocation == '/login' ||
          state.matchedLocation == '/register';

      if (!isLoggedIn && !isAuthRoute) {
        // return '/login';
      }

      if (isLoggedIn && isAuthRoute) {
        // return '/';
      }

      return null;
    },
  );
});
