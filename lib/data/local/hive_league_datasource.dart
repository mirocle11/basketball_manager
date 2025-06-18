import 'package:hive/hive.dart';

import '../../domain/entities/team.dart';

class HiveLeagueDataSource {
  static const _teamBoxName = 'teams';

  late Box<Team> _teamBox;

  Future<void> init() async {
    _teamBox = await Hive.openBox<Team>(_teamBoxName);
  }

  Future<void> saveTeam(Team team) async {
    await _teamBox.put(team.id, team);
  }

  Team? getTeam(String id) {
    return _teamBox.get(id);
  }

  Stream<List<Team>> watchTeams() {
    return _teamBox.watch().map((_) => _teamBox.values.toList());
  }
}
