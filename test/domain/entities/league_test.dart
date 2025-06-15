import 'package:flutter_test/flutter_test.dart';
import 'package:basketball_manager/domain/entities/league.dart';
import 'package:basketball_manager/domain/value_objects/league_rules.dart';

void main() {
  test('League toJson/fromJson', () {
    final league = League(
      id: '1',
      name: 'NBA',
      rules: const LeagueRules(salaryCap: 100.0, rosterSize: 12),
      createdAt: DateTime.utc(2024, 1, 1),
      updatedAt: DateTime.utc(2024, 1, 2),
    );

    final json = league.toJson();
    final other = League.fromJson(json);

    expect(other, league);
  });
}
