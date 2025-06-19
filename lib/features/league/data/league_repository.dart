import 'package:basketball_manager/data/local/hive_league_datasource.dart';
import 'package:basketball_manager/domain/entities/team.dart';
import 'package:basketball_manager/domain/entities/basic_team.dart';

class LeagueRepository {
  const LeagueRepository(this._ds);

  final HiveLeagueDataSource _ds;

  Future<void> init() => _ds.init();

  Future<void> saveTeam(Team team) => _ds.saveTeam(team);

  Team? getTeam(String id) => _ds.getTeam(id);

  Stream<List<Team>> watchTeams() => _ds.watchTeams();

  // Temporary stub for existing UI
  List<BasicTeam> fetchTeams() => const [];
}
