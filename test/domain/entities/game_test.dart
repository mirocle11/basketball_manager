import 'package:flutter_test/flutter_test.dart';
import 'package:basketball_manager/domain/entities/game.dart';
import 'package:basketball_manager/domain/value_objects/box_score.dart';

void main() {
  test('Game toJson/fromJson', () {
    final game = Game(
      id: 'g1',
      seasonYear: 2024,
      date: DateTime.utc(2024, 2, 1),
      homeTeamId: 'home',
      awayTeamId: 'away',
      homeScore: 100,
      awayScore: 90,
      boxScore: const BoxScore(stats: {'h': 1}),
      createdAt: DateTime.utc(2024, 1, 1),
      updatedAt: DateTime.utc(2024, 1, 2),
    );

    final json = game.toJson();
    final other = Game.fromJson(json);

    expect(other, game);
  });
}
