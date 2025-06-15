import 'package:get_it/get_it.dart';

import 'features/league/data/league_repository.dart';
import 'features/team_management/data/team_repository.dart';
import 'features/standings/data/standings_repository.dart';

final locator = GetIt.instance;

void setupLocator() {
  locator
    ..registerLazySingleton<LeagueRepository>(() => const LeagueRepository())
    ..registerLazySingleton<PlayerRepository>(() => const PlayerRepository())
    ..registerLazySingleton<StandingsRepository>(
        () => const StandingsRepository());
}
