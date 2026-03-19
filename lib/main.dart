import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:smart_rent_mobile/core/theme/app_theme.dart';
import 'package:smart_rent_mobile/features/navigation/presentation/screens/main_navigation_screen.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

final goRouterProvider = Provider((ref) {
  return GoRouter(
    initialLocation: '/login',
    routes: [
      // GoRoute(path: '/login', builder: (context, state) => const LoginScreen()),
      // GoRoute(
      //   path: '/register',
      //   builder: (context, state) => const RegisterScreen(),
      // ),
      GoRoute(
        path: '/home',
        builder: (context, state) => const MainNavigationScreen(),
      ),
    ],
  );
});

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final goRouter = ref.watch(goRouterProvider);

    return MaterialApp.router(
      title: 'Smart Rent',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      routerConfig: goRouter,
    );
  }
}
