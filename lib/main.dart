import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:my_go/screen/home_screen.dart';
import 'package:my_go/screen/one_screen.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  GoRouter get _router => GoRouter(
        initialLocation: '/',
        routes: [
          GoRoute(
            path: '/',
            builder: (context, state) => const HomeScreen(),
          ),
          GoRoute(
            path: '/one',
            builder: (context, state) => const OneScreen(),
          ),
        ],
      );

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: _router,
    );
  }
}
