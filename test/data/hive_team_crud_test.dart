import 'package:basketball_manager/domain/entities/team.dart';
import 'package:basketball_manager/domain/value_objects/record.dart';
import 'package:basketball_manager/domain/value_objects/team_colors.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hive/hive.dart';

import 'package:basketball_manager/data/local/hive_database.dart' as db;

void main() {
  setUp(() {
    Hive.init('./test/hive_team');
    db.HiveDatabase.registerAdapters();
  });

  tearDown(() async {
    await Hive.deleteBoxFromDisk('teams');
  });

  test('Team save and load', () async {
    final box = await Hive.openBox<Team>('teams');
    final team = Team(
      id: 't1',
      leagueId: 'l1',
      name: 'Sharks',
      city: 'SF',
      colors: const TeamColors(primary: 'blue', secondary: 'white'),
      budget: 10.0,
      payroll: 9.0,
      prestige: 5,
      record: const Record(wins: 1, losses: 2),
      createdAt: DateTime.utc(2024, 1, 1),
      updatedAt: DateTime.utc(2024, 1, 2),
    );

    await box.put(team.id, team);
    final other = box.get(team.id);
    expect(other, team);
    await box.close();
  });
}
