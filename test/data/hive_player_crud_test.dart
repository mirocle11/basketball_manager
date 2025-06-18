import 'package:basketball_manager/domain/entities/player.dart';
import 'package:basketball_manager/domain/enums/position.dart';
import 'package:basketball_manager/domain/value_objects/contract.dart';
import 'package:basketball_manager/domain/value_objects/injury_status.dart';
import 'package:basketball_manager/domain/value_objects/skills.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hive/hive.dart';

import 'package:basketball_manager/data/local/hive_database.dart' as db;

void main() {
  setUp(() {
    Hive.init('./test/hive_player');
    db.HiveDatabase.registerAdapters();
  });

  tearDown(() async {
    await Hive.deleteBoxFromDisk('players');
  });

  test('Player save and load', () async {
    final box = await Hive.openBox<Player>('players');
    final player = Player(
      id: 'p1',
      teamId: 't1',
      name: 'John',
      age: 25,
      position: Position.pg,
      overall: 90,
      skills: const Skills(shooting: 1, passing: 2, defense: 3, rebounding: 4, speed: 5),
      contract: const Contract(salary: 1, years: 2, startYear: 2024),
      morale: 80,
      health: const InjuryStatus(isInjured: false),
      createdAt: DateTime.utc(2024, 1, 1),
      updatedAt: DateTime.utc(2024, 1, 2),
    );

    await box.put(player.id, player);
    final other = box.get(player.id);
    expect(other, player);
    await box.close();
  });
}
