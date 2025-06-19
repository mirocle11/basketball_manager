import 'package:basketball_manager/data/local/hive_league_datasource.dart';
import 'package:basketball_manager/domain/entities/team.dart';

class TeamRepository {
  TeamRepository(this._ds);

  final HiveLeagueDataSource _ds;

  Future<void> save(Team team) => _ds.saveTeam(team);
}
