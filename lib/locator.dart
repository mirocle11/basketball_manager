import 'package:get_it/get_it.dart';

import 'features/league/data/league_repository.dart';
import 'features/team_management/data/team_repository.dart';
import 'features/standings/data/standings_repository.dart';
import 'data/local/hive_league_datasource.dart';

final locator = GetIt.instance;

void setupLocator() {
  locator
    ..registerLazySingleton<HiveLeagueDataSource>(() => HiveLeagueDataSource())
    ..registerLazySingleton<LeagueRepository>(
        () => LeagueRepository(locator<HiveLeagueDataSource>()))
    ..registerLazySingleton<PlayerRepository>(() => const PlayerRepository())
    ..registerLazySingleton<StandingsRepository>(
        () => const StandingsRepository());
}
