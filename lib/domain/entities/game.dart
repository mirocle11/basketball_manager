import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

import '../value_objects/box_score.dart';

part 'game.g.dart';

@JsonSerializable(explicitToJson: true)
class Game extends Equatable {
  const Game({
    required this.id,
    required this.seasonYear,
    required this.date,
    required this.homeTeamId,
    required this.awayTeamId,
    required this.homeScore,
    required this.awayScore,
    required this.boxScore,
    required this.createdAt,
    required this.updatedAt,
  });

  final String id;
  final int seasonYear;
  final DateTime date;
  final String homeTeamId;
  final String awayTeamId;
  final int homeScore;
  final int awayScore;
  final BoxScore boxScore;
  final DateTime createdAt;
  final DateTime updatedAt;

  factory Game.fromJson(Map<String, dynamic> json) => _$GameFromJson(json);
  Map<String, dynamic> toJson() => _$GameToJson(this);

  @override
  List<Object?> get props => [
        id,
        seasonYear,
        date,
        homeTeamId,
        awayTeamId,
        homeScore,
        awayScore,
        boxScore,
        createdAt,
        updatedAt,
      ];
}
