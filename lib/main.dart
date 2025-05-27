import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'screens/home_screen.dart';
import 'screens/manage_team_screen.dart';
import 'screens/game_day_screen.dart';
import 'screens/standings_screen.dart';

void main() {
  runApp(const BasketBallManagerApp());
}

class BasketBallManagerApp extends StatelessWidget {
  const BasketBallManagerApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'Basketball Manager',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blueGrey),
        useMaterial3: true,
      ),
      routerConfig: _router,
    );
  }
}

final _router = GoRouter(
  routes: [
    GoRoute(path: '/', builder: (context, state) => const HomeScreen()),
    GoRoute(path: '/team', builder: (context, state) => const TeamScreen()),
    GoRoute(path: '/match', builder: (context, state) => const MatchSimScreen()),
    GoRoute(path: '/season', builder: (context, state) => const SeasonScreen()),
  ],
);