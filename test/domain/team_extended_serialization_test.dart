import 'package:flutter_test/flutter_test.dart';
import 'package:hive/hive.dart';
import 'package:basketball_manager/data/local/hive_database.dart' as db;
import 'package:basketball_manager/domain/entities/team.dart';
import 'package:basketball_manager/domain/value_objects/record.dart';
import 'package:basketball_manager/domain/value_objects/team_colors.dart';

void main() {
  setUp(() {
    Hive.init('./test/hive_team_ext');
    db.HiveDatabase.registerAdapters();
  });

  tearDown(() async {
    await Hive.deleteBoxFromDisk('teams');
  });

  test('Team extended json and Hive round-trip', () async {
    final team = Team(
      id: 't1',
      leagueId: 'l1',
      name: 'Sharks',
      city: 'SF',
      colors: const TeamColors(primary: 'blue', secondary: 'white'),
      budget: 10.0,
      payroll: 9.0,
      prestige: 5,
      difficulty: 1,
      pros: const ['big market'],
      cons: const ['expensive'],
      conferenceId: 'c1',
      divisionId: 'd1',
      record: const Record(wins: 1, losses: 2),
      createdAt: DateTime.utc(2024, 1, 1),
      updatedAt: DateTime.utc(2024, 1, 2),
    );

    final json = team.toJson();
    final other = Team.fromJson(json);
    expect(other, team);

    final box = await Hive.openBox<Team>('teams');
    await box.put(team.id, team);
    final loaded = box.get(team.id);
    expect(loaded, team);
    await box.close();
  });
}
