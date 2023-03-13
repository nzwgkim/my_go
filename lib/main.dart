import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:my_go/screen/home_screen.dart';

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
        ],
      );

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routeInformationProvider: _router.routeInformationProvider,

      /// URI String을 상태 및 Go Router에서 사용할 수
      /// 있는 형태로 변환해 주는 함수
      routeInformationParser: _router.routeInformationParser,

      /// 위에서 변경된 값으로
      /// 실제 어떤 route를 보여줄지 정하는 함수
      routerDelegate: _router.routerDelegate,
    );
  }
}
