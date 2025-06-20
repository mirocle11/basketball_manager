import 'package:go_router/go_router.dart';
import '../features/team_selection/view/team_selection_hub.dart';

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
  static const String teamSelect = '/team-select';
}

// App-specific GoRouter configuration

final additionalRoutes = <GoRoute>[
  GoRoute(
    path: Routes.teamSelect,
    builder: (_, __) => const TeamSelectionHub(),
  ),
];
