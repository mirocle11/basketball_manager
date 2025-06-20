import 'package:basketball_manager/features/league/view/league_screen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:basketball_manager/core/app_theme.dart';
import 'package:basketball_manager/locator.dart';
import 'features/intro/intro_cutscene_screen.dart';
import 'features/splash/splash_screen.dart';

import 'package:basketball_manager/routes/routes.dart';
import 'features/home/view/home_screen.dart';
import 'features/team_management/view/team_screen.dart';
import 'features/standings/view/standings_screen.dart';
import 'features/game_day/view/game_screen.dart';
import 'features/team_creation/view/team_creator_screen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  setupLocator();
  runApp(const BasketballManagerApp());
}

class BasketballManagerApp extends StatelessWidget {
  const BasketballManagerApp({super.key});

  @override
  Widget build(BuildContext context) {
    // 1) Define a GoRouter
    final GoRouter router = GoRouter(
      initialLocation: Routes.splash,
      routes: [
        /// ── Splash
        GoRoute(
          name: 'splash',
          path: Routes.splash,
          builder: (context, state) => const SplashScreen(),
        ),

        /// ── Intro Story
        GoRoute(
          name: 'intro',
          path: Routes.intro,
          builder: (context, state) => const IntroCutSceneScreen(),
        ),

        /// ── Team Creator
        GoRoute(
          name: 'team_creator',
          path: Routes.teamCreator,
          builder: (context, state) => const TeamCreatorScreen(),
        ),

        /// ── Home
        GoRoute(
          name: 'home',
          path: Routes.home,
          builder: (context, state) => const HomePage(),
        ),

        /// ── Team
        GoRoute(
          name: 'team',
          path: Routes.team,
          builder: (context, state) => const TeamScreen(),
        ),

        /// ── Standings
        GoRoute(
          name: 'standings',
          path: Routes.standings,
          builder: (context, state) => const StandingsScreen(),
        ),

        /// ── Game Day
        GoRoute(
          name: 'game_day',
          path: Routes.gameDay,
          builder: (context, state) => const GameScreen(),
        ),

        /// ── League
        GoRoute(
          name: 'league',
          path: Routes.league,
          builder: (context, state) => const LeagueScreen(),
        ),

        /// ── Finances (stub or real)
        GoRoute(
          name: 'finances',
          path: Routes.finances,
          builder: (context, state) => const Scaffold(
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
          builder: (context, state) => const Scaffold(
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
          builder: (context, state) => const Scaffold(
            body: Center(
              child: Text(
                'Settings Screen (stub)',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        ),
      ],

      // 2) (Optional) Add a redirect to skip splash if you already have a logged-in state
      // redirect: (state) {
      //   final loggedIn = /* your logic */;
      //   if (state.location == Routes.splash && loggedIn) {
      //     return Routes.home;
      //   }
      //   return null;
      // },
    );

    return MaterialApp.router(
      title: 'Basketball GM',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.darkTheme,

      // 3) Tell Flutter to use GoRouter
      routerConfig: router,
    );
  }
}

/// Wrap HomeScreen (and BlocProviders) in HomePage if needed
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    // If you’re using BlocProviders for your team/roster, do it here:
    // return BlocProvider(
    //   create: (_) => TeamBloc(repository: TeamRepository()),
    //   child: const HomeScreen(),
    // );
    return const HomeScreen();
  }
}
