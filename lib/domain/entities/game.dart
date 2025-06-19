import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:hive/hive.dart';

import '../value_objects/box_score.dart';

part 'game.g.dart';

@HiveType(typeId: 4)
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

  @HiveField(0)
  final String id;
  @HiveField(1)
  final int seasonYear;
  @HiveField(2)
  final DateTime date;
  @HiveField(3)
  final String homeTeamId;
  @HiveField(4)
  final String awayTeamId;
  @HiveField(5)
  final int homeScore;
  @HiveField(6)
  final int awayScore;
  @HiveField(7)
  final BoxScore boxScore;
  @HiveField(8)
  final DateTime createdAt;
  @HiveField(9)
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
