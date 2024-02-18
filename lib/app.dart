import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'main/home/home_screen.dart';

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          brightness: Brightness.dark,
          scaffoldBackgroundColor: Colors.black,
          appBarTheme: const AppBarTheme(
            backgroundColor: Colors.black,
            surfaceTintColor: Colors.black,
          )),
      home: const HomeScreen(),
    );
  }
}

/// Go Route

late final GoRouter _router = GoRouter(
  routes: <GoRoute>[
    GoRoute(
      path: '/',
      redirect: (_, __) => '/main',
    ),
    GoRoute(
      path: '/main',
      redirect: (_, __) => '/main/home',
    ),
  ],
  debugLogDiagnostics: true,
);
