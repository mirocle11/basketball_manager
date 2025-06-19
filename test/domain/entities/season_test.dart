import 'package:flutter_test/flutter_test.dart';
import 'package:basketball_manager/domain/entities/season.dart';
import 'package:basketball_manager/domain/value_objects/team_standing.dart';

void main() {
  test('Season toJson/fromJson', () {
    const standing = TeamStanding(teamId: 't1', wins: 10, losses: 5);
    final season = Season(
      year: 2024,
      leagueId: '1',
      schedule: const ['g1', 'g2'],
      standings: const [standing],
      createdAt: DateTime.utc(2024, 1, 1),
      updatedAt: DateTime.utc(2024, 1, 2),
    );

    final json = season.toJson();
    final other = Season.fromJson(json);

    expect(other, season);
  });
}
