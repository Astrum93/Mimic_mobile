import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mimic_mobile/main/home/home_screen.dart';
import 'package:mimic_mobile/main/home/join/join_screen.dart';

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: _router,
      theme: ThemeData(
          brightness: Brightness.dark,
          scaffoldBackgroundColor: Colors.black,
          appBarTheme: const AppBarTheme(
            backgroundColor: Colors.black,
            surfaceTintColor: Colors.black,
          )),
    );
  }
}

/// Go Route

late final GoRouter _router = GoRouter(
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return const HomeScreen();
      },
      routes: <RouteBase>[
        GoRoute(
          path: 'home',

          /// redirect Screen 생성 후 추가 예정
          // redirect: (_, __) => '/',
          builder: (BuildContext context, GoRouterState state) {
            return const HomeScreen();
          },
        ),
        GoRoute(
          path: 'join',

          /// redirect Screen 생성 후 추가 예정
          // redirect: (_, __) => '/',
          builder: (BuildContext context, GoRouterState state) {
            return const JoinScreen();
          },
        ),
      ],
    ),
  ],
  debugLogDiagnostics: true,
);
