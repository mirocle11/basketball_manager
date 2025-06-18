import 'package:flutter_test/flutter_test.dart';
import 'package:basketball_manager/domain/entities/player.dart';
import 'package:basketball_manager/domain/enums/position.dart';
import 'package:basketball_manager/domain/value_objects/skills.dart';
import 'package:basketball_manager/domain/value_objects/contract.dart';
import 'package:basketball_manager/domain/value_objects/injury_status.dart';

void main() {
  test('Player toJson/fromJson', () {
    final player = Player(
      id: 'p1',
      teamId: 't1',
      name: 'John',
      age: 25,
      position: Position.pg,
      overall: 90,
      skills: const Skills(shooting: 80, passing: 75, defense: 70, rebounding: 60, speed: 85),
      contract: const Contract(salary: 5.0, years: 3),
      morale: 80,
      health: const InjuryStatus(isInjured: false),
      createdAt: DateTime.utc(2024, 1, 1),
      updatedAt: DateTime.utc(2024, 1, 2),
    );

    final json = player.toJson();
    final other = Player.fromJson(json);

    expect(other, player);
  });
}
