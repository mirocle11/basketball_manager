import 'package:go_router/go_router.dart';
import '../features/team_creation/view/team_creator_screen.dart';

class Routes {
  static const String splash = '/';
  static const String intro = '/intro';
  static const String home = '/home';
  static const String team = '/team';
  static const String standings = '/standings';
  static const String gameDay = '/game_day';
  static const String league = '/league';
  static const String finances = '/finances';
  static const String news = '/news';
  static const String settings = '/settings';
  static const String teamCreator = '/team-creator';
}

// App-specific GoRouter configuration

final additionalRoutes = <GoRoute>[
  GoRoute(
    path: Routes.teamCreator,
    builder: (_, __) => const TeamCreatorScreen(),
  ),
];
