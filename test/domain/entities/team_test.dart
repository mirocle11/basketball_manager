import 'package:flutter_test/flutter_test.dart';
import 'package:basketball_manager/domain/entities/team.dart';
import 'package:basketball_manager/domain/value_objects/team_colors.dart';
import 'package:basketball_manager/domain/value_objects/record.dart';

void main() {
  test('Team toJson/fromJson', () {
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

    final json = team.toJson();
    final other = Team.fromJson(json);

    expect(other, team);
  });
}
