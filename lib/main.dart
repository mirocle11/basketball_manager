import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import 'features/team_management/data/team_repository.dart';
import 'features/team_management/view/team_screen.dart';
import 'features/game_day/view/game_screen.dart';
import 'features/standings/view/standings_screen.dart';

void main() {
  runApp(const BasketBallManagerApp());
}

class BasketBallManagerApp extends StatelessWidget {
  const BasketBallManagerApp({super.key});

  @override
  Widget build(BuildContext context) {
    return RepositoryProvider(
      create: (context) => TeamRepository(),
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        title: 'Basketball Manager',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.blueGrey),
          useMaterial3: true,
        ),
        routerConfig: _router,
      ),
    );
  }
}

final _router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const HomeScreen(),
    ),
    GoRoute(
      path: '/team',
      builder: (context, state) => const TeamScreen(),
    ),
    GoRoute(
      path: '/match',
      builder: (context, state) => const GameScreen(),
    ),
    GoRoute(
      path: '/standings',
      builder: (context, state) => const StandingsScreen(),
    ),
  ],
);

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Basketball Manager'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () => context.go('/team'),
              child: const Text('Team Management'),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () => context.go('/match'),
              child: const Text('Game Day'),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () => context.go('/standings'),
              child: const Text('Standings'),
            ),
          ],
        ),
      ),
    );
  }
}