import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../features/splash/splash_screen.dart';
import '../features/intro/intro_cutscene_screen.dart';
import '../features/team_selection/view/team_selection_hub.dart';
import '../features/home/home_page.dart';
import '../features/team_management/view/team_screen.dart';
import '../features/standings/view/standings_screen.dart';
import '../features/game_day/view/game_screen.dart';
import '../features/league/view/league_screen.dart';
import 'routes.dart';

/// Builds the application [GoRouter].
GoRouter buildRouter() {
  return GoRouter(
    initialLocation: Routes.splash,
    routes: [
      /// ── Splash
      GoRoute(
        name: 'splash',
        path: Routes.splash,
        builder: (_, __) => const SplashScreen(),
      ),

      /// ── Intro Story
      GoRoute(
        name: 'intro',
        path: Routes.intro,
        builder: (_, __) => const IntroCutSceneScreen(),
      ),

      /// ── Team Select
      GoRoute(
        name: 'team_select',
        path: Routes.teamSelect,
        builder: (_, __) => const TeamSelectionHub(),
      ),

      /// ── Home
      GoRoute(
        name: 'home',
        path: Routes.home,
        builder: (_, __) => const HomePage(),
      ),

      /// ── Team
      GoRoute(
        name: 'team',
        path: Routes.team,
        builder: (_, __) => const TeamScreen(),
      ),

      /// ── Standings
      GoRoute(
        name: 'standings',
        path: Routes.standings,
        builder: (_, __) => const StandingsScreen(),
      ),

      /// ── Game Day
      GoRoute(
        name: 'game_day',
        path: Routes.gameDay,
        builder: (_, __) => const GameScreen(),
      ),

      /// ── League
      GoRoute(
        name: 'league',
        path: Routes.league,
        builder: (_, __) => const LeagueScreen(),
      ),

      /// ── Finances (stub or real)
      GoRoute(
        name: 'finances',
        path: Routes.finances,
        builder: (_, __) => const Scaffold(
          body: Center(
            child: Text(
              'Finances Screen (stub)',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
      ),

      /// ── News/Events (stub or real)
      GoRoute(
        name: 'news',
        path: Routes.news,
        builder: (_, __) => const Scaffold(
          body: Center(
            child: Text(
              'News/Events Screen (stub)',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
      ),

      /// ── Settings (stub or real)
      GoRoute(
        name: 'settings',
        path: Routes.settings,
        builder: (_, __) => const Scaffold(
          body: Center(
            child: Text(
              'Settings Screen (stub)',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
      ),
    ],
    errorBuilder: (_, __) => const Scaffold(
      body: Center(child: Text('Page not found')),
    ),
  );
}
