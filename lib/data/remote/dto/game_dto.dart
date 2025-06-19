import 'package:json_annotation/json_annotation.dart';

import '../../../domain/entities/game.dart';
import '../../../domain/value_objects/box_score.dart';

part 'game_dto.g.dart';

@JsonSerializable()
class GameDto {
  const GameDto({
    required this.id,
    required this.date,
    required this.home,
    required this.away,
  });

  final String id;
  final String date;
  final String home;
  final String away;

  factory GameDto.fromJson(Map<String, dynamic> json) => _$GameDtoFromJson(json);
  Map<String, dynamic> toJson() => _$GameDtoToJson(this);

  Game toDomain(int seasonYear) => Game(
        id: id,
        seasonYear: seasonYear,
        date: DateTime.parse(date),
        homeTeamId: home,
        awayTeamId: away,
        homeScore: 0,
        awayScore: 0,
        boxScore: const BoxScore(stats: {}),
        createdAt: DateTime.utc(1970, 1, 1),
        updatedAt: DateTime.utc(1970, 1, 1),
      );
}
